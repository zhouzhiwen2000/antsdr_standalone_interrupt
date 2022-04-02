/***************************************************************************//**
 *   @file   ad9434_fmc_500ebz.c
 *   @brief  Implementation of Main Function.
 *   @author DBogdan (dragos.bogdan@analog.com)
********************************************************************************
 * Copyright 2015(c) Analog Devices, Inc.
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *  - Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  - Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *  - Neither the name of Analog Devices, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *  - The use of this software may or may not infringe the patent rights
 *    of one or more patent holders.  This license does not release you
 *    from the requirement that you obtain separate licenses from these
 *    patent holders to use this software.
 *  - Use of the software either in source or binary form, must be run
 *    on or directly connected to an Analog Devices Inc. component.
 *
 * THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES "AS IS" AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT,
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL ANALOG DEVICES BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, INTELLECTUAL PROPERTY RIGHTS, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*******************************************************************************/

/******************************************************************************/
/***************************** Include Files **********************************/
/******************************************************************************/
#include "adc_core.h"
#include "dmac_core.h"
#include "platform_drivers.h"
#include "ad9434.h"

/***************************************************************************//**
* @brief main
*******************************************************************************/
int main(void)
{
	spi_device		ad9434_device;
	adc_core		ad9434_core;
	dmac_core		ad9434_dma;
	dmac_xfer		rx_xfer;
	uint8_t			nr_of_lanes = 12;
	uint8_t			over_range_signal = 1;
	ad_platform_init();

	ad9434_core.base_address = XPAR_AXI_AD9434_BASEADDR;
	ad9434_core.no_of_channels = 1;
	ad9434_core.resolution = 12;

	ad9434_dma.base_address = XPAR_AXI_AD9434_DMA_BASEADDR;

	ad_spi_init(&ad9434_device);
	ad9434_device.chip_select = SPI_CHIP_SELECT(0);
#ifdef ZYNQ
	rx_xfer.start_address = XPAR_DDR_MEM_BASEADDR + 0x800000;
#endif
	ad9434_dma.type = DMAC_RX;
	ad9434_dma.transfer = &rx_xfer;
	rx_xfer.id = 0;
	rx_xfer.no_of_samples = 32768;

	ad9434_setup(&ad9434_device);

	adc_setup(ad9434_core);

	ad9434_testmode_set(&ad9434_device, TESTMODE_PN9_SEQ);
	adc_delay_calibrate(ad9434_core, nr_of_lanes + over_range_signal, ADC_PN9);

	ad9434_testmode_set(&ad9434_device, TESTMODE_OFF);
	ad9434_outputmode_set(&ad9434_device, OUTPUT_MODE_TWOS_COMPLEMENT);
	if(!dmac_start_transaction(ad9434_dma)) {
		ad_printf("Capture done!\n");
	};

	ad_platform_close();
	return 0;
}
