/***************************************************************************//**
 *   @file   xilinx/irq.c
 *   @brief  Implementation of Xilinx IRQ Generic Driver.
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

/******************************************************************************/
/***************************** Include Files **********************************/
/******************************************************************************/

#include <xparameters.h>
#include <stdlib.h>
#include "error.h"
#include "irq.h"
#include "irq_extra.h"
#ifdef XPAR_XSCUGIC_NUM_INSTANCES
#include <xscugic.h>
#endif
#ifdef XPAR_XINTC_NUM_INSTANCES
#include <xintc.h>
#endif

/******************************************************************************/
/************************ Functions Definitions *******************************/
/******************************************************************************/

/**
 * @brief Initialize the IRQ interrupts.
 * @param desc - The IRQ descriptor.
 * @param param - The structure that contains the IRQ parameters.
 * @return SUCCESS in case of success, FAILURE otherwise.
 */
int32_t irq_ctrl_init(struct irq_desc **desc,
		      const struct irq_init_param *param)
{
	int32_t status;
	struct irq_desc *descriptor;
	struct xil_irq_desc *xil_dev;
	void *config;

	descriptor = (struct irq_desc *)calloc(1, sizeof *descriptor);
	if(!descriptor)
		return FAILURE;
	xil_dev = (struct xil_irq_desc *)calloc(1, sizeof *xil_dev);
	if(!xil_dev) {
		free(descriptor);
		return FAILURE;
	}

	Xil_ExceptionInit();

	descriptor->irq_id = param->irq_id;
	descriptor->extra = xil_dev;
	xil_dev->type = ((struct xil_irq_init_param *)param->extra)->type;

	switch(xil_dev->type) {
	case IRQ_PS:
#ifdef XSCUGIC_H
		xil_dev->instance = calloc(1, sizeof(XScuGic));
		if(!xil_dev->instance)
			goto error;

		config = XScuGic_LookupConfig(descriptor->irq_id);
		if(!config)
			goto ps_error;

		status = XScuGic_CfgInitialize(xil_dev->instance, config,
					       ((XScuGic_Config *)config)->CpuBaseAddress);
		if (status != SUCCESS)
			goto ps_error;

		Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
					     (Xil_ExceptionHandler)XScuGic_InterruptHandler,
					     xil_dev->instance);

		break;
ps_error:
		free(xil_dev->instance);
#endif
		goto error;
	case IRQ_PL:
#ifdef XINTC_H
		xil_dev->instance = calloc(1, sizeof(XIntc));
		if(!xil_dev->instance)
			goto error;

		status = XIntc_Initialize(xil_dev->instance, descriptor->irq_id);
		if(status != SUCCESS)
			goto pl_error;

		status = XIntc_Start(xil_dev->instance, XIN_REAL_MODE);
		if(status != SUCCESS)
			goto pl_error;

		break;
pl_error:
		free(xil_dev->instance);
#endif
		goto error;
	default:
		goto error;

		break;
	}

	*desc = descriptor;

	return SUCCESS;

error:
	free(xil_dev);
	free(descriptor);

	return FAILURE;
}

/**
 * @brief Enable global interrupts.
 * @return SUCCESS in case of success, FAILURE otherwise.
 */
int32_t irq_global_enable(struct irq_desc *desc)
{
	/* Enable interrupts */
	Xil_ExceptionEnable();

	return SUCCESS;
}

/**
 * @brief Disable global interrupts.
 * @return SUCCESS in case of success, FAILURE otherwise.
 */
int32_t irq_global_disable(struct irq_desc *desc)
{
	/* Disable interrupts */
	Xil_ExceptionDisable();

	return SUCCESS;
}

/**
 * @brief Enable specific interrupt.
 * @param desc - The IRQ descriptor.
 * @param irq_id - Interrupt identifier.
 * @return SUCCESS in case of success, FAILURE otherwise.
 */
int32_t irq_source_enable(struct irq_desc *desc, uint32_t irq_id)
{
	struct xil_irq_desc *xil_dev = desc->extra;

	switch(xil_dev->type) {
	case IRQ_PS:
#ifdef XSCUGIC_H
		XScuGic_Enable(xil_dev->instance, irq_id);
#endif
		break;
	case IRQ_PL:
#ifdef XINTC_H
		XIntc_Enable(xil_dev->instance, irq_id);
#endif
		break;
	default:

		return FAILURE;
	}

	return SUCCESS;
}

/**
 * @brief Disable specific interrupt.
 * @param desc - The IRQ descriptor.
 * @param irq_id - Interrupt identifier.
 * @return SUCCESS in case of success, FAILURE otherwise.
 */
int32_t irq_source_disable(struct irq_desc *desc, uint32_t irq_id)
{
	struct xil_irq_desc *xil_dev = desc->extra;

	switch(xil_dev->type) {
	case IRQ_PS:
#ifdef XSCUGIC_H
		XScuGic_Disable(xil_dev->instance, irq_id);
#endif
		break;
	case IRQ_PL:
#ifdef XINTC_H
		XIntc_Disable(xil_dev->instance, irq_id);
#endif
		break;
	default:

		return FAILURE;
	}

	return SUCCESS;
}

/**
 * @brief Registers a generic IRQ handling function.
 * @param desc - The IRQ descriptor.
 * @param irq_id - Interrupt identifier.
 * @param irq_handler - The IRQ handler.
 * @param dev_instance - device instance.
 * @return SUCCESS in case of success, FAILURE otherwise.
 */
int32_t irq_register(struct irq_desc *desc, uint32_t irq_id,
		     void (*irq_handler)(void *data), void *dev_instance)
{
	struct xil_irq_desc *xil_dev = desc->extra;

	switch(xil_dev->type) {
	case IRQ_PS:
#ifdef XSCUGIC_H
		return XScuGic_Connect(xil_dev->instance, irq_id, irq_handler,
				       dev_instance);
#endif
		break;
	case IRQ_PL:
#ifdef XINTC_H
		return XIntc_Connect(xil_dev->instance, irq_id, irq_handler,
				     dev_instance);
#endif
		break;
	default:
		break;
	}

	return FAILURE;
}

/**
 * @brief Unregisters a generic IRQ handling function.
 * @param desc - The IRQ descriptor.
 * @param irq_id - Interrupt identifier.
 * @return SUCCESS in case of success, FAILURE otherwise.
 */
int32_t irq_unregister(struct irq_desc *desc, uint32_t irq_id)
{
	struct xil_irq_desc *xil_dev = desc->extra;

	switch(xil_dev->type) {
	case IRQ_PS:
#ifdef XSCUGIC_H
		XScuGic_Disconnect(xil_dev->instance, irq_id);
#endif
		break;
	case IRQ_PL:
#ifdef XINTC_H
		XIntc_Disconnect(xil_dev->instance, irq_id);
#endif
		break;
	default:

		return FAILURE;
	}

	return SUCCESS;
}

/**
 * @brief Free the resources allocated by irq_ctrl_init().
 * @param desc - The IRQ descriptor.
 * @return SUCCESS in case of success, FAILURE otherwise.
 */
int32_t irq_ctrl_remove(struct irq_desc *desc)
{
	struct xil_irq_desc *xil_dev = desc->extra;
	free(xil_dev->instance);
	free(desc->extra);
	free(desc);

	return SUCCESS;
}
