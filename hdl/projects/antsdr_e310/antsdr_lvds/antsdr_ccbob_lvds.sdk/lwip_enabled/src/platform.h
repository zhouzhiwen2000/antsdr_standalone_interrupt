/*
 * Copyright (C) 2009 - 2018 Xilinx, Inc.
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

#ifndef __PLATFORM_H_
#define __PLATFORM_H_

#include "lwip/tcp.h"
#include <stdint.h>
#include "util.h"
/******************************************************************************/
/********************** Macros and Constants Definitions **********************/
/******************************************************************************/
#define ADI_REG_VERSION			0x0000

#define ADI_REG_ID				0x0004

#define ADI_REG_RSTN			0x0040
#define ADI_RSTN				(1 << 0)
#define ADI_MMCM_RSTN			(1 << 1)

#define ADI_REG_CNTRL			0x0044
#define ADI_R1_MODE				(1 << 2)
#define ADI_DDR_EDGESEL			(1 << 1)
#define ADI_PIN_MODE			(1 << 0)

#define ADI_REG_STATUS			0x005C
#define ADI_MUX_PN_ERR			(1 << 3)
#define ADI_MUX_PN_OOS			(1 << 2)
#define ADI_MUX_OVER_RANGE		(1 << 1)
#define ADI_STATUS				(1 << 0)

#define ADI_REG_DELAY_CNTRL		0x0060	/* <= v8.0 */
#define ADI_DELAY_SEL			(1 << 17)
#define ADI_DELAY_RWN			(1 << 16)
#define ADI_DELAY_ADDRESS(x)	(((x) & 0xFF) << 8)
#define ADI_TO_DELAY_ADDRESS(x)	(((x) >> 8) & 0xFF)
#define ADI_DELAY_WDATA(x)		(((x) & 0x1F) << 0)
#define ADI_TO_DELAY_WDATA(x)	(((x) >> 0) & 0x1F)

#define ADI_REG_CHAN_CNTRL(c)	(0x0400 + (c) * 0x40)
#define ADI_PN_SEL				(1 << 10) /* !v8.0 */
#define ADI_IQCOR_ENB			(1 << 9)
#define ADI_DCFILT_ENB			(1 << 8)
#define ADI_FORMAT_SIGNEXT		(1 << 6)
#define ADI_FORMAT_TYPE			(1 << 5)
#define ADI_FORMAT_ENABLE		(1 << 4)
#define ADI_PN23_TYPE			(1 << 1) /* !v8.0 */
#define ADI_ENABLE				(1 << 0)

#define ADI_REG_CHAN_STATUS(c)	(0x0404 + (c) * 0x40)
#define ADI_PN_ERR				(1 << 2)
#define ADI_PN_OOS				(1 << 1)
#define ADI_OVER_RANGE			(1 << 0)

#define ADI_REG_CHAN_CNTRL_1(c)		(0x0410 + (c) * 0x40)
#define ADI_DCFILT_OFFSET(x)		(((x) & 0xFFFF) << 16)
#define ADI_TO_DCFILT_OFFSET(x)		(((x) >> 16) & 0xFFFF)
#define ADI_DCFILT_COEFF(x)			(((x) & 0xFFFF) << 0)
#define ADI_TO_DCFILT_COEFF(x)		(((x) >> 0) & 0xFFFF)

#define ADI_REG_CHAN_CNTRL_2(c)		(0x0414 + (c) * 0x40)
#define ADI_IQCOR_COEFF_1(x)		(((x) & 0xFFFF) << 16)
#define ADI_TO_IQCOR_COEFF_1(x)		(((x) >> 16) & 0xFFFF)
#define ADI_IQCOR_COEFF_2(x)		(((x) & 0xFFFF) << 0)
#define ADI_TO_IQCOR_COEFF_2(x)		(((x) >> 0) & 0xFFFF)

#define PCORE_VERSION(major, minor, letter) ((major << 16) | (minor << 8) | letter)
#define PCORE_VERSION_MAJOR(version) (version >> 16)
#define PCORE_VERSION_MINOR(version) ((version >> 8) & 0xff)
#define PCORE_VERSION_LETTER(version) (version & 0xff)

#define ADI_REG_CHAN_CNTRL_3(c)		(0x0418 + (c) * 0x40) /* v8.0 */
#define ADI_ADC_PN_SEL(x)			(((x) & 0xF) << 16)
#define ADI_TO_ADC_PN_SEL(x)		(((x) >> 16) & 0xF)
#define ADI_ADC_DATA_SEL(x)			(((x) & 0xF) << 0)
#define ADI_TO_ADC_DATA_SEL(x)		(((x) >> 0) & 0xF)

/* PCORE Version > 8.00 */
#define ADI_REG_DELAY(l)			(0x0800 + (l) * 0x4)

enum adc_pn_sel {
	ADC_PN9 = 0,
	ADC_PN23A = 1,
	ADC_PN7 = 4,
	ADC_PN15 = 5,
	ADC_PN23 = 6,
	ADC_PN31 = 7,
	ADC_PN_CUSTOM = 9,
	ADC_PN_END = 10,
};

enum adc_data_sel {
	ADC_DATA_SEL_NORM,
	ADC_DATA_SEL_LB, /* DAC loopback */
	ADC_DATA_SEL_RAMP, /* TBD */
};

/******************************************************************************/
/************************ Functions Declarations ******************************/
/******************************************************************************/
int32_t spi_init(uint32_t device_id,
				 uint8_t  clk_pha,
				 uint8_t  clk_pol);
int32_t spi_read(struct spi_device *spi,
				 uint8_t *data,
				 uint8_t bytes_number);
int spi_write_then_read(struct spi_device *spi,
		const unsigned char *txbuf, unsigned n_tx,
		unsigned char *rxbuf, unsigned n_rx);
void gpio_init(uint32_t device_id);
void gpio_direction(uint8_t pin, uint8_t direction);
bool gpio_is_valid(int number);
void gpio_set_value(unsigned gpio, int value);

/* rf switch init */
void rf_switch_init();

void udelay(unsigned long usecs);
void mdelay(unsigned long msecs);
unsigned long msleep_interruptible(unsigned int msecs);
void axiadc_init(struct ad9361_rf_phy *phy);
int axiadc_post_setup(struct ad9361_rf_phy *phy);
unsigned int axiadc_read(struct axiadc_state *st, unsigned long reg);
void axiadc_write(struct axiadc_state *st, unsigned reg, unsigned val);
int axiadc_set_pnsel(struct axiadc_state *st, int channel, enum adc_pn_sel sel);
void axiadc_idelay_set(struct axiadc_state *st, unsigned lane, unsigned val);
void init_platform();
void cleanup_platform();
#ifdef __MICROBLAZE__
void timer_callback();
#endif
void platform_setup_timer();
void platform_enable_interrupts();
u64_t get_time_ms();
#endif
