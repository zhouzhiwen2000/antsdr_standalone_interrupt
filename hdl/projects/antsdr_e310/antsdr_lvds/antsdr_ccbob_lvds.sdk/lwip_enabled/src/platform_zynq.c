/*
 * Copyright (C) 2010 - 2018 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */
/*
* platform_zynq.c
*
* Zynq platform specific functions.
*
* 02/29/2012: UART initialization is removed. Timer initializations are
* removed. All unnecessary include files and hash defines are removed.
* 03/01/2013: Timer initialization is added back. Support for SI #692601 is
* added in the timer callback. The SI #692601 refers to the following issue.
*
* The EmacPs has a HW bug on the Rx path for heavy Rx traffic.
* Under heavy Rx traffic because of the HW bug there are times when the Rx path
* becomes unresponsive. The workaround for it is to check for the Rx path for
* traffic (by reading the stats registers regularly). If the stats register
* does not increment for sometime (proving no Rx traffic), the function resets
* the Rx data path.
*
* </pre>
 */

#ifdef __arm__

#include "xparameters.h"
#include "xparameters_ps.h"	/* defines XPAR values */
#include "xil_cache.h"
#include "xscugic.h"
#include "lwip/tcp.h"
#include "xil_printf.h"
#include "platform_config.h"
#include "netif/xadapter.h"
#ifdef PLATFORM_ZYNQ
#include "xscutimer.h"
#include "xtime_l.h"
#include <xgpiops.h>
#include <xspips.h>
#include "util.h"
#include "adc_core.h"
#include "dac_core.h"
#include "platform.h"
#include "parameters.h"
#include <sleep.h>


#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define TIMER_DEVICE_ID		XPAR_SCUTIMER_DEVICE_ID
#define INTC_BASE_ADDR		XPAR_SCUGIC_0_CPU_BASEADDR
#define INTC_DIST_BASE_ADDR	XPAR_SCUGIC_0_DIST_BASEADDR
#define TIMER_IRPT_INTR		XPAR_SCUTIMER_INTR

#define RESET_RX_CNTR_LIMIT	400

void tcp_fasttmr(void);
void tcp_slowtmr(void);

static XScuTimer TimerInstance;

#ifndef USE_SOFTETH_ON_ZYNQ
static int ResetRxCntr = 0;
extern struct netif server_netif;
#endif

volatile int TcpFastTmrFlag = 0;
volatile int TcpSlowTmrFlag = 0;

XSpiPs_Config	*spi_config;
XSpiPs			spi_instance;
XGpioPs_Config	*gpio_config;
XGpioPs			gpio_instance;
XScuGic	gic;
#if LWIP_DHCP==1
volatile int dhcp_timoutcntr = 24;
void dhcp_fine_tmr();
void dhcp_coarse_tmr();
#endif

void
timer_callback(XScuTimer * TimerInstance)
{
	/* we need to call tcp_fasttmr & tcp_slowtmr at intervals specified
	 * by lwIP. It is not important that the timing is absoluetly accurate.
	 */
	static int odd = 1;
#if LWIP_DHCP==1
    static int dhcp_timer = 0;
#endif
	 TcpFastTmrFlag = 1;

	odd = !odd;
#ifndef USE_SOFTETH_ON_ZYNQ
	ResetRxCntr++;
#endif
	if (odd) {
#if LWIP_DHCP==1
		dhcp_timer++;
		dhcp_timoutcntr--;
#endif
		TcpSlowTmrFlag = 1;
#if LWIP_DHCP==1
		dhcp_fine_tmr();
		if (dhcp_timer >= 120) {
			dhcp_coarse_tmr();
			dhcp_timer = 0;
		}
#endif
	}

	/* For providing an SW alternative for the SI #692601. Under heavy
	 * Rx traffic if at some point the Rx path becomes unresponsive, the
	 * following API call will ensures a SW reset of the Rx path. The
	 * API xemacpsif_resetrx_on_no_rxdata is called every 100 milliseconds.
	 * This ensures that if the above HW bug is hit, in the worst case,
	 * the Rx path cannot become unresponsive for more than 100
	 * milliseconds.
	 */
#ifndef USE_SOFTETH_ON_ZYNQ
	if (ResetRxCntr >= RESET_RX_CNTR_LIMIT) {
		xemacpsif_resetrx_on_no_rxdata(&server_netif);
		ResetRxCntr = 0;
	}
#endif
	XScuTimer_ClearInterruptStatus(TimerInstance);
}

void platform_setup_timer(void)
{
	int Status = XST_SUCCESS;
	XScuTimer_Config *ConfigPtr;
	int TimerLoadValue = 0;

	ConfigPtr = XScuTimer_LookupConfig(TIMER_DEVICE_ID);
	Status = XScuTimer_CfgInitialize(&TimerInstance, ConfigPtr,
			ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS) {

		xil_printf("In %s: Scutimer Cfg initialization failed...\r\n",
		__func__);
		return;
	}

	Status = XScuTimer_SelfTest(&TimerInstance);
	if (Status != XST_SUCCESS) {
		xil_printf("In %s: Scutimer Self test failed...\r\n",
		__func__);
		return;

	}

	XScuTimer_EnableAutoReload(&TimerInstance);
	/*
	 * Set for 250 milli seconds timeout.
	 */
	TimerLoadValue = XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ / 8;

	XScuTimer_LoadTimer(&TimerInstance, TimerLoadValue);
	return;
}

void platform_setup_interrupts(void)
{

	XScuGic_Config	*gic_config;
	int32_t			status;

	gic_config = XScuGic_LookupConfig(GIC_DEVICE_ID);
	if(gic_config == NULL)
		printf("XScuGic_LookupConfig Error\n");

	status = XScuGic_CfgInitialize(&gic,
			gic_config, gic_config->CpuBaseAddress);
	if(status)
		printf("XScuGic_CfgInitialize Error\n");

	Xil_ExceptionInit();

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler)XScuGic_InterruptHandler, (void *)&gic);
	Xil_ExceptionEnable();
	XScuGic_SetPriorityTriggerType(&gic, TIMER_IRPT_INTR, 0x2, 0x3);
	status = XScuGic_Connect(&gic,
			TIMER_IRPT_INTR, (Xil_ExceptionHandler)timer_callback, (void *)&TimerInstance);
	if(status)
		printf("XScuGic_Connect Error\n");
	XScuGic_Enable(&gic, TIMER_IRPT_INTR);
	return;
}

void platform_enable_interrupts()
{
	/*
	 * Enable non-critical exceptions.
	 */
	XScuTimer_EnableInterrupt(&TimerInstance);
	XScuTimer_Start(&TimerInstance);
	return;
}

void init_platform()
{
	Xil_ICacheEnable();
	Xil_DCacheEnable();
	platform_setup_timer();
	platform_setup_interrupts();

	return;
}

void cleanup_platform()
{
	Xil_ICacheDisable();
	Xil_DCacheDisable();
	return;
}

u64_t get_time_ms()
{
#define COUNTS_PER_MILLI_SECOND (COUNTS_PER_SECOND/1000)
	XTime tCur = 0;
	XTime_GetTime(&tCur);
	return (tCur/COUNTS_PER_MILLI_SECOND);
}


/***************************************************************************//**
 * @brief spi_init
*******************************************************************************/
int32_t spi_init(uint32_t device_id,
		 uint8_t  clk_pha,
		 uint8_t  clk_pol)
{

	uint32_t base_addr	 = 0;
	uint32_t spi_options = 0;
#ifdef _XPARAMETERS_PS_H_

	spi_config = XSpiPs_LookupConfig(device_id);
	base_addr = spi_config->BaseAddress;

	XSpiPs_CfgInitialize(&spi_instance, spi_config, base_addr);

	spi_options = XSPIPS_MASTER_OPTION |
		      (clk_pol ? XSPIPS_CLK_ACTIVE_LOW_OPTION : 0) |
		      (clk_pha ? XSPIPS_CLK_PHASE_1_OPTION : 0) |
		      XSPIPS_FORCE_SSELECT_OPTION;

	XSpiPs_SetOptions(&spi_instance, spi_options);

	XSpiPs_SetClkPrescaler(&spi_instance, XSPIPS_CLK_PRESCALE_256);
#else
	XSpi_Initialize(&spi_instance, device_id);
	XSpi_Stop(&spi_instance);
	spi_config = XSpi_LookupConfig(device_id);
	base_addr = spi_config->BaseAddress;
	XSpi_CfgInitialize(&spi_instance, spi_config, base_addr);
	spi_options = XSP_MASTER_OPTION |
		      XSP_CLK_PHASE_1_OPTION |
		      XSP_MANUAL_SSELECT_OPTION;
	XSpi_SetOptions(&spi_instance, spi_options);
	XSpi_Start(&spi_instance);
	XSpi_IntrGlobalDisable(&spi_instance);
	XSpi_SetSlaveSelect(&spi_instance, 1);
#endif
	return SUCCESS;
}

/***************************************************************************//**
 * @brief spi_read
*******************************************************************************/
int32_t spi_read(struct spi_device *spi,
		 uint8_t *data,
		 uint8_t bytes_number)
{
#ifdef _XPARAMETERS_PS_H_
	XSpiPs_SetSlaveSelect(&spi_instance, (spi->id_no == 0 ? 0 : 1));

	XSpiPs_PolledTransfer(&spi_instance, data, data, bytes_number);
#else
	uint32_t cnt = 0;
#if defined(XPAR_AXI_SPI_0_DEVICE_ID) || defined(XPAR_SPI_0_DEVICE_ID)
	uint8_t send_buffer[20];

	for(cnt = 0; cnt < bytes_number; cnt++) {
		send_buffer[cnt] = data[cnt];
	}

	XSpi_Transfer(&spi_instance, send_buffer, data, bytes_number);
#else
	Xil_Out32((spi_instance.BaseAddr + 0x60), 0x1e6);
	Xil_Out32((spi_instance.BaseAddr + 0x70), 0x000);
	while(cnt < bytes_number) {
		Xil_Out32((spi_instance.BaseAddr + 0x68), data[cnt]);
		Xil_Out32((spi_instance.BaseAddr + 0x60), 0x096);
		do {
			usleep(100);
		} while ((Xil_In32((spi_instance.BaseAddr + 0x64)) & 0x4) == 0x0);
		Xil_Out32((spi_instance.BaseAddr + 0x60), 0x186);
		data[cnt] = Xil_In32(spi_instance.BaseAddr + 0x6c);
		cnt++;
	}
	Xil_Out32((spi_instance.BaseAddr + 0x70), 0x001);
	Xil_Out32((spi_instance.BaseAddr + 0x60), 0x180);
#endif
#endif
	return SUCCESS;
}

/***************************************************************************//**
 * @brief spi_write_then_read
*******************************************************************************/
int spi_write_then_read(struct spi_device *spi,
			const unsigned char *txbuf, unsigned n_tx,
			unsigned char *rxbuf, unsigned n_rx)
{
	uint8_t buffer[20] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
			      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
			      0x00, 0x00, 0x00, 0x00
			     };
	uint8_t byte;

	for(byte = 0; byte < n_tx; byte++) {
		buffer[byte] = (unsigned char)txbuf[byte];
	}
	spi_read(spi, buffer, n_tx + n_rx);
	for(byte = n_tx; byte < n_tx + n_rx; byte++) {
		rxbuf[byte - n_tx] = buffer[byte];
	}

	return SUCCESS;
}

/***************************************************************************//**
 * @brief gpio_init
*******************************************************************************/
void gpio_init(uint32_t device_id)
{
#ifdef _XPARAMETERS_PS_H_
	gpio_config = XGpioPs_LookupConfig(device_id);
	XGpioPs_CfgInitialize(&gpio_instance, gpio_config, gpio_config->BaseAddr);
#else
	gpio_config = XGpio_LookupConfig(device_id);
#endif
}

/***************************************************************************//**
 * @brief gpio_direction
*******************************************************************************/
void gpio_direction(uint8_t pin, uint8_t direction)
{
#ifdef _XPARAMETERS_PS_H_
	XGpioPs_SetDirectionPin(&gpio_instance, pin, direction);
	XGpioPs_SetOutputEnablePin(&gpio_instance, pin, 1);
#else
	uint32_t config = 0;
	uint32_t tri_reg_addr;

	if (pin >= 32) {
		tri_reg_addr = XGPIO_TRI2_OFFSET;
		pin -= 32;
	} else
		tri_reg_addr = XGPIO_TRI_OFFSET;

	config = Xil_In32((gpio_config->BaseAddress + tri_reg_addr));
	if(direction) {
		config &= ~(1 << pin);
	} else {
		config |= (1 << pin);
	}
	Xil_Out32((gpio_config->BaseAddress + tri_reg_addr), config);
#endif
}

/***************************************************************************//**
 * @brief gpio_is_valid
*******************************************************************************/
bool gpio_is_valid(int number)
{
	if(number >= 0)
		return 1;
	else
		return 0;
}

/***************************************************************************//**
 * @brief gpio_data
*******************************************************************************/
void gpio_data(uint8_t pin, uint8_t data)
{
#ifdef _XPARAMETERS_PS_H_
	XGpioPs_WritePin(&gpio_instance, pin, data);
#else
	uint32_t config = 0;
	uint32_t data_reg_addr;

	if (pin >= 32) {
		data_reg_addr = XGPIO_DATA2_OFFSET;
		pin -= 32;
	} else
		data_reg_addr = XGPIO_DATA_OFFSET;

	config = Xil_In32((gpio_config->BaseAddress + data_reg_addr));
	if(data) {
		config |= (1 << pin);
	} else {
		config &= ~(1 << pin);
	}
	Xil_Out32((gpio_config->BaseAddress + data_reg_addr), config);
#endif
}

/***************************************************************************//**
 * @brief gpio_set_value
*******************************************************************************/
void gpio_set_value(unsigned gpio, int value)
{
	gpio_data(gpio, value);
}

/* rf switch init */
void rf_switch_init()
{
	gpio_direction(GPIO_RX1_BAND_SEL_H   ,1);
	gpio_direction(GPIO_RX1_BAND_SEL_L   ,1);
	gpio_direction(GPIO_TX1_BAND_SEL_H   ,1);
	gpio_direction(GPIO_TX1_BAND_SEL_L   ,1);
	gpio_direction(GPIO_RX2_BAND_SEL_H   ,1);
	gpio_direction(GPIO_RX2_BAND_SEL_L   ,1);
	gpio_direction(GPIO_TX2_BAND_SEL_H   ,1);
	gpio_direction(GPIO_TX2_BAND_SEL_L   ,1);

	gpio_set_value(GPIO_RX1_BAND_SEL_H   ,0);
	gpio_set_value(GPIO_RX1_BAND_SEL_L   ,1);
	gpio_set_value(GPIO_TX1_BAND_SEL_H   ,0);
	gpio_set_value(GPIO_TX1_BAND_SEL_L   ,1);
	gpio_set_value(GPIO_RX2_BAND_SEL_H   ,0);
	gpio_set_value(GPIO_RX2_BAND_SEL_L   ,1);
	gpio_set_value(GPIO_TX2_BAND_SEL_H   ,0);
	gpio_set_value(GPIO_TX2_BAND_SEL_L   ,1);
}

/***************************************************************************//**
 * @brief udelay
*******************************************************************************/
void udelay(unsigned long usecs)
{
	usleep(usecs);
}

/***************************************************************************//**
 * @brief mdelay
*******************************************************************************/
void mdelay(unsigned long msecs)
{
	usleep(msecs * 1000);
}

/***************************************************************************//**
 * @brief msleep_interruptible
*******************************************************************************/
unsigned long msleep_interruptible(unsigned int msecs)
{
	mdelay(msecs);

	return 0;
}

/***************************************************************************//**
 * @brief axiadc_init
*******************************************************************************/
void axiadc_init(struct ad9361_rf_phy *phy)
{
	adc_init(phy);
	dac_init(phy);
}

/***************************************************************************//**
 * @brief axiadc_post_setup
*******************************************************************************/
int axiadc_post_setup(struct ad9361_rf_phy *phy)
{
	return ad9361_post_setup(phy);
}

/***************************************************************************//**
 * @brief axiadc_read
*******************************************************************************/
unsigned int axiadc_read(struct axiadc_state *st, unsigned long reg)
{
	uint32_t val;

	adc_read(st->phy, reg, &val);

	return val;
}

/***************************************************************************//**
 * @brief axiadc_write
*******************************************************************************/
void axiadc_write(struct axiadc_state *st, unsigned reg, unsigned val)
{
	adc_write(st->phy, reg, val);
}

/***************************************************************************//**
 * @brief axiadc_set_pnsel
*******************************************************************************/
int axiadc_set_pnsel(struct axiadc_state *st, int channel, enum adc_pn_sel sel)
{
	unsigned reg;

	uint32_t version = axiadc_read(st, 0x4000);

	if (PCORE_VERSION_MAJOR(version) > 7) {
		reg = axiadc_read(st, ADI_REG_CHAN_CNTRL_3(channel));
		reg &= ~ADI_ADC_PN_SEL(~0);
		reg |= ADI_ADC_PN_SEL(sel);
		axiadc_write(st, ADI_REG_CHAN_CNTRL_3(channel), reg);
	} else {
		reg = axiadc_read(st, ADI_REG_CHAN_CNTRL(channel));

		if (sel == ADC_PN_CUSTOM) {
			reg |= ADI_PN_SEL;
		} else if (sel == ADC_PN9) {
			reg &= ~ADI_PN23_TYPE;
			reg &= ~ADI_PN_SEL;
		} else {
			reg |= ADI_PN23_TYPE;
			reg &= ~ADI_PN_SEL;
		}

		axiadc_write(st, ADI_REG_CHAN_CNTRL(channel), reg);
	}

	return 0;
}

/***************************************************************************//**
 * @brief axiadc_idelay_set
*******************************************************************************/
void axiadc_idelay_set(struct axiadc_state *st,
		       unsigned lane, unsigned val)
{
	if (PCORE_VERSION_MAJOR(st->pcore_version) > 8) {
		axiadc_write(st, ADI_REG_DELAY(lane), val);
	} else {
		axiadc_write(st, ADI_REG_DELAY_CNTRL, 0);
		axiadc_write(st, ADI_REG_DELAY_CNTRL,
			     ADI_DELAY_ADDRESS(lane)
			     | ADI_DELAY_WDATA(val)
			     | ADI_DELAY_SEL);
	}
}


#endif
#endif
