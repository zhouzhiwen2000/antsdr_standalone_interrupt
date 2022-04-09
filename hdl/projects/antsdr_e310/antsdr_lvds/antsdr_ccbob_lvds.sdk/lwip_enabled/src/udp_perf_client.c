/*
 * Copyright (C) 2017 - 2018 Xilinx, Inc.
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

/* Connection handle for a UDP Client session */

#include "udp_perf_client.h"

extern struct netif server_netif;
static struct udp_pcb *pcb[NUM_OF_PARALLEL_CLIENTS];
uint32_t *send_buf = NULL;
uint32_t buf_size = 0;
uint32_t transfered_size = 0;
static int packet_id = 0;
bool finished = 0;
#define FINISH	1


void print_app_header(void)
{
	xil_printf("UDP client connecting to %s on port %d\r\n",
			UDP_SERVER_IP_ADDRESS, UDP_CONN_PORT);
}

static void udp_packet_send(u8_t finished, uint32_t* start_address,size_t size)
{
	int *payload;
	u8_t i;
	u8_t retries = MAX_SEND_RETRY;
	struct pbuf *packet;
	err_t err;

	for (i = 0; i < NUM_OF_PARALLEL_CLIENTS; i++) {

		packet = pbuf_alloc(PBUF_TRANSPORT, size*4+4, PBUF_POOL);
		if (!packet) {
			xil_printf("error allocating pbuf to send\r\n");
			return;
		} else {
			memcpy(packet->payload+4, start_address, size*4);
		}

		/* always increment the id */
		payload = (int*) (packet->payload);
		if (finished == FINISH)
			packet_id = -1;

		payload[0] = packet_id;

		while (retries) {
			err = udp_send(pcb[i], packet);
			if (err != ERR_OK) {
				xil_printf("Error on udp_send: %d\r\n", err);
				retries--;
				usleep(100);
			} else {
				transfered_size+=size;
				break;
			}
		}
		if (!retries) {
			/* Terminate this app */
			xil_printf("Too many udp_send() retries, ");
			xil_printf("Terminating application\n\r");
			udp_remove(pcb[i]);
			pcb[i] = NULL;
		}
//		if (finished == FINISH)
//			pcb[i] = NULL;

		pbuf_free(packet);
//		mdelay(20);
		/* For ZynqMP SGMII, At high speed,
		 * "pack dropped, no space" issue observed.
		 * To avoid this, added delay of 2us between each
		 * packets.
		 */
#if defined (__aarch64__) && defined (XLWIP_CONFIG_INCLUDE_AXI_ETHERNET_DMA)
		usleep(2);
#endif /* __aarch64__ */

	}
	packet_id++;
}

/** Transmit data on a udp session */
int8_t transfer_data(void)
{
	int i = 0;
	for (i = 0; i < NUM_OF_PARALLEL_CLIENTS; i++) {
		if (pcb[i] == NULL)
			return -1;
	}
	if(!finished)
	{
		if(buf_size-transfered_size>=UDP_SEND_BUFSIZE/4-1)
			udp_packet_send(!FINISH,send_buf+transfered_size,UDP_SEND_BUFSIZE/4-1);
		else
		{
			finished = 1;
			udp_packet_send(FINISH,send_buf+transfered_size,buf_size-transfered_size);
		}
	}
	return finished;
}

void start_application()//size is in words(32bit)
{
	err_t err;
	ip_addr_t remote_addr;
	u32_t i;

	err = inet_aton(UDP_SERVER_IP_ADDRESS, &remote_addr);
	if (!err) {
		xil_printf("Invalid Server IP address: %d\r\n", err);
		return;
	}

	for (i = 0; i < NUM_OF_PARALLEL_CLIENTS; i++) {
		/* Create Client PCB */
		pcb[i] = udp_new();
		if (!pcb[i]) {
			xil_printf("Error in PCB creation. out of memory\r\n");
			return;
		}

		err = udp_connect(pcb[i], &remote_addr, UDP_CONN_PORT);
		if (err != ERR_OK) {
			xil_printf("udp_client: Error on udp_connect: %d\r\n", err);
			udp_remove(pcb[i]);
			return;
		}
	}
	/* Wait for successful connection */
	usleep(10);
	finished=1;
}
void prepare_udp_data(uint32_t* buffer,uint32_t size)//size is in words(32bit)
{
	send_buf = buffer;
	buf_size = size;
	packet_id = 0;
	transfered_size = 0;
	finished = 0;
}
