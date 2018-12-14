// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module subconv_3x3_32_strid (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        weight_address0,
        weight_ce0,
        weight_q0,
        bias_address0,
        bias_ce0,
        bias_q0,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0
);

parameter    ap_ST_fsm_state1 = 23'd1;
parameter    ap_ST_fsm_state2 = 23'd2;
parameter    ap_ST_fsm_state3 = 23'd4;
parameter    ap_ST_fsm_state4 = 23'd8;
parameter    ap_ST_fsm_state5 = 23'd16;
parameter    ap_ST_fsm_state6 = 23'd32;
parameter    ap_ST_fsm_state7 = 23'd64;
parameter    ap_ST_fsm_state8 = 23'd128;
parameter    ap_ST_fsm_state9 = 23'd256;
parameter    ap_ST_fsm_state10 = 23'd512;
parameter    ap_ST_fsm_state11 = 23'd1024;
parameter    ap_ST_fsm_state12 = 23'd2048;
parameter    ap_ST_fsm_state13 = 23'd4096;
parameter    ap_ST_fsm_state14 = 23'd8192;
parameter    ap_ST_fsm_state15 = 23'd16384;
parameter    ap_ST_fsm_state16 = 23'd32768;
parameter    ap_ST_fsm_state17 = 23'd65536;
parameter    ap_ST_fsm_state18 = 23'd131072;
parameter    ap_ST_fsm_state19 = 23'd262144;
parameter    ap_ST_fsm_state20 = 23'd524288;
parameter    ap_ST_fsm_state21 = 23'd1048576;
parameter    ap_ST_fsm_state22 = 23'd2097152;
parameter    ap_ST_fsm_state23 = 23'd4194304;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] input_r_address0;
output   input_r_ce0;
input  [31:0] input_r_q0;
output  [7:0] weight_address0;
output   weight_ce0;
input  [31:0] weight_q0;
output  [4:0] bias_address0;
output   bias_ce0;
input  [31:0] bias_q0;
output  [12:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [31:0] output_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_r_ce0;
reg weight_ce0;
reg bias_ce0;
reg output_r_ce0;
reg output_r_we0;

(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] co_4_fu_202_p2;
reg   [4:0] co_4_reg_520;
wire    ap_CS_fsm_state2;
wire   [10:0] tmp_54_fu_245_p2;
reg   [10:0] tmp_54_reg_525;
wire   [0:0] exitcond4_fu_196_p2;
wire  signed [8:0] tmp_75_cast_fu_269_p1;
reg  signed [8:0] tmp_75_cast_reg_530;
wire   [9:0] tmp_58_fu_285_p2;
reg   [9:0] tmp_58_reg_535;
reg   [4:0] bias_addr_reg_540;
wire   [5:0] tmp_s_fu_297_p3;
reg   [5:0] tmp_s_reg_548;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond3_fu_291_p2;
wire   [13:0] tmp_60_fu_334_p2;
reg   [13:0] tmp_60_reg_553;
wire   [5:0] tmp_28_fu_346_p3;
reg   [5:0] tmp_28_reg_561;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond2_fu_340_p2;
wire   [4:0] h_4_fu_354_p2;
wire   [1:0] m_4_fu_366_p2;
reg   [1:0] m_4_reg_574;
wire    ap_CS_fsm_state5;
wire   [8:0] tmp_63_fu_387_p2;
reg   [8:0] tmp_63_reg_579;
wire   [0:0] exitcond1_fu_360_p2;
wire   [15:0] tmp_65_fu_437_p2;
reg   [15:0] tmp_65_reg_584;
wire   [13:0] tmp_61_fu_447_p2;
reg   [13:0] tmp_61_reg_589;
wire   [4:0] w_4_fu_452_p2;
reg   [4:0] w_4_reg_594;
wire   [1:0] n_4_fu_464_p2;
reg   [1:0] n_4_reg_602;
wire    ap_CS_fsm_state6;
wire   [0:0] exitcond_fu_458_p2;
reg   [31:0] weight_load_reg_617;
wire    ap_CS_fsm_state7;
reg   [31:0] input_load_reg_622;
wire   [31:0] grp_fu_192_p2;
reg   [31:0] tmp_36_reg_627;
wire    ap_CS_fsm_state11;
wire   [31:0] grp_fu_186_p2;
wire    ap_CS_fsm_state16;
reg   [31:0] bias_load_reg_637;
wire    ap_CS_fsm_state17;
reg   [31:0] result_reg_642;
wire    ap_CS_fsm_state22;
reg   [4:0] co_reg_105;
reg   [4:0] h_reg_116;
reg   [4:0] w_reg_128;
wire    ap_CS_fsm_state23;
reg   [31:0] sum_reg_140;
reg   [1:0] m_reg_152;
reg   [31:0] sum_1_reg_163;
reg   [1:0] n_reg_175;
wire   [63:0] tmp_fu_208_p1;
wire   [63:0] tmp_91_cast_fu_479_p1;
wire   [63:0] tmp_92_cast_fu_508_p1;
wire   [63:0] tmp_83_cast_fu_513_p1;
reg   [31:0] grp_fu_186_p0;
reg   [31:0] grp_fu_186_p1;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state8;
wire   [9:0] tmp_52_fu_217_p3;
wire   [5:0] tmp_53_fu_229_p3;
wire   [10:0] p_shl4_cast_fu_241_p1;
wire   [10:0] p_shl3_cast_fu_225_p1;
wire   [6:0] tmp_55_fu_251_p3;
wire   [7:0] p_shl2_cast_fu_259_p1;
wire   [7:0] tmp_cast_fu_213_p1;
wire   [7:0] tmp_56_fu_263_p2;
wire   [8:0] tmp_57_fu_273_p3;
wire   [9:0] p_shl4_cast1_fu_237_p1;
wire   [9:0] p_shl_cast_fu_281_p1;
wire   [9:0] tmp_27_cast_fu_305_p1;
wire   [9:0] tmp_59_fu_309_p2;
wire   [10:0] tmp_39_fu_322_p3;
wire   [13:0] p_shl6_cast_fu_330_p1;
wire   [13:0] p_shl5_cast_fu_314_p3;
wire   [8:0] tmp_30_cast_fu_372_p1;
wire   [8:0] tmp_62_fu_376_p2;
wire   [8:0] tmp_40_fu_381_p2;
wire   [1:0] tmp1_fu_393_p2;
wire  signed [5:0] tmp1_cast_fu_399_p1;
wire   [5:0] tmp_31_fu_403_p2;
wire   [10:0] tmp_32_cast_fu_408_p1;
wire   [10:0] tmp_64_fu_412_p2;
wire   [11:0] tmp_41_fu_425_p3;
wire   [15:0] p_shl8_cast_fu_433_p1;
wire   [15:0] p_shl7_cast_fu_417_p3;
wire   [13:0] tmp_29_cast_fu_443_p1;
wire   [8:0] tmp_33_cast_fu_470_p1;
wire   [8:0] tmp_66_fu_474_p2;
wire   [1:0] tmp2_fu_484_p2;
wire  signed [5:0] tmp2_cast_fu_490_p1;
wire   [5:0] tmp_34_fu_494_p2;
wire   [15:0] tmp_35_cast_fu_499_p1;
wire   [15:0] tmp_67_fu_503_p2;
reg   [22:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 23'd1;
end

ShuffleNetV2_faddbkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ShuffleNetV2_faddbkb_x_U15(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_186_p0),
    .din1(grp_fu_186_p1),
    .ce(1'b1),
    .dout(grp_fu_186_p2)
);

ShuffleNetV2_fmulcud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ShuffleNetV2_fmulcud_x_U16(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_load_reg_617),
    .din1(input_load_reg_622),
    .ce(1'b1),
    .dout(grp_fu_192_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond3_fu_291_p2 == 1'd1))) begin
        co_reg_105 <= co_4_reg_520;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_105 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_196_p2 == 1'd0))) begin
        h_reg_116 <= 5'd1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond2_fu_340_p2 == 1'd1))) begin
        h_reg_116 <= h_4_fu_354_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'd1 == exitcond_fu_458_p2))) begin
        m_reg_152 <= m_4_reg_574;
    end else if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond2_fu_340_p2))) begin
        m_reg_152 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond1_fu_360_p2))) begin
        n_reg_175 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        n_reg_175 <= n_4_reg_602;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond1_fu_360_p2))) begin
        sum_1_reg_163 <= sum_reg_140;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        sum_1_reg_163 <= grp_fu_186_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'd1 == exitcond_fu_458_p2))) begin
        sum_reg_140 <= sum_1_reg_163;
    end else if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond2_fu_340_p2))) begin
        sum_reg_140 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond3_fu_291_p2))) begin
        w_reg_128 <= 5'd1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        w_reg_128 <= w_4_reg_594;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_196_p2 == 1'd0))) begin
        bias_addr_reg_540 <= tmp_fu_208_p1;
        tmp_54_reg_525[10 : 1] <= tmp_54_fu_245_p2[10 : 1];
        tmp_58_reg_535[9 : 1] <= tmp_58_fu_285_p2[9 : 1];
        tmp_75_cast_reg_530 <= tmp_75_cast_fu_269_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        bias_load_reg_637 <= bias_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_4_reg_520 <= co_4_fu_202_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        input_load_reg_622 <= input_r_q0;
        weight_load_reg_617 <= weight_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m_4_reg_574 <= m_4_fu_366_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        n_4_reg_602 <= n_4_fu_464_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        result_reg_642 <= grp_fu_186_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond2_fu_340_p2))) begin
        tmp_28_reg_561[5 : 1] <= tmp_28_fu_346_p3[5 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        tmp_36_reg_627 <= grp_fu_192_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond3_fu_291_p2))) begin
        tmp_60_reg_553[13 : 1] <= tmp_60_fu_334_p2[13 : 1];
        tmp_s_reg_548[5 : 1] <= tmp_s_fu_297_p3[5 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd1 == exitcond1_fu_360_p2))) begin
        tmp_61_reg_589 <= tmp_61_fu_447_p2;
        w_4_reg_594 <= w_4_fu_452_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond1_fu_360_p2))) begin
        tmp_63_reg_579 <= tmp_63_fu_387_p2;
        tmp_65_reg_584[15 : 1] <= tmp_65_fu_437_p2[15 : 1];
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_196_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_196_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        bias_ce0 = 1'b1;
    end else begin
        bias_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_186_p0 = sum_reg_140;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_186_p0 = sum_1_reg_163;
    end else begin
        grp_fu_186_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_186_p1 = bias_load_reg_637;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_186_p1 = tmp_36_reg_627;
    end else begin
        grp_fu_186_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        weight_ce0 = 1'b1;
    end else begin
        weight_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_196_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond3_fu_291_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond2_fu_340_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond1_fu_360_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (1'd1 == exitcond_fu_458_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign bias_address0 = bias_addr_reg_540;

assign co_4_fu_202_p2 = (co_reg_105 + 5'd1);

assign exitcond1_fu_360_p2 = ((m_reg_152 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond2_fu_340_p2 = ((w_reg_128 == 5'd17) ? 1'b1 : 1'b0);

assign exitcond3_fu_291_p2 = ((h_reg_116 == 5'd17) ? 1'b1 : 1'b0);

assign exitcond4_fu_196_p2 = ((co_reg_105 == 5'd24) ? 1'b1 : 1'b0);

assign exitcond_fu_458_p2 = ((n_reg_175 == 2'd3) ? 1'b1 : 1'b0);

assign h_4_fu_354_p2 = (h_reg_116 + 5'd1);

assign input_r_address0 = tmp_92_cast_fu_508_p1;

assign m_4_fu_366_p2 = (m_reg_152 + 2'd1);

assign n_4_fu_464_p2 = (n_reg_175 + 2'd1);

assign output_r_address0 = tmp_83_cast_fu_513_p1;

assign output_r_d0 = result_reg_642;

assign p_shl2_cast_fu_259_p1 = tmp_55_fu_251_p3;

assign p_shl3_cast_fu_225_p1 = tmp_52_fu_217_p3;

assign p_shl4_cast1_fu_237_p1 = tmp_53_fu_229_p3;

assign p_shl4_cast_fu_241_p1 = tmp_53_fu_229_p3;

assign p_shl5_cast_fu_314_p3 = {{tmp_59_fu_309_p2}, {4'd0}};

assign p_shl6_cast_fu_330_p1 = tmp_39_fu_322_p3;

assign p_shl7_cast_fu_417_p3 = {{tmp_64_fu_412_p2}, {5'd0}};

assign p_shl8_cast_fu_433_p1 = tmp_41_fu_425_p3;

assign p_shl_cast_fu_281_p1 = tmp_57_fu_273_p3;

assign tmp1_cast_fu_399_p1 = $signed(tmp1_fu_393_p2);

assign tmp1_fu_393_p2 = (m_reg_152 ^ 2'd2);

assign tmp2_cast_fu_490_p1 = $signed(tmp2_fu_484_p2);

assign tmp2_fu_484_p2 = (n_reg_175 ^ 2'd2);

assign tmp_27_cast_fu_305_p1 = h_reg_116;

assign tmp_28_fu_346_p3 = {{w_reg_128}, {1'd0}};

assign tmp_29_cast_fu_443_p1 = w_reg_128;

assign tmp_30_cast_fu_372_p1 = m_reg_152;

assign tmp_31_fu_403_p2 = ($signed(tmp_s_reg_548) + $signed(tmp1_cast_fu_399_p1));

assign tmp_32_cast_fu_408_p1 = tmp_31_fu_403_p2;

assign tmp_33_cast_fu_470_p1 = n_reg_175;

assign tmp_34_fu_494_p2 = ($signed(tmp_28_reg_561) + $signed(tmp2_cast_fu_490_p1));

assign tmp_35_cast_fu_499_p1 = tmp_34_fu_494_p2;

assign tmp_39_fu_322_p3 = {{tmp_59_fu_309_p2}, {1'd0}};

assign tmp_40_fu_381_p2 = tmp_62_fu_376_p2 << 9'd2;

assign tmp_41_fu_425_p3 = {{tmp_64_fu_412_p2}, {1'd0}};

assign tmp_52_fu_217_p3 = {{co_reg_105}, {5'd0}};

assign tmp_53_fu_229_p3 = {{co_reg_105}, {1'd0}};

assign tmp_54_fu_245_p2 = (p_shl4_cast_fu_241_p1 + p_shl3_cast_fu_225_p1);

assign tmp_55_fu_251_p3 = {{co_reg_105}, {2'd0}};

assign tmp_56_fu_263_p2 = (p_shl2_cast_fu_259_p1 - tmp_cast_fu_213_p1);

assign tmp_57_fu_273_p3 = {{co_reg_105}, {4'd0}};

assign tmp_58_fu_285_p2 = (p_shl4_cast1_fu_237_p1 + p_shl_cast_fu_281_p1);

assign tmp_59_fu_309_p2 = (tmp_58_reg_535 + tmp_27_cast_fu_305_p1);

assign tmp_60_fu_334_p2 = (p_shl6_cast_fu_330_p1 + p_shl5_cast_fu_314_p3);

assign tmp_61_fu_447_p2 = (tmp_60_reg_553 + tmp_29_cast_fu_443_p1);

assign tmp_62_fu_376_p2 = ($signed(tmp_75_cast_reg_530) + $signed(tmp_30_cast_fu_372_p1));

assign tmp_63_fu_387_p2 = (tmp_40_fu_381_p2 - tmp_62_fu_376_p2);

assign tmp_64_fu_412_p2 = (tmp_54_reg_525 + tmp_32_cast_fu_408_p1);

assign tmp_65_fu_437_p2 = (p_shl8_cast_fu_433_p1 + p_shl7_cast_fu_417_p3);

assign tmp_66_fu_474_p2 = (tmp_63_reg_579 + tmp_33_cast_fu_470_p1);

assign tmp_67_fu_503_p2 = (tmp_65_reg_584 + tmp_35_cast_fu_499_p1);

assign tmp_75_cast_fu_269_p1 = $signed(tmp_56_fu_263_p2);

assign tmp_83_cast_fu_513_p1 = tmp_61_reg_589;

assign tmp_91_cast_fu_479_p1 = tmp_66_fu_474_p2;

assign tmp_92_cast_fu_508_p1 = tmp_67_fu_503_p2;

assign tmp_cast_fu_213_p1 = co_reg_105;

assign tmp_fu_208_p1 = co_reg_105;

assign tmp_s_fu_297_p3 = {{h_reg_116}, {1'd0}};

assign w_4_fu_452_p2 = (w_reg_128 + 5'd1);

assign weight_address0 = tmp_91_cast_fu_479_p1;

always @ (posedge ap_clk) begin
    tmp_54_reg_525[0] <= 1'b0;
    tmp_58_reg_535[0] <= 1'b0;
    tmp_s_reg_548[0] <= 1'b0;
    tmp_60_reg_553[0] <= 1'b0;
    tmp_28_reg_561[0] <= 1'b0;
    tmp_65_reg_584[0] <= 1'b0;
end

endmodule //subconv_3x3_32_strid
