/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "ps7_init.h"
#include "xil_io.h"
#include "xscugic.h"
#include "xparameters.h"

XScuGic InterruptController;
static XScuGic_Config *GicConfig;
u32 global_frame_counter = 0;

int InitializeDMA_S2MM (void){
	unsigned int tmpVal;
	//MM2S_DMACR.RS = 1
	tmpVal = Xil_In32(XPAR_AXI_DMA_0_BASEADDR + 0x30);
	tmpVal = tmpVal | 0x1001;
	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR + 0x30, tmpVal);
	tmpVal = Xil_In32(XPAR_AXI_DMA_0_BASEADDR + 0x30);
	xil_printf("value of dma mm2s control register: %x\n\r", tmpVal);

	return 0;
}

int setup_int_sys(XScuGic *XScuGicInstancePtr){
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,(Xil_ExceptionHandler) XScuGic_InterruptHandler, XScuGicInstancePtr);
	Xil_ExceptionEnable();
	return XST_SUCCESS;
}


void InterruptHandler (void){
	u32 tmpvalue;
	tmpvalue = Xil_In32(XPAR_AXI_DMA_0_BASEADDR + 0x34);
	tmpvalue = tmpvalue | 0x1000;
	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR + 0x34, tmpvalue);
	global_frame_counter++;
	if (global_frame_counter > 10000000){
		xil_printf("Frame number: %d \n\r", global_frame_counter);
		return;
	}

	dma_transfer(0xa000000,1048576);
}

int init_intr_sys(deviceID){
	int Status;
	GicConfig = XScuGic_LookupConfig(deviceID);
	if (NULL == GicConfig){
		return XST_FAILURE;
	}
	Status = XScuGic_CfgInitialize(&InterruptController, GicConfig, GicConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS){
		return XST_FAILURE;
	}

	Status = XScuGic_Connect (&InterruptController, XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR,
							  (Xil_ExceptionHandler) InterruptHandler, NULL);
	if (Status != XST_SUCCESS){
		return XST_FAILURE;
	}

	XScuGic_Enable (&InterruptController, XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR);
	return XST_SUCCESS;
}

void dma_transfer(unsigned int dstad, unsigned int len){
	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR + 0x48, dstad);
	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR + 0x58, len);
}

int main()
{
    init_platform();

    ps7_post_config();

    xil_printf("Initializing DMA \n\r");
    InitializeDMA_S2MM();
    xil_printf("enabling interrupt..\n\r");
    init_intr_sys(XPAR_PS7_SCUGIC_0_DEVICE_ID);

    xil_printf("performing dma transfer.. \n\r");

    dma_transfer(0xa000000,1048576);
    xil_printf("DONE.. \n\r");
    return 0;
}
