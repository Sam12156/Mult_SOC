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
#include <stdint.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_io.h"

/* ---------------- sc_fifo_axi register map ---------------- */
#define FIFO_BASE_ADDR      (0x43C10000)
#define FPGA_REV_REG        (FIFO_BASE_ADDR + 0x00)   /* RO */
#define FIFO_RST_REG        (FIFO_BASE_ADDR + 0x04)   /* WO */
#define WR_DATA_REG         (FIFO_BASE_ADDR + 0x08)   /* WO */
#define RD_REQ_REG          (FIFO_BASE_ADDR + 0x0C)   /* WO */
#define RD_DATA_REG         (FIFO_BASE_ADDR + 0x10)   /* RO */
#define STATUS_REG          (FIFO_BASE_ADDR + 0x14)   /* RO */
#define DATA_COUNT_REG      (FIFO_BASE_ADDR + 0x18)   /* RO */
#define CONFIG_REG          (FIFO_BASE_ADDR + 0x1C)   /* RO */
#define THRESHOLD_REG       (FIFO_BASE_ADDR + 0x20)   /* RO */

/* STATUS_REG bits */
#define STATUS_EMPTY        (1u << 0)
#define STATUS_FULL         (1u << 1)
#define STATUS_ALMOST_EMPTY (1u << 2)
#define STATUS_ALMOST_FULL  (1u << 3)
#define STATUS_RD_VALID     (1u << 4)

#define POLL_LIMIT          1000

/* Print STATUS_REG and DATA_COUNT_REG in a readable form */
static void print_status(const char *label)
{
    uint32_t status = Xil_In32(STATUS_REG);
    uint32_t count  = Xil_In32(DATA_COUNT_REG);

    xil_printf("%s: STATUS = 0x%02x [RD_VALID=%d A_FULL=%d A_EMPTY=%d FULL=%d EMPTY=%d]  COUNT = %d\n",
               label, status,
               (status & STATUS_RD_VALID)     ? 1 : 0,
               (status & STATUS_ALMOST_FULL)  ? 1 : 0,
               (status & STATUS_ALMOST_EMPTY) ? 1 : 0,
               (status & STATUS_FULL)         ? 1 : 0,
               (status & STATUS_EMPTY)        ? 1 : 0,
               count);
}

/* Push one word into the FIFO */
static void fifo_push(uint16_t data)
{
    Xil_Out32(WR_DATA_REG, data);
}

/* Pop one word: request, poll RD_VALID, then read RD_DATA.
   Returns 1 on success, 0 if RD_VALID never set (FIFO was empty). */
static int fifo_pop(uint16_t *data)
{
    Xil_Out32(RD_REQ_REG, 1);

    for (int i = 0; i < POLL_LIMIT; i++) {
        if (Xil_In32(STATUS_REG) & STATUS_RD_VALID) {
            *data = (uint16_t)Xil_In32(RD_DATA_REG);
            return 1;
        }
    }
    return 0;
}

int main()
{
    init_platform();

    xil_printf("\nECE 520/L - Custom AXI FIFO IP Lab - Sammy Hamed\n");
    xil_printf("Start of FIFO Test\n\n");

    //IP info
    uint32_t rev    = Xil_In32(FPGA_REV_REG);
    uint32_t config = Xil_In32(CONFIG_REG);
    uint32_t thresh = Xil_In32(THRESHOLD_REG);

    uint32_t read_latency = (config >> 24) & 0xF;
    uint32_t depth        = (config >> 8)  & 0xFFFF;
    uint32_t width        =  config        & 0xFF;
    uint32_t af_thresh    = (thresh >> 16) & 0xFFFF;
    uint32_t ae_thresh    =  thresh        & 0xFFFF;

    xil_printf("FPGA_REV_REG  = 0x%08x\n", rev);
    xil_printf("CONFIG_REG    = 0x%08x (READ_LATENCY=%d, DEPTH=%d, WIDTH=%d)\n",
               config, read_latency, depth, width);
    xil_printf("THRESHOLD_REG = 0x%08x (ALMOST_FULL=%d, ALMOST_EMPTY=%d)\n\n",
               thresh, af_thresh, ae_thresh);

    // Start from a known state
    Xil_Out32(FIFO_RST_REG, 1);
    print_status("After reset\n");

    //Fill the FIFO
    xil_printf("\nPushing %d words:\n", depth);
    for (uint32_t i = 0; i < depth; i++) {
        uint16_t data = (uint16_t)((i + 1) * 0x0101);   /* 0x0101, 0x0202, ... */
        fifo_push(data);
        xil_printf("Pushed: 0x%04x  (count = %d)\n", data, Xil_In32(DATA_COUNT_REG));
    }
    print_status("\nAfter filling");

    //Push while full
    fifo_push(0xBEEF);
    print_status("After push while full");

    // Empty the FIFO and check output
    xil_printf("\nPopping %d words:\n", depth);
    int errors = 0;
    for (uint32_t i = 0; i < depth; i++) {
        uint16_t expected = (uint16_t)((i + 1) * 0x0101);
        uint16_t data;

        if (!fifo_pop(&data)) {
            xil_printf("Pop %d: timed out waiting for RD_VALID\n", i);
            errors++;
            continue;
        }
        xil_printf("Popped: 0x%04x  expected 0x%04x  %s\n",
                   data, expected, (data == expected) ? "PASS" : "FAIL");
        if (data != expected)
            errors++;
    }
    print_status("\nAfter emptying");

    // Pop while empty: RD_VALID should stay 0
    uint16_t dummy;
    if (fifo_pop(&dummy)) {
        xil_printf("Pop while empty: FAIL (got 0x%04x)\n", dummy);
        errors++;
    } else {
        xil_printf("Pop while empty: PASS (RD_VALID stayed 0)\n");
    }

    //Software reset clears the FIFO
    for (int i = 0; i < 5; i++)
        fifo_push((uint16_t)(0x1000 + i));
    print_status("\nAfter 5 pushes");
    Xil_Out32(FIFO_RST_REG, 1);
    print_status("After FIFO_RST");
    if (Xil_In32(DATA_COUNT_REG) != 0) {
        xil_printf("FIFO_RST: FAIL\n");
        errors++;
    }

    xil_printf("\nFIFO Test finished with %d error(s)\n", errors);
    xil_printf("End of FIFO Test\n");

    cleanup_platform();
    return 0;
}
