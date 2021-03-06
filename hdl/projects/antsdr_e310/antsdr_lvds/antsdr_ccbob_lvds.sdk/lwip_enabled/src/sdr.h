/*
 * sdr.h
 *
 *  Created on: Apr 7, 2022
 *      Author: zhouzhiwen
 */

#ifndef SRC_SDR_H_
#define SRC_SDR_H_
#include "config.h"
#include "ad9361_api.h"
#include "parameters.h"
#include "platform.h"
int sdr_init(void);
void sdr_transmit(uint32_t* buffer,uint32_t tx_count,bool cyclic);
int32_t sdr_receive(uint32_t size, uint32_t start_address);
void sdr_transmit_2(uint32_t* buffer,uint32_t tx_count);
int32_t sdr_receive_2(uint32_t size, uint32_t start_address);
void write_sample_data(uint32_t* buffer,bool rx2tx2);
#endif /* SRC_SDR_H_ */
