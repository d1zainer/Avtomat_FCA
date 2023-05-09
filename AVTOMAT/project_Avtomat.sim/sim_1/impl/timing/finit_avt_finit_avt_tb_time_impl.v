`timescale 1 ps / 1 ps
// lib work
(* NotValidForBitStream *)
module fin_avt
   (clk,
    cnt,
    rst,
    light);
  input clk;
  input cnt;
  input rst;
  output [2:0]light;

  wire VCC_1;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cnt;
  wire cnt_IBUF;
  wire [2:0]light;
  wire \n_0_light_OBUF[0]_inst_i_1 ;
  wire \n_0_light_OBUF[1]_inst_i_1 ;
  wire \n_0_light_OBUF[2]_inst_i_1 ;
  wire [2:0]next_st;
  wire [2:0]present_st;
  wire rst;
  wire rst_IBUF;

initial begin
 $sdf_annotate("finit_avt_finit_avt_tb_time_impl.sdf",,,,"tool_control");
end
VCC VCC
       (.P(VCC_1));
BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
IBUF #(
    .CAPACITANCE("DONT_CARE"),
    .IBUF_DELAY_VALUE("0"),
    .IFD_DELAY_VALUE("AUTO")) 
     clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
IBUF #(
    .CAPACITANCE("DONT_CARE"),
    .IBUF_DELAY_VALUE("0"),
    .IFD_DELAY_VALUE("AUTO")) 
     cnt_IBUF_inst
       (.I(cnt),
        .O(cnt_IBUF));
OBUF #(
    .CAPACITANCE("DONT_CARE")) 
     \light_OBUF[0]_inst 
       (.I(\n_0_light_OBUF[0]_inst_i_1 ),
        .O(light[0]));
LUT2 #(
    .INIT(4'h8)) 
     \light_OBUF[0]_inst_i_1 
       (.I0(present_st[1]),
        .I1(present_st[0]),
        .O(\n_0_light_OBUF[0]_inst_i_1 ));
OBUF #(
    .CAPACITANCE("DONT_CARE")) 
     \light_OBUF[1]_inst 
       (.I(\n_0_light_OBUF[1]_inst_i_1 ),
        .O(light[1]));
LUT3 #(
    .INIT(8'h0E)) 
     \light_OBUF[1]_inst_i_1 
       (.I0(present_st[1]),
        .I1(present_st[2]),
        .I2(present_st[0]),
        .O(\n_0_light_OBUF[1]_inst_i_1 ));
OBUF #(
    .CAPACITANCE("DONT_CARE")) 
     \light_OBUF[2]_inst 
       (.I(\n_0_light_OBUF[2]_inst_i_1 ),
        .O(light[2]));
LUT2 #(
    .INIT(4'h2)) 
     \light_OBUF[2]_inst_i_1 
       (.I0(present_st[0]),
        .I1(present_st[1]),
        .O(\n_0_light_OBUF[2]_inst_i_1 ));
(* XILINX_LEGACY_PRIM = "FDC" *) 
   FDCE #(
    .INIT(1'b0)) 
     \present_st_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(VCC_1),
        .CLR(rst_IBUF),
        .D(next_st[0]),
        .Q(present_st[0]));
LUT4 #(
    .INIT(16'h0266)) 
     \present_st_reg[0]_i_1 
       (.I0(cnt_IBUF),
        .I1(present_st[0]),
        .I2(present_st[1]),
        .I3(present_st[2]),
        .O(next_st[0]));
(* XILINX_LEGACY_PRIM = "FDC" *) 
   FDCE #(
    .INIT(1'b0)) 
     \present_st_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(VCC_1),
        .CLR(rst_IBUF),
        .D(next_st[1]),
        .Q(present_st[1]));
LUT4 #(
    .INIT(16'h006A)) 
     \present_st_reg[1]_i_1 
       (.I0(present_st[1]),
        .I1(present_st[0]),
        .I2(cnt_IBUF),
        .I3(present_st[2]),
        .O(next_st[1]));
(* XILINX_LEGACY_PRIM = "FDC" *) 
   FDCE #(
    .INIT(1'b0)) 
     \present_st_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(VCC_1),
        .CLR(rst_IBUF),
        .D(next_st[2]),
        .Q(present_st[2]));
LUT4 #(
    .INIT(16'h2004)) 
     \present_st_reg[2]_i_1 
       (.I0(cnt_IBUF),
        .I1(present_st[2]),
        .I2(present_st[1]),
        .I3(present_st[0]),
        .O(next_st[2]));
IBUF #(
    .CAPACITANCE("DONT_CARE"),
    .IBUF_DELAY_VALUE("0"),
    .IFD_DELAY_VALUE("AUTO")) 
     rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
