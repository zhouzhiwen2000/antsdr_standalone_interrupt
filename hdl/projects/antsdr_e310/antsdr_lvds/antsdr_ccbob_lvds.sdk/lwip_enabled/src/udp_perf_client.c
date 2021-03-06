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
struct tcp_pcb *c_pcb;
//struct tcp_pcb *con_pcb;

uint32_t *send_buf = NULL;
uint32_t buf_size = 0;
uint32_t transfered_size = 0;
volatile bool finished = 1;
void sdr_setrxgain(int8_t gain);
bool dac_buffer_complete=0;
volatile ip_addr_t computer_addr;
volatile u16_t computer_port;
extern uint32_t __attribute__((aligned(32))) dac_buffer[128000+32768];
//static void udp_recv_perf_traffic(void *arg, struct udp_pcb *tpcb,
//		struct pbuf *p, const ip_addr_t *addr, u16_t port)
//{
//	int32_t recv_id=*((int32_t *)(p->payload));
//	packets_arrived+=1;
//	memcpy(&dac_buffer[recv_id*320],p->payload+4,1280);
//	if(packets_arrived==400)
//	{
//		dac_buffer_complete=1;
//		packets_arrived=0;
//		computer_addr=*addr;
//		computer_port=port;
//	}
//	pbuf_free(p);
//}


//static void udp_packet_send(u8_t finished, uint32_t* start_address,size_t size)
//{
//	int *payload;
//	u8_t i;
//	u8_t retries = MAX_SEND_RETRY;
//	struct pbuf *packet;
//	err_t err;
//
//	for (i = 0; i < NUM_OF_PARALLEL_CLIENTS; i++) {
//
//		packet = pbuf_alloc(PBUF_TRANSPORT, size*4+4, PBUF_POOL);
//		if (!packet) {
//			xil_printf("error allocating pbuf to send\r\n");
//			return;
//		} else {
//			memcpy(packet->payload+4, start_address, size*4);
//		}
//
//		/* always increment the id */
//		payload = (int*) (packet->payload);
//		if (finished == FINISH)
//			packet_id = -1;
//
//		payload[0] = packet_id;
//
//		while (retries) {
//			err = udp_send(pcb[i], packet);
//			if (err != ERR_OK) {
//				xil_printf("Error on udp_send: %d\r\n", err);
//				retries--;
//				usleep(100);
//			} else {
//				transfered_size+=size;
//				break;
//			}
//		}
//		if (!retries) {
//			/* Terminate this app */
//			xil_printf("Too many udp_send() retries, ");
//			xil_printf("Terminating application\n\r");
//			udp_remove(pcb[i]);
//			pcb[i] = NULL;
//		}
////		if (finished == FINISH)
////			pcb[i] = NULL;
//
//		pbuf_free(packet);
////		mdelay(20);
//		/* For ZynqMP SGMII, At high speed,
//		 * "pack dropped, no space" issue observed.
//		 * To avoid this, added delay of 2us between each
//		 * packets.
//		 */
//#if defined (__aarch64__) && defined (XLWIP_CONFIG_INCLUDE_AXI_ETHERNET_DMA)
//		usleep(2);
//#endif /* __aarch64__ */
//
//	}
//	packet_id++;
//}
//
///** Transmit data on a udp session */

int8_t transfer_data(void)
{
	if(tcp_sndbuf(c_pcb)>=4096*4)
	{
		if(!finished)
		{
			if(buf_size-transfered_size>=4096)
				{
					tcp_write(c_pcb,send_buf+transfered_size,4096*4,1);
					transfered_size+=4096;
				}
			else
			{
				finished = 1;
				tcp_write(c_pcb,send_buf+transfered_size,(buf_size-transfered_size)*4,1);
				transfered_size+=buf_size-transfered_size;
//				tcp_server_close(c_pcb);
//				c_pcb = NULL;
			}
		}
	}
	return finished;
}



/** Close a tcp session */
void tcp_server_close(struct tcp_pcb *pcb)
{
	err_t err;

	if (pcb != NULL) {
		tcp_recv(pcb, NULL);
		tcp_err(pcb, NULL);
		err = tcp_close(pcb);
		if (err != ERR_OK) {
			/* Free memory with abort */
			tcp_abort(pcb);
		}
	}
}
static void tcp_server_err(void *arg, err_t err)
{
	LWIP_UNUSED_ARG(err);
	tcp_server_close(c_pcb);
	c_pcb = NULL;
	xil_printf("TCP connection aborted\n\r");
}

void process_byte(uint8_t data)
{
	  static int recv_state=0;
	  static uint32_t i=0;
	  static uint32_t j=0;
	  static uint32_t size = 0;
	     if(recv_state==0)
	  {
	    if(data==0xAA)
	    {
	      recv_state=1;
	    }
	    else
	      recv_state=0;
	  }
	  else if(recv_state==1)
	  {
	    if(data==0xAF)
	    {
	      recv_state=2;
	    }
	    else if(data==0xAE)//close connection
	    {
	      tcp_server_close(c_pcb);
	      c_pcb = NULL;
	      recv_state=0;
	    }
	    else if(data==0xAD)//set gain
	    {
	      recv_state=4;
	    }
	    else recv_state=0;
	  }
	  else if(recv_state==2)
	  {
		 if(i<4)
		 {
			 ((uint8_t *)(&size))[i]=data;
			 i=i+1;
		 }
		 if(i==4)
		 {
			 recv_state=3;
			 i=0;
		 }
	  }
	  else if(recv_state==3)
	  {
	     if(j<size*4)
	   {
		((uint8_t *)(dac_buffer))[j]=data;
		j=j+1;
	   }
	     if(j==size*4)
	   {
		recv_state=0;
		dac_buffer_complete=1;
		j=0;
	   }
	     if(j>=sizeof(dac_buffer))
	   {
		recv_state=0;
		dac_buffer_complete=0;
		j=0;
	   }
	  }
	  else if(recv_state==4)
	  {
		  sdr_setrxgain((int8_t)data);
		  recv_state=0;
	  }
}

/** Receive data on a tcp session */
static err_t tcp_recv_perf_traffic(void *arg, struct tcp_pcb *tpcb,
		struct pbuf *p, err_t err)
{
	struct pbuf *p_local=p;
	int i = 0;
	uint8_t* pdata=(uint8_t*)p_local->payload;
	for(i = 0;i<p_local->len;i++)
	{
		process_byte(pdata[i]);
	}
	tcp_recved(tpcb, p->tot_len);
	pbuf_free(p);
	return ERR_OK;
}

static err_t tcp_server_accept(void *arg, struct tcp_pcb *newpcb, err_t err)
{
	if ((err != ERR_OK) || (newpcb == NULL)) {
		return ERR_VAL;
	}
	/* Save connected client PCB */
	c_pcb = newpcb;
	/* setup callbacks for tcp rx connection */
	tcp_arg(c_pcb, NULL);
	tcp_recv(c_pcb, tcp_recv_perf_traffic);
	tcp_err(c_pcb, tcp_server_err);

	return ERR_OK;
}

void start_application()//size is in words(32bit)
{
	err_t err;
	struct tcp_pcb *pcb, *lpcb;

	/* Create Server PCB */
	pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
	if (!pcb) {
		xil_printf("TCP server: Error creating PCB. Out of Memory\r\n");
		return;
	}

	err = tcp_bind(pcb, IP_ADDR_ANY, CONN_PORT);
	if (err != ERR_OK) {
		xil_printf("TCP server: Unable to bind to port %d: "
				"err = %d\r\n" , CONN_PORT, err);
		tcp_close(pcb);
		return;
	}

	/* Set connection queue limit to 1 to serve
	 * one client at a time
	 */
	lpcb = tcp_listen_with_backlog(pcb,1);
	if (!lpcb) {
		xil_printf("TCP server: Out of memory while tcp_listen\r\n");
		tcp_close(pcb);
		return;
	}

	/* we do not need any arguments to callback functions */
	tcp_arg(lpcb, NULL);

	/* specify callback to use for incoming connections */
	tcp_accept(lpcb, tcp_server_accept);
	/* Wait for successful connection */
	usleep(10);
	finished = 1;
}

void prepare_tcp_data(uint32_t* buffer,uint32_t size)//size is in words(32bit)
{
	send_buf = buffer;
	buf_size = size;
	transfered_size = 0;
	finished = 0;
}
