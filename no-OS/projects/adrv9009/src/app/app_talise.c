/***************************************************************************//**
 *   @file   app_talise.c
 *   @brief  Talise initialization and control routines.
 *   @author Darius Berghe (darius.berghe@analog.com)
********************************************************************************
 * Copyright 2019(c) Analog Devices, Inc.
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
// stdlibs
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

// platform drivers
#include "error.h"
#include "delay.h"
#include "util.h"

// talise
#include "talise.h"
#include "talise_jesd204.h"
#include "talise_arm.h"
#include "talise_radioctrl.h"
#include "talise_cals.h"
#include "talise_config.h"
#include "talise_error.h"
#include "talise_arm_binary.h"
#include "talise_stream_binary.h"

// hal
#include "parameters.h"
#include "adi_hal.h"

// header
#include "app_talise.h"


bool adrv9009_check_sysref_rate(uint32_t lmfc, uint32_t sysref)
{
	uint32_t div, mod;

	div = lmfc / sysref;
	mod = lmfc % sysref;

	/* Ignore minor deviations that can be introduced by rounding. */
	return mod <= div || mod >= sysref - div;
}

adiHalErr_t talise_setup(taliseDevice_t * const pd, taliseInit_t * const pi)
{
	uint32_t talAction = TALACT_NO_ACTION;
	uint8_t errorFlag = 0;
	uint8_t mcsStatus = 0;
	uint8_t pllLockStatus = 0;
	uint16_t deframerStatus = 0;
	uint8_t framerStatus = 0;
	uint32_t count = sizeof(armBinary);
	taliseArmVersionInfo_t talArmVersionInfo;
	uint32_t initCalMask =  TAL_TX_BB_FILTER | TAL_ADC_TUNER | TAL_TIA_3DB_CORNER
				| TAL_DC_OFFSET | TAL_TX_ATTENUATION_DELAY | TAL_RX_GAIN_DELAY | TAL_FLASH_CAL |
				TAL_PATH_DELAY | TAL_TX_LO_LEAKAGE_INTERNAL | TAL_TX_QEC_INIT |
				TAL_LOOPBACK_RX_LO_DELAY | TAL_LOOPBACK_RX_RX_QEC_INIT |
				TAL_RX_LO_DELAY | TAL_RX_QEC_INIT;
	uint32_t trackingCalMask =  TAL_TRACK_RX1_QEC |
				    TAL_TRACK_RX2_QEC |
				    TAL_TRACK_TX1_QEC |
				    TAL_TRACK_TX2_QEC;

	uint32_t api_vers[4];
	uint8_t rev;

	/*******************************/
	/**** Talise Initialization ***/
	/*******************************/

	/*Open Talise Hw Device*/
	talAction = TALISE_openHw(pd);
	if(talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_openHw() failed\n");
		goto error_0;
	}

	/* Toggle RESETB pin on Talise device */
	talAction = TALISE_resetDevice(pd);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_resetDevice() failed\n");
		goto error_11;
	}

	mdelay(100);

	/* TALISE_initialize() loads the Talise device data structure
	 * settings for the Rx/Tx/ORx profiles, FIR filters, digital
	 * filter enables, calibrates the CLKPLL, loads the user provided Rx
	 * gain tables, and configures the JESD204b serializers/framers/deserializers
	 * and deframers.
	 */
	talAction = TALISE_initialize(pd, pi);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_initialize() failed\n");
		goto error_11;
	}

	/*******************************/
	/***** CLKPLL Status Check *****/
	/*******************************/
	talAction = TALISE_getPllsLockStatus(pd, &pllLockStatus);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_getPllsLockStatus() failed\n");
		goto error_11;
	}

	/* Assert that Talise CLKPLL is locked */
	if ((pllLockStatus & 0x01) == 0) {
		/* <user code - CLKPLL not locked - ensure lock before proceeding */
		printf("error: CLKPLL not locked\n");
		goto error_11;
	}

	/*******************************************************/
	/**** Perform MultiChip Sync (MCS) on Talise Device ***/
	/*******************************************************/
	talAction = TALISE_enableMultichipSync(pd, 1, &mcsStatus);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_enableMultichipSync() failed\n");
		goto error_11;
	}

	/*< user code - Request minimum 3 SYSREF pulses from Clock Device - > */
	ADIHAL_sysrefReq(pd->devHalInfo, SYSREF_PULSE);

	/*******************/
	/**** Verify MCS ***/
	/*******************/
	talAction = TALISE_enableMultichipSync(pd, 0, &mcsStatus);
	if ((mcsStatus & 0x0B) != 0x0B) {
		/*< user code - MCS failed - ensure MCS before proceeding*/
		printf("warning: TALISE_enableMultichipSync() failed\n");
	}

	/*******************************************************/
	/**** Prepare Talise Arm binary and Load Arm and	****/
	/**** Stream processor Binaryes 					****/
	/*******************************************************/
	if (pllLockStatus & 0x01) {
		talAction = TALISE_initArm(pd, pi);
		if (talAction != TALACT_NO_ACTION) {
			/*** < User: decide what to do based on Talise recovery action returned > ***/
			printf("error: TALISE_initArm() failed\n");
			goto error_11;
		}

		/*< user code- load Talise stream binary into streamBinary[4096] >*/
		/*< user code- load ARM binary byte array into armBinary[114688] >*/

		talAction = TALISE_loadStreamFromBinary(pd, &streamBinary[0]);
		if (talAction != TALACT_NO_ACTION) {
			/*** < User: decide what to do based on Talise recovery action returned > ***/
			printf("error: TALISE_loadStreamFromBinary() failed\n");
			goto error_11;
		}

		talAction = TALISE_loadArmFromBinary(pd, &armBinary[0], count);
		if (talAction != TALACT_NO_ACTION) {
			/*** < User: decide what to do based on Talise recovery action returned > ***/
			printf("error: TALISE_loadArmFromBinary() failed\n");
			goto error_11;
		}

		/* TALISE_verifyArmChecksum() will timeout after 200ms
		 * if ARM checksum is not computed
		 */
		talAction = TALISE_verifyArmChecksum(pd);
		if (talAction != TAL_ERR_OK) {
			/*< user code- ARM did not load properly - check armBinary & clock/profile settings >*/
			printf("error: TALISE_verifyArmChecksum() failed\n");
			goto error_11;
		}

	} else {
		/*< user code- check settings for proper CLKPLL lock  > ***/
		printf("error: CLKPLL not locked\n");
		goto error_11;
	}

	TALISE_getDeviceRev(pd, &rev);
	TALISE_getArmVersion_v2(pd, &talArmVersionInfo);
	TALISE_getApiVersion(pd,
			     &api_vers[0], &api_vers[1], &api_vers[2], &api_vers[3]);

	printf("talise: Device Revision %d, Firmware %u.%u.%u, API %lu.%lu.%lu.%lu\n",
	       rev, talArmVersionInfo.majorVer,
	       talArmVersionInfo.minorVer, talArmVersionInfo.rcVer,
	       api_vers[0], api_vers[1], api_vers[2], api_vers[3]);

	/*******************************/
	/**Set RF PLL LO Frequencies ***/
	/*******************************/
	talAction = TALISE_setRfPllFrequency(pd, TAL_RF_PLL, 2000000000);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_setRfPllFrequency() failed\n");
		goto error_11;
	}

	/*** < wait 200ms for PLLs to lock - user code here > ***/

	talAction = TALISE_getPllsLockStatus(pd, &pllLockStatus);
	if ((pllLockStatus & 0x07) != 0x07) {
		/*< user code - ensure lock of all PLLs before proceeding>*/
		printf("error: RFPLL not locked\n");
		goto error_11;
	}

	/****************************************************/
	/**** Run Talise ARM Initialization Calibrations ***/
	/****************************************************/
	talAction = TALISE_runInitCals(pd, initCalMask);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_runInitCals() failed\n");
		goto error_11;
	}

	talAction = TALISE_waitInitCals(pd, 20000, &errorFlag);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_waitInitCals() failed\n");
		goto error_11;
	}

	if (errorFlag) {
		/*< user code - Check error flag to determine ARM  error> */
		printf("error: Calibrations not completed\n");
		goto error_11;
	} else {
		/*< user code - Calibrations completed successfully > */
		printf("talise: Calibrations completed successfully\n");
	}

	/***************************************************/
	/**** Enable  Talise JESD204B Framer ***/
	/***************************************************/

	talAction = TALISE_enableFramerLink(pd, TAL_FRAMER_A, 0);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_enableFramerLink() failed\n");
		goto error_11;
	}

	talAction |= TALISE_enableFramerLink(pd, TAL_FRAMER_A, 1);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_enableFramerLink() failed\n");
		goto error_11;
	}

	/*************************************************/
	/**** Enable SYSREF to Talise JESD204B Framer ***/
	/*************************************************/
	/*** < User: Make sure SYSREF is stopped/disabled > ***/

	talAction = TALISE_enableSysrefToFramer(pd, TAL_FRAMER_A, 1);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_enableSysrefToFramer() failed\n");
		goto error_11;
	}

	/***************************************************/
	/**** Enable  Talise JESD204B Deframer ***/
	/***************************************************/

	talAction = TALISE_enableDeframerLink(pd, TAL_DEFRAMER_A, 0);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_enableDeframerLink() failed\n");
		goto error_11;
	}

	talAction |= TALISE_enableDeframerLink(pd, TAL_DEFRAMER_A, 1);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_enableDeframerLink() failed\n");
		goto error_11;
	}
	/***************************************************/
	/**** Enable SYSREF to Talise JESD204B Deframer ***/
	/***************************************************/
	talAction = TALISE_enableSysrefToDeframer(pd, TAL_DEFRAMER_A, 1);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_enableDeframerLink() failed\n");
		goto error_11;
	}

	/*** < User Sends SYSREF Here > ***/

	ADIHAL_sysrefReq(pd->devHalInfo, SYSREF_CONT_ON);

	mdelay(100);

	ADIHAL_sysrefReq(pd->devHalInfo, SYSREF_CONT_OFF);

	mdelay(100);

	/*** < Insert User JESD204B Sync Verification Code Here > ***/

	/**************************************/
	/**** Check Talise Deframer Status ***/
	/**************************************/
	talAction = TALISE_readDeframerStatus(pd, TAL_DEFRAMER_A, &deframerStatus);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_readDeframerStatus() failed\n");
		goto error_11;
	}

	if ((deframerStatus & 0xF7) != 0x86)
		printf("warning: TAL_DEFRAMER_A status 0x%X\n", deframerStatus);

	/************************************/
	/**** Check Talise Framer Status ***/
	/************************************/
	talAction = TALISE_readFramerStatus(pd, TAL_FRAMER_A, &framerStatus);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_readFramerStatus() failed\n");
		goto error_11;
	}

	if ((framerStatus & 0x07) != 0x05) {
		printf("warning: TAL_FRAMER_A status 0x%X\n", framerStatus);
	}

	/*** < User: When links have been verified, proceed > ***/

	/***********************************************
	* Allow Rx1/2 QEC tracking and Tx1/2 QEC	   *
	* tracking to run when in the radioOn state	*
	* Tx calibrations will only run if radioOn and *
	* the obsRx path is set to OBS_INTERNAL_CALS   *
	* **********************************************/

	talAction = TALISE_enableTrackingCals(pd, trackingCalMask);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_enableTrackingCals() failed\n");
		goto error_11;
	}

	/* Function to turn radio on, Enables transmitters and receivers */
	/* that were setup during TALISE_initialize() */
	talAction = TALISE_radioOn(pd);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_radioOn() failed\n");
		goto error_11;
	}

	talAction = TALISE_setRxTxEnable(pd, TAL_RX1RX2_EN, TAL_TX1TX2);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
		printf("error: TALISE_setRxTxEnable() failed\n");
		goto error_0;
	}

	return ADIHAL_OK;

error_11:
	TALISE_closeHw(pd);
error_0:
	return FAILURE;
}

void talise_shutdown(taliseDevice_t * const pd)
{
	uint32_t talAction = TALACT_NO_ACTION;

	/***********************************************
	* Shutdown Procedure *
	* **********************************************/
	/* Function to turn radio on, Disables transmitters and receivers */
	talAction = TALISE_radioOff(pd);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
	}
	/* Put Talise in safe state for power down */
	talAction = TALISE_shutdown(pd);
	if (talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
	}

	/*Close Talise Hw Device*/
	talAction = TALISE_closeHw(pd);
	if(talAction != TALACT_NO_ACTION) {
		/*** < User: decide what to do based on Talise recovery action returned > ***/
	}
}