// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon May 18 08:02:13 2020
// Host        : ayman-HP-ENVY-15 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ayman/Vivado_Projects/D2DDR/D2DDR.srcs/sources_1/bd/design_1/ip/design_1_counter_255_0_0/design_1_counter_255_0_0_sim_netlist.v
// Design      : design_1_counter_255_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_counter_255_0_0,counter_255,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "counter_255,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_counter_255_0_0
   (clk,
    rst,
    Tready,
    Tvalid,
    Tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF interface_axis, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 interface_axis TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME interface_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) input Tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 interface_axis TVALID" *) output Tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 interface_axis TDATA" *) output [7:0]Tdata;

  wire [7:0]Tdata;
  wire Tready;
  wire Tvalid;
  wire clk;
  wire rst;

  design_1_counter_255_0_0_counter_255 U0
       (.Tready(Tready),
        .Tvalid(Tvalid),
        .clk(clk),
        .out(Tdata),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "counter_255" *) 
module design_1_counter_255_0_0_counter_255
   (Tvalid,
    out,
    Tready,
    clk,
    rst);
  output Tvalid;
  output [7:0]out;
  input Tready;
  input clk;
  input rst;

  wire Tready;
  wire Tvalid;
  wire Tvalid_i_1_n_0;
  wire clk;
  wire [7:0]count;
  wire \count[7]_i_2_n_0 ;
  wire [7:0]out;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    Tvalid_i_1
       (.I0(rst),
        .O(Tvalid_i_1_n_0));
  FDCE Tvalid_reg
       (.C(clk),
        .CE(Tready),
        .CLR(Tvalid_i_1_n_0),
        .D(Tready),
        .Q(Tvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(out[0]),
        .O(count[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .O(count[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .O(count[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[3]),
        .O(count[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[3]),
        .I4(out[4]),
        .O(count[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(out[3]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[4]),
        .I5(out[5]),
        .O(count[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[6]_i_1 
       (.I0(\count[7]_i_2_n_0 ),
        .I1(out[6]),
        .O(count[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[7]_i_1 
       (.I0(\count[7]_i_2_n_0 ),
        .I1(out[6]),
        .I2(out[7]),
        .O(count[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count[7]_i_2 
       (.I0(out[5]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(out[4]),
        .O(\count[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(Tready),
        .CLR(Tvalid_i_1_n_0),
        .D(count[0]),
        .Q(out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(Tready),
        .CLR(Tvalid_i_1_n_0),
        .D(count[1]),
        .Q(out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(Tready),
        .CLR(Tvalid_i_1_n_0),
        .D(count[2]),
        .Q(out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(Tready),
        .CLR(Tvalid_i_1_n_0),
        .D(count[3]),
        .Q(out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(Tready),
        .CLR(Tvalid_i_1_n_0),
        .D(count[4]),
        .Q(out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(Tready),
        .CLR(Tvalid_i_1_n_0),
        .D(count[5]),
        .Q(out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(Tready),
        .CLR(Tvalid_i_1_n_0),
        .D(count[6]),
        .Q(out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(Tready),
        .CLR(Tvalid_i_1_n_0),
        .D(count[7]),
        .Q(out[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
