/***************************************************************************//**
 *   @file   no_os_hal.c
 *   @brief  No-OS Hardware Abstraction Layer.
 *   @author DBogdan (dragos.bogdan@analog.com)
********************************************************************************
 * Copyright 2018(c) Analog Devices, Inc.
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
#include <stdio.h>
#include "adi_hal.h"
#include "parameters.h"
#include "spi.h"
#include "gpio.h"
#include "error.h"
#include "delay.h"

/******************************************************************************/
/************************** Functions Implementation **************************/
/******************************************************************************/

adiHalErr_t ADIHAL_setTimeout(void *devHalInfo, uint32_t halTimeout_ms)
{
	return ADIHAL_OK;
}

adiHalErr_t ADIHAL_openHw(void *devHalInfo, uint32_t halTimeout_ms)
{
	struct adi_hal *dev_hal_data = (struct adi_hal *)devHalInfo;
	struct spi_init_param spi_param;
	struct gpio_init_param gpio_adrv_resetb_param;
	struct gpio_init_param gpio_adrv_sysref_req_param;
	int32_t status = 0;

	gpio_adrv_resetb_param.number = ADRV_RESETB;
	gpio_adrv_sysref_req_param.number = ADRV_SYSREF_REQ;

	if (dev_hal_data->extra_gpio) {
		gpio_adrv_resetb_param.extra = dev_hal_data->extra_gpio;
		gpio_adrv_sysref_req_param.extra = dev_hal_data->extra_gpio;
	}

	status = gpio_get(&dev_hal_data->gpio_adrv_resetb, &gpio_adrv_resetb_param);

	spi_param.mode = SPI_MODE_0;
	spi_param.chip_select = ADRV_CS;
	if (dev_hal_data->extra_spi)
		spi_param.extra = dev_hal_data->extra_spi;

	status |= spi_init(&dev_hal_data->spi_adrv_desc, &spi_param);

	status |= gpio_get(&dev_hal_data->gpio_adrv_sysref_req,
			   &gpio_adrv_sysref_req_param);

	if (status != SUCCESS)
		return ADIHAL_ERR;
	else
		return ADIHAL_OK;
}

adiHalErr_t ADIHAL_closeHw(void *devHalInfo)
{
	struct adi_hal *dev_hal_data = (struct adi_hal *)devHalInfo;
	int32_t status;

	status = gpio_remove(dev_hal_data->gpio_adrv_resetb);

	status |= gpio_remove(dev_hal_data->gpio_adrv_sysref_req);

	status |= spi_remove(dev_hal_data->spi_adrv_desc);

	if (status != SUCCESS)
		return ADIHAL_ERR;
	else
		return ADIHAL_OK;
}

adiHalErr_t ADIHAL_resetHw(void *devHalInfo)
{
	struct adi_hal *devHalData = (struct adi_hal *)devHalInfo;

	gpio_direction_output(devHalData->gpio_adrv_resetb, 1);
	mdelay(10);
	gpio_direction_output(devHalData->gpio_adrv_resetb, 0);
	mdelay(10);
	gpio_direction_output(devHalData->gpio_adrv_resetb, 1);
	mdelay(10);

	return ADIHAL_OK;
}

adiHalErr_t ADIHAL_sysrefReq(void *devHalInfo, sysrefReqMode_t mode)
{
	struct adi_hal *devHalData = (struct adi_hal *)devHalInfo;

	if (mode == SYSREF_CONT_ON)
		gpio_direction_output(devHalData->gpio_adrv_sysref_req, 1);
	else if (mode == SYSREF_CONT_OFF)
		gpio_direction_output(devHalData->gpio_adrv_sysref_req, 0);
	else if (mode == SYSREF_PULSE) {
		gpio_direction_output(devHalData->gpio_adrv_sysref_req, 1);
		mdelay(1);
		gpio_direction_output(devHalData->gpio_adrv_sysref_req, 0);
	} else
		return ADIHAL_ERR;

	return ADIHAL_OK;

}

adiHalErr_t ADIHAL_spiWriteByte(void *devHalInfo,
				uint16_t addr, uint8_t data)
{
	struct adi_hal *devHalData = (struct adi_hal *)devHalInfo;
	uint8_t buf[3];
	int32_t status;

	buf[0] = (addr >> 8) & 0x7F;
	buf[1] = addr & 0xFF;
	buf[2] = data;
	status = spi_write_and_read(devHalData->spi_adrv_desc, buf, 3);

	if (status != SUCCESS)
		return ADIHAL_SPI_FAIL;
	else
		return ADIHAL_OK;
}

adiHalErr_t ADIHAL_spiWriteBytes(void *devHalInfo,
				 uint16_t *addr, uint8_t *data, uint32_t count)
{
	adiHalErr_t errVal;
	uint32_t i;

	for (i = 0; i < count; i++) {
		errVal = ADIHAL_spiWriteByte(devHalInfo, addr[i], data[i]);
		if (errVal)
			return errVal;
	}

	return ADIHAL_OK;
}

adiHalErr_t ADIHAL_spiReadByte(void *devHalInfo,
			       uint16_t addr, uint8_t *readdata)
{
	struct adi_hal *devHalData = (struct adi_hal *)devHalInfo;

	uint8_t buf[3];
	int32_t status;

	*readdata = 0;
	buf[0] = 0x80 | ((addr >> 8) & 0x7F);
	buf[1] = addr & 0xFF;
	buf[2] = 0x00;
	status = spi_write_and_read(devHalData->spi_adrv_desc, buf, 3);
	*readdata = buf[2];

	if (status != SUCCESS)
		return ADIHAL_SPI_FAIL;
	else
		return ADIHAL_OK;
}

adiHalErr_t ADIHAL_spiReadBytes(void *devHalInfo,
				uint16_t *addr, uint8_t *readdata, uint32_t count)
{
	adiHalErr_t errVal;
	uint32_t i;

	for (i = 0; i < count; i++) {
		errVal = ADIHAL_spiReadByte(devHalInfo, addr[i], &readdata[i]);
		if (errVal)
			return errVal;
	}

	return ADIHAL_OK;
}

adiHalErr_t ADIHAL_spiWriteField(void *devHalInfo,
				 uint16_t addr, uint8_t fieldVal, uint8_t mask, uint8_t startBit)
{
	adiHalErr_t errVal;
	uint8_t readVal;

	errVal = ADIHAL_spiReadByte(devHalInfo, addr, &readVal);
	if (errVal != ADIHAL_OK)
		return errVal;

	readVal = (readVal & ~mask) | ((fieldVal << startBit) & mask);

	return ADIHAL_spiWriteByte(devHalInfo, addr, readVal);
}

adiHalErr_t ADIHAL_spiReadField(void *devHalInfo,
				uint16_t addr, uint8_t *fieldVal, uint8_t mask, uint8_t startBit)
{
	adiHalErr_t errVal;
	uint8_t readVal;

	errVal = ADIHAL_spiReadByte(devHalInfo, addr, &readVal);
	if (errVal != ADIHAL_OK)
		return errVal;

	*fieldVal = ((readVal & mask) >> startBit);

	return ADIHAL_OK;
}

adiHalErr_t  ADIHAL_wait_us(void *devHalInfo, uint32_t time_us)
{
	udelay(time_us);

	return ADIHAL_OK;
}

adiHalErr_t ADIHAL_writeToLog(void *devHalInfo,
			      adiLogLevel_t logLevel, uint32_t errorCode, const char *comment)
{
	struct adi_hal *dev_hal_data = (struct adi_hal *)devHalInfo;

	if (devHalInfo == NULL)
		return (ADIHAL_GEN_SW);

	if ((dev_hal_data->log_level & ADIHAL_LOG_ERR) &&
	    (logLevel == ADIHAL_LOG_ERR))
		printf("ERROR: %d: %s", (int)errorCode, comment);
	else if ((dev_hal_data->log_level & ADIHAL_LOG_WARN) &&
		 (logLevel == ADIHAL_LOG_WARN))
		printf("WARNING: %d: %s", (int)errorCode, comment);

	return ADIHAL_OK;
}

adiHalErr_t ADIHAL_setLogLevel(void *devHalInfo, uint16_t logLevel)
{
	struct adi_hal *dev_hal_data = (struct adi_hal *)devHalInfo;

	if (devHalInfo == NULL)
		return (ADIHAL_GEN_SW);

	dev_hal_data->log_level = logLevel;

	return ADIHAL_OK;
}
