/**
 * \file adrv9009/src/app/headless.c
 *
 * \brief Contains example code for user integration with their application
 *
 * Copyright 2015-2017 Analog Devices Inc.
 * Released under the AD9378-AD9379 API license, for more information see the "LICENSE.txt" file in this zip file.
 *
 */

/****< Insert User Includes Here >***/

#include <stdio.h>
#include "adi_hal.h"
#include "spi.h"
#include "spi_extra.h"
#include "gpio_extra.h"
#include "error.h"
#include "delay.h"
#include "parameters.h"
#include "util.h"
#include "axi_dac_core.h"
#include "axi_adc_core.h"
#include "axi_dmac.h"
#ifndef ALTERA_PLATFORM
#include "xil_cache.h"
#endif
#include "talise.h"
#include "talise_config.h"
#include "app_config.h"
#include "app_clocking.h"
#include "app_jesd.h"
#include "app_transceiver.h"
#include "app_talise.h"
#include "ad9528.h"

#ifdef IIO_EXAMPLE

#include "iio_app.h"
#include "iio_axi_adc_app.h"
#include "iio_axi_dac_app.h"
#include "irq.h"
#include "irq_extra.h"
#include "uart.h"
#include "uart_extra.h"

static struct uart_desc *uart_desc;

/**
 * iio_uart_write() - Write data to UART device wrapper.
 * @buf - Pointer to buffer containing data.
 * @len - Number of bytes to write.
 * @Return: SUCCESS in case of success, FAILURE otherwise.
 */
static ssize_t iio_uart_write(const char *buf, size_t len)
{
	return uart_write(uart_desc, (const uint8_t *)buf, len);
}

/**
 * iio_uart_read() - Read data from UART device wrapper.
 * @buf - Pointer to buffer containing data.
 * @len - Number of bytes to read.
 * @Return: SUCCESS in case of success, FAILURE otherwise.
 */
static ssize_t iio_uart_read(char *buf, size_t len)
{
	return uart_read(uart_desc, (uint8_t *)buf, len);
}

#endif // IIO_EXAMPLE

/**********************************************************/
/**********************************************************/
/********** Talise Data Structure Initializations ********/
/**********************************************************/
/**********************************************************/

int main(void)
{
	// compute the lane rate from profile settings
	// lane_rate = input_rate * M * 20 / L
	// 		where L and M are explained in taliseJesd204bFramerConfig_t comments
	uint32_t rx_lane_rate_khz = talInit.rx.rxProfile.rxOutputRate_kHz *
				    talInit.jesd204Settings.framerA.M * (20 /
						    hweight8(talInit.jesd204Settings.framerA.serializerLanesEnabled));
	uint32_t rx_div40_rate_hz = rx_lane_rate_khz * (1000 / 40);
	uint32_t tx_lane_rate_khz = talInit.tx.txProfile.txInputRate_kHz *
				    talInit.jesd204Settings.deframerA.M * (20 /
						    hweight8(talInit.jesd204Settings.deframerA.deserializerLanesEnabled));
	uint32_t tx_div40_rate_hz = tx_lane_rate_khz * (1000 / 40);
	uint32_t rx_os_lane_rate_khz = talInit.obsRx.orxProfile.orxOutputRate_kHz *
				       talInit.jesd204Settings.framerB.M * (20 /
						       hweight8(talInit.jesd204Settings.framerB.serializerLanesEnabled));
	uint32_t rx_os_div40_rate_hz = rx_os_lane_rate_khz * (1000 / 40);

	// compute the local multiframe clock
	// serializer:   lmfc_rate = (lane_rate * 100) / (K * F)
	// deserializer: lmfc_rate = (lane_rate * 100) / (K * 2 * M / L)
	// 		where K, F, L, M are explained in taliseJesd204bFramerConfig_t comments
	uint32_t rx_lmfc_rate = (rx_lane_rate_khz * 100) /
				(talInit.jesd204Settings.framerA.K * talInit.jesd204Settings.framerA.F);
	uint32_t tx_lmfc_rate = (tx_lane_rate_khz * 100) /
				(talInit.jesd204Settings.deframerA.K * 2 * talInit.jesd204Settings.deframerA.M /
				 hweight8(talInit.jesd204Settings.deframerA.deserializerLanesEnabled));
	uint32_t rx_os_lmfc_rate = (rx_os_lane_rate_khz * 100) /
				   (talInit.jesd204Settings.framerB.K * talInit.jesd204Settings.framerB.F);

	uint32_t lmfc_rate = min(rx_lmfc_rate, rx_os_lmfc_rate);
	lmfc_rate = min(tx_lmfc_rate, lmfc_rate);

	struct axi_adc_init rx_adc_init = {
		"rx_adc",
		RX_CORE_BASEADDR,
		4
	};
	struct axi_adc *rx_adc;
	struct axi_dac_init tx_dac_init = {
		"tx_dac",
		TX_CORE_BASEADDR,
		4
	};
	struct axi_dac *tx_dac;
	struct axi_dmac_init rx_dmac_init = {
		"rx_dmac",
		RX_DMA_BASEADDR,
		DMA_DEV_TO_MEM,
		0
	};
	struct axi_dmac *rx_dmac;
#ifdef DAC_DMA_EXAMPLE
	struct axi_dmac_init tx_dmac_init = {
		"tx_dmac",
		TX_DMA_BASEADDR,
		DMA_MEM_TO_DEV,
		DMA_CYCLIC,
	};
	struct axi_dmac *tx_dmac;
	struct gpio_desc *gpio_plddrbypass;
	struct gpio_init_param gpio_init_plddrbypass;
	extern const uint32_t sine_lut_iq[1024];
#endif
	struct adi_hal hal;
#ifndef ALTERA_PLATFORM
	xil_spi_init_param hal_spi_param = {
#ifdef PLATFORM_MB
		.type = SPI_PL,
#else
		.type = SPI_PS,
#endif
		.device_id = 0,
		.flags = SPI_CS_DECODE
	};
	struct xil_gpio_init_param hal_gpio_param = {
#ifdef PLATFORM_MB
		.type = GPIO_PL,
#else
		.type = GPIO_PS,
#endif
		.device_id = GPIO_DEVICE_ID
	};
	hal.extra_gpio= &hal_gpio_param;
#else
	struct altera_spi_init_param hal_spi_param = {
		.type = NIOS_II_SPI,
		.device_id = 0,
		.base_address = SPI_BASEADDR
	};
	struct altera_gpio_init_param hal_gpio_param = {
		.type = NIOS_II_GPIO,
		.device_id = 0,
		.base_address = GPIO_BASEADDR
	};

	hal.extra_gpio = &hal_gpio_param;
#endif
	hal.extra_spi = &hal_spi_param;
	taliseDevice_t talDev = {
		.devHalInfo = &hal,
		.devStateInfo = {0}
	};

	printf("Hello\n");

	/**********************************************************/
	/**********************************************************/
	/************ Talise Initialization Sequence *************/
	/**********************************************************/
	/**********************************************************/

	clocking_init(rx_div40_rate_hz,
		      tx_div40_rate_hz,
		      rx_os_div40_rate_hz,
		      talInit.clocks.deviceClock_kHz,
		      lmfc_rate);

	/*** < Insert User BBIC JESD204B Initialization Code Here > ***/
	jesd_init(rx_div40_rate_hz,
		  tx_div40_rate_hz,
		  rx_os_div40_rate_hz);

	fpga_xcvr_init(rx_lane_rate_khz,
		       tx_lane_rate_khz,
		       rx_os_lane_rate_khz,
		       talInit.clocks.deviceClock_kHz);

	talise_setup(&talDev, &talInit);

	ADIHAL_sysrefReq(talDev.devHalInfo, SYSREF_CONT_ON);

	jesd_rx_watchdog();

	/* Print JESD status */
	jesd_status();

	/* Initialize the DAC DDS */
	axi_dac_init(&tx_dac, &tx_dac_init);

	/* Initialize the ADC core */
	axi_adc_init(&rx_adc, &rx_adc_init);

#ifdef DAC_DMA_EXAMPLE
	gpio_init_plddrbypass.extra = &ad9528_gpio_param;
	gpio_init_plddrbypass.number = DAC_FIFO_BYPASS;
	gpio_get(&gpio_plddrbypass, gpio_init_plddrbypass);
	gpio_direction_output(gpio_plddrbypass, 1);
	axi_dac_load_custom_data(tx_dac, sine_lut_iq,
				 ARRAY_SIZE(sine_lut_iq),
				 DDR_MEM_BASEADDR + 0xA000000);
#ifndef ALTERA_PLATFORM
	Xil_DCacheFlush();
#endif
	axi_dmac_init(&tx_dmac, &tx_dmac_init);
	axi_dmac_transfer(tx_dmac, DDR_MEM_BASEADDR + 0xA000000,
			  sizeof(sine_lut_iq) * 2);
#endif

	mdelay(1000);

	/* Initialize the DMAC and transfer 16384 samples from ADC to MEM */
	axi_dmac_init(&rx_dmac, &rx_dmac_init);
	axi_dmac_transfer(rx_dmac,
			  DDR_MEM_BASEADDR + 0x800000,
			  16384 * 8);
#ifndef ALTERA_PLATFORM
	Xil_DCacheInvalidateRange(XPAR_DDR_MEM_BASEADDR + 0x800000, 16384 * 8);
#endif

#ifdef IIO_EXAMPLE

	int32_t status;

	/**
	 * Transmit DMA initial configuration.
	 */
	struct axi_dmac_init tx_dmac_init = {
		"tx_dmac",
		TX_DMA_BASEADDR,
		DMA_MEM_TO_DEV,
		DMA_CYCLIC,
	};

	/**
	 * Pointer to transmit DMA instance.
	 */
	struct axi_dmac *tx_dmac;

	/**
	 * iio application configurations.
	 */
	struct iio_app_init_param iio_app_init_par;

	/**
	 * iio axi adc application configurations.
	 */
	struct iio_axi_adc_app_init_param iio_axi_adc_app_init_par;

	/**
	 * iio axi dac application configurations.
	 */
	struct iio_axi_dac_app_init_param iio_axi_dac_app_init_par;

	/**
	 * UART server read/write callbacks.
	 */
	struct iio_server_ops uart_iio_server_ops;

	/**
	 * iio application instance descriptor.
	 */
	struct iio_app_desc *iio_app_desc;

	/**
	 * iio application instance descriptor.
	 */
	struct iio_axi_adc_app_desc *iio_axi_adc_app_desc;

	/**
	 * iio application instance descriptor.
	 */
	struct iio_axi_dac_app_desc *iio_axi_dac_app_desc;

	/**
	 * Xilinx platform dependent initialization for IRQ.
	 */
	struct xil_irq_init_param xil_irq_init_par = {
		.type = IRQ_PS,
	};

	/**
	 * IRQ initial configuration.
	 */
	struct irq_init_param irq_init_param = {
		.irq_id = INTC_DEVICE_ID,
		.extra = &xil_irq_init_par,
	};

	/**
	 * IRQ instance.
	 */
	struct irq_desc *irq_desc;

	/**
	 * Xilinx platform dependent initialization for UART.
	 */
	struct xil_uart_init_param xil_uart_init_par;

	/**
	 * Initialization for UART.
	 */
	struct uart_init_param uart_init_par;

	status = irq_ctrl_init(&irq_desc, &irq_init_param);
	if(status < 0)
		return status;

	xil_uart_init_par = (struct xil_uart_init_param) {
		.type = UART_PS,
		.irq_id = UART_IRQ_ID,
		.irq_desc = irq_desc,
	};

	uart_init_par = (struct uart_init_param) {
		.baud_rate = 921600,
		.device_id = UART_DEVICE_ID,
		.extra = &xil_uart_init_par,
	};

	status = uart_init(&uart_desc, &uart_init_par);
	if(status < 0)
		return FAILURE;

	status = irq_global_enable(irq_desc);
	if (status < 0)
		return status;

	status = axi_dmac_init(&tx_dmac, &tx_dmac_init);
	if(status < 0)
		return status;

	uart_iio_server_ops = (struct iio_server_ops) {
		.read = iio_uart_read,
		.write = iio_uart_write,
	};

	iio_app_init_par = (struct iio_app_init_param) {
		.iio_server_ops = &uart_iio_server_ops,
	};

	status = iio_app_init(&iio_app_desc, &iio_app_init_par);
	if(status < 0)
		return status;

	iio_axi_adc_app_init_par = (struct iio_axi_adc_app_init_param) {
		.rx_adc = rx_adc,
		.rx_dmac = rx_dmac,
	};

	status = iio_axi_adc_app_init(&iio_axi_adc_app_desc, &iio_axi_adc_app_init_par);
	if(status < 0)
		return status;

	iio_axi_dac_app_init_par = (struct iio_axi_dac_app_init_param) {
		.tx_dac = tx_dac,
		.tx_dmac = tx_dmac,
	};

	status = iio_axi_dac_app_init(&iio_axi_dac_app_desc, &iio_axi_dac_app_init_par);
	if(status < 0)
		return status;

	return iio_app(iio_app_desc);

#endif // IIO_EXAMPLE

	talise_shutdown(&talDev);

	fpga_xcvr_deinit();
	jesd_deinit();
	clocking_deinit();
	printf("Bye\n");

	return SUCCESS;
}
