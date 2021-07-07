// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon May 18 08:02:13 2020
// Host        : ayman-HP-ENVY-15 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ayman/Vivado_Projects/D2DDR/D2DDR.srcs/sources_1/bd/design_1/ip/design_1_counter_255_0_0/design_1_counter_255_0_0_stub.v
// Design      : design_1_counter_255_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "counter_255,Vivado 2017.4" *)
module design_1_counter_255_0_0(clk, rst, Tready, Tvalid, Tdata)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,Tready,Tvalid,Tdata[7:0]" */;
  input clk;
  input rst;
  input Tready;
  output Tvalid;
  output [7:0]Tdata;
endmodule
