/***************************************************************************//**
 *   @file   irq.h
 *   @brief  Header file of IRQ interface.
 *   @author Cristian Pop (cristian.pop@analog.com)
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

#ifndef IRQ_H_
#define IRQ_H_

/******************************************************************************/
/***************************** Include Files **********************************/
/******************************************************************************/

#include <stdint.h>

/******************************************************************************/
/*************************** Types Declarations *******************************/
/******************************************************************************/

/**
 * @struct irq_init_param
 * @brief Structure holding the initial parameters for Interrupt Request.
 */
struct irq_init_param {
	/** Interrupt Request ID. */
	uint32_t	irq_id;
	/** IRQ extra parameters (device specific) */
	void		*extra;
};

/**
 * @struct irq_desc
 * @brief Structure for Interrupt Request descriptor.
 */
struct irq_desc {
	/** Interrupt Request ID. */
	uint32_t	irq_id;
	/** IRQ extra parameters (device specific) */
	void		*extra;
};

/******************************************************************************/
/************************ Functions Declarations ******************************/
/******************************************************************************/

/* Initialize a interrupt controller peripheral. */
int32_t irq_ctrl_init(struct irq_desc **desc,
		      const struct irq_init_param *param);

/* Free the resources allocated by irq_ctrl_init(). */
int32_t irq_ctrl_remove(struct irq_desc *desc);

/* Registers a generic IRQ handling function */
int32_t irq_register(struct irq_desc *desc, uint32_t irq_id,
		     void (*irq_handler)(void *data), void *dev_instance);

/* Unregisters a generic IRQ handling function */
int32_t irq_unregister(struct irq_desc *desc, uint32_t irq_id);

/* Global interrupt enable */
int32_t irq_global_enable(struct irq_desc *desc);

/* Global interrupt disable */
int32_t irq_global_disable(struct irq_desc *desc);

/* Enable specific interrupt */
int32_t irq_source_enable(struct irq_desc *desc, uint32_t irq_id);

/* Disable specific interrupt */
int32_t irq_source_disable(struct irq_desc *desc, uint32_t irq_id);

#endif // IRQ_H_
