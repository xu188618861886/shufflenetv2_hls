// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "shuffle_24_l_p.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic shuffle_24_l_p::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic shuffle_24_l_p::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> shuffle_24_l_p::ap_ST_fsm_state1 = "1";
const sc_lv<6> shuffle_24_l_p::ap_ST_fsm_state2 = "10";
const sc_lv<6> shuffle_24_l_p::ap_ST_fsm_state3 = "100";
const sc_lv<6> shuffle_24_l_p::ap_ST_fsm_state4 = "1000";
const sc_lv<6> shuffle_24_l_p::ap_ST_fsm_state5 = "10000";
const sc_lv<6> shuffle_24_l_p::ap_ST_fsm_state6 = "100000";
const sc_lv<32> shuffle_24_l_p::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> shuffle_24_l_p::ap_const_lv32_1 = "1";
const sc_lv<1> shuffle_24_l_p::ap_const_lv1_0 = "0";
const sc_lv<32> shuffle_24_l_p::ap_const_lv32_2 = "10";
const sc_lv<32> shuffle_24_l_p::ap_const_lv32_3 = "11";
const sc_lv<32> shuffle_24_l_p::ap_const_lv32_4 = "100";
const sc_lv<6> shuffle_24_l_p::ap_const_lv6_0 = "000000";
const sc_lv<1> shuffle_24_l_p::ap_const_lv1_1 = "1";
const sc_lv<5> shuffle_24_l_p::ap_const_lv5_0 = "00000";
const sc_lv<32> shuffle_24_l_p::ap_const_lv32_5 = "101";
const sc_lv<6> shuffle_24_l_p::ap_const_lv6_30 = "110000";
const sc_lv<6> shuffle_24_l_p::ap_const_lv6_1 = "1";
const sc_lv<4> shuffle_24_l_p::ap_const_lv4_0 = "0000";
const sc_lv<5> shuffle_24_l_p::ap_const_lv5_12 = "10010";
const sc_lv<5> shuffle_24_l_p::ap_const_lv5_1 = "1";
const bool shuffle_24_l_p::ap_const_boolean_1 = true;

shuffle_24_l_p::shuffle_24_l_p(sc_module_name name) : sc_module(name), mVcdFile(0) {
    ShuffleNetV2_mux_jbC_x_U107 = new ShuffleNetV2_mux_jbC<1,1,8,8,8,8,8,8,8,8,3,8>("ShuffleNetV2_mux_jbC_x_U107");
    ShuffleNetV2_mux_jbC_x_U107->din1(buffer1_1_24_16x16_p_7_q0);
    ShuffleNetV2_mux_jbC_x_U107->din2(buffer1_1_24_16x16_p_6_q0);
    ShuffleNetV2_mux_jbC_x_U107->din3(buffer1_1_24_16x16_p_5_q0);
    ShuffleNetV2_mux_jbC_x_U107->din4(buffer1_1_24_16x16_p_4_q0);
    ShuffleNetV2_mux_jbC_x_U107->din5(buffer1_1_24_16x16_p_3_q0);
    ShuffleNetV2_mux_jbC_x_U107->din6(buffer1_1_24_16x16_p_2_q0);
    ShuffleNetV2_mux_jbC_x_U107->din7(buffer1_1_24_16x16_p_1_q0);
    ShuffleNetV2_mux_jbC_x_U107->din8(buffer1_1_24_16x16_p_q0);
    ShuffleNetV2_mux_jbC_x_U107->din9(arrayNo_reg_475);
    ShuffleNetV2_mux_jbC_x_U107->dout(tmp_fu_433_p10);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond3_fu_217_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond3_fu_217_p2 );

    SC_METHOD(thread_buffer1_1_24_16x16_p_1_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_651_cast_fu_421_p1 );

    SC_METHOD(thread_buffer1_1_24_16x16_p_1_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_buffer1_1_24_16x16_p_2_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_651_cast_fu_421_p1 );

    SC_METHOD(thread_buffer1_1_24_16x16_p_2_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_buffer1_1_24_16x16_p_3_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_651_cast_fu_421_p1 );

    SC_METHOD(thread_buffer1_1_24_16x16_p_3_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_buffer1_1_24_16x16_p_4_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_651_cast_fu_421_p1 );

    SC_METHOD(thread_buffer1_1_24_16x16_p_4_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_buffer1_1_24_16x16_p_5_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_651_cast_fu_421_p1 );

    SC_METHOD(thread_buffer1_1_24_16x16_p_5_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_buffer1_1_24_16x16_p_6_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_651_cast_fu_421_p1 );

    SC_METHOD(thread_buffer1_1_24_16x16_p_6_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_buffer1_1_24_16x16_p_7_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_651_cast_fu_421_p1 );

    SC_METHOD(thread_buffer1_1_24_16x16_p_7_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_buffer1_1_24_16x16_p_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_651_cast_fu_421_p1 );

    SC_METHOD(thread_buffer1_1_24_16x16_p_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_co_33_fu_223_p2);
    sensitive << ( co_reg_180 );

    SC_METHOD(thread_exitcond2_fu_309_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( h_reg_191 );

    SC_METHOD(thread_exitcond3_fu_217_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( co_reg_180 );

    SC_METHOD(thread_exitcond_fu_391_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( w_reg_202 );

    SC_METHOD(thread_h_29_fu_315_p2);
    sensitive << ( h_reg_191 );

    SC_METHOD(thread_output_V_address0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_650_cast_fu_454_p1 );

    SC_METHOD(thread_output_V_ce0);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_output_V_d0);
    sensitive << ( tmp_reg_556 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_output_V_we0);
    sensitive << ( tmp_542_reg_458 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_p_shl1_cast_fu_299_p1);
    sensitive << ( tmp_519_fu_291_p3 );

    SC_METHOD(thread_p_shl2_cast_fu_237_p1);
    sensitive << ( tmp_s_fu_229_p3 );

    SC_METHOD(thread_p_shl3_cast_fu_249_p1);
    sensitive << ( tmp_515_fu_241_p3 );

    SC_METHOD(thread_p_shl4_cast_fu_365_p3);
    sensitive << ( tmp_523_fu_360_p2 );

    SC_METHOD(thread_p_shl5_cast_fu_381_p1);
    sensitive << ( tmp_544_fu_373_p3 );

    SC_METHOD(thread_p_shl6_cast_fu_334_p3);
    sensitive << ( tmp_521_fu_329_p2 );

    SC_METHOD(thread_p_shl7_cast_fu_350_p1);
    sensitive << ( tmp_543_fu_342_p3 );

    SC_METHOD(thread_p_shl_cast_fu_287_p1);
    sensitive << ( tmp_518_fu_279_p3 );

    SC_METHOD(thread_tmp_240_cast9_fu_321_p1);
    sensitive << ( h_reg_191 );

    SC_METHOD(thread_tmp_240_cast_fu_325_p1);
    sensitive << ( h_reg_191 );

    SC_METHOD(thread_tmp_241_cast8_fu_403_p1);
    sensitive << ( w_reg_202 );

    SC_METHOD(thread_tmp_241_cast_fu_407_p1);
    sensitive << ( w_reg_202 );

    SC_METHOD(thread_tmp_515_fu_241_p3);
    sensitive << ( co_reg_180 );

    SC_METHOD(thread_tmp_516_fu_253_p2);
    sensitive << ( p_shl3_cast_fu_249_p1 );
    sensitive << ( p_shl2_cast_fu_237_p1 );

    SC_METHOD(thread_tmp_517_fu_269_p4);
    sensitive << ( co_reg_180 );

    SC_METHOD(thread_tmp_518_fu_279_p3);
    sensitive << ( tmp_517_fu_269_p4 );

    SC_METHOD(thread_tmp_519_fu_291_p3);
    sensitive << ( tmp_517_fu_269_p4 );

    SC_METHOD(thread_tmp_520_fu_303_p2);
    sensitive << ( p_shl1_cast_fu_299_p1 );
    sensitive << ( p_shl_cast_fu_287_p1 );

    SC_METHOD(thread_tmp_521_fu_329_p2);
    sensitive << ( tmp_516_reg_470 );
    sensitive << ( tmp_240_cast_fu_325_p1 );

    SC_METHOD(thread_tmp_522_fu_354_p2);
    sensitive << ( p_shl6_cast_fu_334_p3 );
    sensitive << ( p_shl7_cast_fu_350_p1 );

    SC_METHOD(thread_tmp_523_fu_360_p2);
    sensitive << ( tmp_520_reg_480 );
    sensitive << ( tmp_240_cast9_fu_321_p1 );

    SC_METHOD(thread_tmp_524_fu_385_p2);
    sensitive << ( p_shl4_cast_fu_365_p3 );
    sensitive << ( p_shl5_cast_fu_381_p1 );

    SC_METHOD(thread_tmp_525_fu_411_p2);
    sensitive << ( tmp_522_reg_493 );
    sensitive << ( tmp_241_cast_fu_407_p1 );

    SC_METHOD(thread_tmp_526_fu_416_p2);
    sensitive << ( tmp_524_reg_498 );
    sensitive << ( tmp_241_cast8_fu_403_p1 );

    SC_METHOD(thread_tmp_542_fu_213_p1);
    sensitive << ( co_reg_180 );

    SC_METHOD(thread_tmp_543_fu_342_p3);
    sensitive << ( tmp_521_fu_329_p2 );

    SC_METHOD(thread_tmp_544_fu_373_p3);
    sensitive << ( tmp_523_fu_360_p2 );

    SC_METHOD(thread_tmp_650_cast_fu_454_p1);
    sensitive << ( tmp_525_reg_511 );

    SC_METHOD(thread_tmp_651_cast_fu_421_p1);
    sensitive << ( tmp_526_fu_416_p2 );

    SC_METHOD(thread_tmp_s_fu_229_p3);
    sensitive << ( co_reg_180 );

    SC_METHOD(thread_w_33_fu_397_p2);
    sensitive << ( w_reg_202 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( tmp_542_reg_458 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond3_fu_217_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond2_fu_309_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_391_p2 );

    ap_CS_fsm = "000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "shuffle_24_l_p_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, output_V_address0, "(port)output_V_address0");
    sc_trace(mVcdFile, output_V_ce0, "(port)output_V_ce0");
    sc_trace(mVcdFile, output_V_we0, "(port)output_V_we0");
    sc_trace(mVcdFile, output_V_d0, "(port)output_V_d0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_7_address0, "(port)buffer1_1_24_16x16_p_7_address0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_7_ce0, "(port)buffer1_1_24_16x16_p_7_ce0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_7_q0, "(port)buffer1_1_24_16x16_p_7_q0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_6_address0, "(port)buffer1_1_24_16x16_p_6_address0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_6_ce0, "(port)buffer1_1_24_16x16_p_6_ce0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_6_q0, "(port)buffer1_1_24_16x16_p_6_q0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_5_address0, "(port)buffer1_1_24_16x16_p_5_address0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_5_ce0, "(port)buffer1_1_24_16x16_p_5_ce0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_5_q0, "(port)buffer1_1_24_16x16_p_5_q0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_4_address0, "(port)buffer1_1_24_16x16_p_4_address0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_4_ce0, "(port)buffer1_1_24_16x16_p_4_ce0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_4_q0, "(port)buffer1_1_24_16x16_p_4_q0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_3_address0, "(port)buffer1_1_24_16x16_p_3_address0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_3_ce0, "(port)buffer1_1_24_16x16_p_3_ce0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_3_q0, "(port)buffer1_1_24_16x16_p_3_q0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_2_address0, "(port)buffer1_1_24_16x16_p_2_address0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_2_ce0, "(port)buffer1_1_24_16x16_p_2_ce0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_2_q0, "(port)buffer1_1_24_16x16_p_2_q0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_1_address0, "(port)buffer1_1_24_16x16_p_1_address0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_1_ce0, "(port)buffer1_1_24_16x16_p_1_ce0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_1_q0, "(port)buffer1_1_24_16x16_p_1_q0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_address0, "(port)buffer1_1_24_16x16_p_address0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_ce0, "(port)buffer1_1_24_16x16_p_ce0");
    sc_trace(mVcdFile, buffer1_1_24_16x16_p_q0, "(port)buffer1_1_24_16x16_p_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, tmp_542_fu_213_p1, "tmp_542_fu_213_p1");
    sc_trace(mVcdFile, tmp_542_reg_458, "tmp_542_reg_458");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, co_33_fu_223_p2, "co_33_fu_223_p2");
    sc_trace(mVcdFile, co_33_reg_465, "co_33_reg_465");
    sc_trace(mVcdFile, tmp_516_fu_253_p2, "tmp_516_fu_253_p2");
    sc_trace(mVcdFile, tmp_516_reg_470, "tmp_516_reg_470");
    sc_trace(mVcdFile, exitcond3_fu_217_p2, "exitcond3_fu_217_p2");
    sc_trace(mVcdFile, arrayNo_reg_475, "arrayNo_reg_475");
    sc_trace(mVcdFile, tmp_520_fu_303_p2, "tmp_520_fu_303_p2");
    sc_trace(mVcdFile, tmp_520_reg_480, "tmp_520_reg_480");
    sc_trace(mVcdFile, h_29_fu_315_p2, "h_29_fu_315_p2");
    sc_trace(mVcdFile, h_29_reg_488, "h_29_reg_488");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_522_fu_354_p2, "tmp_522_fu_354_p2");
    sc_trace(mVcdFile, tmp_522_reg_493, "tmp_522_reg_493");
    sc_trace(mVcdFile, exitcond2_fu_309_p2, "exitcond2_fu_309_p2");
    sc_trace(mVcdFile, tmp_524_fu_385_p2, "tmp_524_fu_385_p2");
    sc_trace(mVcdFile, tmp_524_reg_498, "tmp_524_reg_498");
    sc_trace(mVcdFile, w_33_fu_397_p2, "w_33_fu_397_p2");
    sc_trace(mVcdFile, w_33_reg_506, "w_33_reg_506");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_525_fu_411_p2, "tmp_525_fu_411_p2");
    sc_trace(mVcdFile, tmp_525_reg_511, "tmp_525_reg_511");
    sc_trace(mVcdFile, exitcond_fu_391_p2, "exitcond_fu_391_p2");
    sc_trace(mVcdFile, tmp_fu_433_p10, "tmp_fu_433_p10");
    sc_trace(mVcdFile, tmp_reg_556, "tmp_reg_556");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, co_reg_180, "co_reg_180");
    sc_trace(mVcdFile, h_reg_191, "h_reg_191");
    sc_trace(mVcdFile, w_reg_202, "w_reg_202");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, tmp_651_cast_fu_421_p1, "tmp_651_cast_fu_421_p1");
    sc_trace(mVcdFile, tmp_650_cast_fu_454_p1, "tmp_650_cast_fu_454_p1");
    sc_trace(mVcdFile, tmp_s_fu_229_p3, "tmp_s_fu_229_p3");
    sc_trace(mVcdFile, tmp_515_fu_241_p3, "tmp_515_fu_241_p3");
    sc_trace(mVcdFile, p_shl3_cast_fu_249_p1, "p_shl3_cast_fu_249_p1");
    sc_trace(mVcdFile, p_shl2_cast_fu_237_p1, "p_shl2_cast_fu_237_p1");
    sc_trace(mVcdFile, tmp_517_fu_269_p4, "tmp_517_fu_269_p4");
    sc_trace(mVcdFile, tmp_518_fu_279_p3, "tmp_518_fu_279_p3");
    sc_trace(mVcdFile, tmp_519_fu_291_p3, "tmp_519_fu_291_p3");
    sc_trace(mVcdFile, p_shl1_cast_fu_299_p1, "p_shl1_cast_fu_299_p1");
    sc_trace(mVcdFile, p_shl_cast_fu_287_p1, "p_shl_cast_fu_287_p1");
    sc_trace(mVcdFile, tmp_240_cast_fu_325_p1, "tmp_240_cast_fu_325_p1");
    sc_trace(mVcdFile, tmp_521_fu_329_p2, "tmp_521_fu_329_p2");
    sc_trace(mVcdFile, tmp_543_fu_342_p3, "tmp_543_fu_342_p3");
    sc_trace(mVcdFile, p_shl6_cast_fu_334_p3, "p_shl6_cast_fu_334_p3");
    sc_trace(mVcdFile, p_shl7_cast_fu_350_p1, "p_shl7_cast_fu_350_p1");
    sc_trace(mVcdFile, tmp_240_cast9_fu_321_p1, "tmp_240_cast9_fu_321_p1");
    sc_trace(mVcdFile, tmp_523_fu_360_p2, "tmp_523_fu_360_p2");
    sc_trace(mVcdFile, tmp_544_fu_373_p3, "tmp_544_fu_373_p3");
    sc_trace(mVcdFile, p_shl4_cast_fu_365_p3, "p_shl4_cast_fu_365_p3");
    sc_trace(mVcdFile, p_shl5_cast_fu_381_p1, "p_shl5_cast_fu_381_p1");
    sc_trace(mVcdFile, tmp_241_cast_fu_407_p1, "tmp_241_cast_fu_407_p1");
    sc_trace(mVcdFile, tmp_241_cast8_fu_403_p1, "tmp_241_cast8_fu_403_p1");
    sc_trace(mVcdFile, tmp_526_fu_416_p2, "tmp_526_fu_416_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

shuffle_24_l_p::~shuffle_24_l_p() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete ShuffleNetV2_mux_jbC_x_U107;
}

void shuffle_24_l_p::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(exitcond2_fu_309_p2.read(), ap_const_lv1_1))) {
        co_reg_180 = co_33_reg_465.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        co_reg_180 = ap_const_lv6_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_391_p2.read(), ap_const_lv1_1))) {
        h_reg_191 = h_29_reg_488.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(exitcond3_fu_217_p2.read(), ap_const_lv1_0))) {
        h_reg_191 = ap_const_lv5_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_309_p2.read()))) {
        w_reg_202 = ap_const_lv5_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        w_reg_202 = w_33_reg_506.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond3_fu_217_p2.read(), ap_const_lv1_0))) {
        arrayNo_reg_475 = co_reg_180.read().range(3, 1);
        tmp_516_reg_470 = tmp_516_fu_253_p2.read();
        tmp_520_reg_480 = tmp_520_fu_303_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        co_33_reg_465 = co_33_fu_223_p2.read();
        tmp_542_reg_458 = tmp_542_fu_213_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        h_29_reg_488 = h_29_fu_315_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_309_p2.read()))) {
        tmp_522_reg_493 = tmp_522_fu_354_p2.read();
        tmp_524_reg_498 = tmp_524_fu_385_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_391_p2.read()) && esl_seteq<1,1,1>(tmp_542_reg_458.read(), ap_const_lv1_0))) {
        tmp_525_reg_511 = tmp_525_fu_411_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        tmp_reg_556 = tmp_fu_433_p10.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        w_33_reg_506 = w_33_fu_397_p2.read();
    }
}

void shuffle_24_l_p::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void shuffle_24_l_p::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void shuffle_24_l_p::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void shuffle_24_l_p::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void shuffle_24_l_p::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void shuffle_24_l_p::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void shuffle_24_l_p::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(exitcond3_fu_217_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void shuffle_24_l_p::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void shuffle_24_l_p::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond3_fu_217_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void shuffle_24_l_p::thread_buffer1_1_24_16x16_p_1_address0() {
    buffer1_1_24_16x16_p_1_address0 =  (sc_lv<10>) (tmp_651_cast_fu_421_p1.read());
}

void shuffle_24_l_p::thread_buffer1_1_24_16x16_p_1_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        buffer1_1_24_16x16_p_1_ce0 = ap_const_logic_1;
    } else {
        buffer1_1_24_16x16_p_1_ce0 = ap_const_logic_0;
    }
}

void shuffle_24_l_p::thread_buffer1_1_24_16x16_p_2_address0() {
    buffer1_1_24_16x16_p_2_address0 =  (sc_lv<10>) (tmp_651_cast_fu_421_p1.read());
}

void shuffle_24_l_p::thread_buffer1_1_24_16x16_p_2_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        buffer1_1_24_16x16_p_2_ce0 = ap_const_logic_1;
    } else {
        buffer1_1_24_16x16_p_2_ce0 = ap_const_logic_0;
    }
}

void shuffle_24_l_p::thread_buffer1_1_24_16x16_p_3_address0() {
    buffer1_1_24_16x16_p_3_address0 =  (sc_lv<10>) (tmp_651_cast_fu_421_p1.read());
}

void shuffle_24_l_p::thread_buffer1_1_24_16x16_p_3_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        buffer1_1_24_16x16_p_3_ce0 = ap_const_logic_1;
    } else {
        buffer1_1_24_16x16_p_3_ce0 = ap_const_logic_0;
    }
}

void shuffle_24_l_p::thread_buffer1_1_24_16x16_p_4_address0() {
    buffer1_1_24_16x16_p_4_address0 =  (sc_lv<10>) (tmp_651_cast_fu_421_p1.read());
}

void shuffle_24_l_p::thread_buffer1_1_24_16x16_p_4_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        buffer1_1_24_16x16_p_4_ce0 = ap_const_logic_1;
    } else {
        buffer1_1_24_16x16_p_4_ce0 = ap_const_logic_0;
    }
}

void shuffle_24_l_p::thread_buffer1_1_24_16x16_p_5_address0() {
    buffer1_1_24_16x16_p_5_address0 =  (sc_lv<10>) (tmp_651_cast_fu_421_p1.read());
}

void shuffle_24_l_p::thread_buffer1_1_24_16x16_p_5_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        buffer1_1_24_16x16_p_5_ce0 = ap_const_logic_1;
    } else {
        buffer1_1_24_16x16_p_5_ce0 = ap_const_logic_0;
    }
}

void shuffle_24_l_p::thread_buffer1_1_24_16x16_p_6_address0() {
    buffer1_1_24_16x16_p_6_address0 =  (sc_lv<10>) (tmp_651_cast_fu_421_p1.read());
}

void shuffle_24_l_p::thread_buffer1_1_24_16x16_p_6_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        buffer1_1_24_16x16_p_6_ce0 = ap_const_logic_1;
    } else {
        buffer1_1_24_16x16_p_6_ce0 = ap_const_logic_0;
    }
}

void shuffle_24_l_p::thread_buffer1_1_24_16x16_p_7_address0() {
    buffer1_1_24_16x16_p_7_address0 =  (sc_lv<10>) (tmp_651_cast_fu_421_p1.read());
}

void shuffle_24_l_p::thread_buffer1_1_24_16x16_p_7_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        buffer1_1_24_16x16_p_7_ce0 = ap_const_logic_1;
    } else {
        buffer1_1_24_16x16_p_7_ce0 = ap_const_logic_0;
    }
}

void shuffle_24_l_p::thread_buffer1_1_24_16x16_p_address0() {
    buffer1_1_24_16x16_p_address0 =  (sc_lv<10>) (tmp_651_cast_fu_421_p1.read());
}

void shuffle_24_l_p::thread_buffer1_1_24_16x16_p_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        buffer1_1_24_16x16_p_ce0 = ap_const_logic_1;
    } else {
        buffer1_1_24_16x16_p_ce0 = ap_const_logic_0;
    }
}

void shuffle_24_l_p::thread_co_33_fu_223_p2() {
    co_33_fu_223_p2 = (!ap_const_lv6_1.is_01() || !co_reg_180.read().is_01())? sc_lv<6>(): (sc_biguint<6>(ap_const_lv6_1) + sc_biguint<6>(co_reg_180.read()));
}

void shuffle_24_l_p::thread_exitcond2_fu_309_p2() {
    exitcond2_fu_309_p2 = (!h_reg_191.read().is_01() || !ap_const_lv5_12.is_01())? sc_lv<1>(): sc_lv<1>(h_reg_191.read() == ap_const_lv5_12);
}

void shuffle_24_l_p::thread_exitcond3_fu_217_p2() {
    exitcond3_fu_217_p2 = (!co_reg_180.read().is_01() || !ap_const_lv6_30.is_01())? sc_lv<1>(): sc_lv<1>(co_reg_180.read() == ap_const_lv6_30);
}

void shuffle_24_l_p::thread_exitcond_fu_391_p2() {
    exitcond_fu_391_p2 = (!w_reg_202.read().is_01() || !ap_const_lv5_12.is_01())? sc_lv<1>(): sc_lv<1>(w_reg_202.read() == ap_const_lv5_12);
}

void shuffle_24_l_p::thread_h_29_fu_315_p2() {
    h_29_fu_315_p2 = (!h_reg_191.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(h_reg_191.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void shuffle_24_l_p::thread_output_V_address0() {
    output_V_address0 =  (sc_lv<14>) (tmp_650_cast_fu_454_p1.read());
}

void shuffle_24_l_p::thread_output_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        output_V_ce0 = ap_const_logic_1;
    } else {
        output_V_ce0 = ap_const_logic_0;
    }
}

void shuffle_24_l_p::thread_output_V_d0() {
    output_V_d0 = tmp_reg_556.read();
}

void shuffle_24_l_p::thread_output_V_we0() {
    if ((esl_seteq<1,1,1>(tmp_542_reg_458.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        output_V_we0 = ap_const_logic_1;
    } else {
        output_V_we0 = ap_const_logic_0;
    }
}

void shuffle_24_l_p::thread_p_shl1_cast_fu_299_p1() {
    p_shl1_cast_fu_299_p1 = esl_zext<7,3>(tmp_519_fu_291_p3.read());
}

void shuffle_24_l_p::thread_p_shl2_cast_fu_237_p1() {
    p_shl2_cast_fu_237_p1 = esl_zext<11,10>(tmp_s_fu_229_p3.read());
}

void shuffle_24_l_p::thread_p_shl3_cast_fu_249_p1() {
    p_shl3_cast_fu_249_p1 = esl_zext<11,7>(tmp_515_fu_241_p3.read());
}

void shuffle_24_l_p::thread_p_shl4_cast_fu_365_p3() {
    p_shl4_cast_fu_365_p3 = esl_concat<7,4>(tmp_523_fu_360_p2.read(), ap_const_lv4_0);
}

void shuffle_24_l_p::thread_p_shl5_cast_fu_381_p1() {
    p_shl5_cast_fu_381_p1 = esl_zext<11,8>(tmp_544_fu_373_p3.read());
}

void shuffle_24_l_p::thread_p_shl6_cast_fu_334_p3() {
    p_shl6_cast_fu_334_p3 = esl_concat<11,4>(tmp_521_fu_329_p2.read(), ap_const_lv4_0);
}

void shuffle_24_l_p::thread_p_shl7_cast_fu_350_p1() {
    p_shl7_cast_fu_350_p1 = esl_zext<15,12>(tmp_543_fu_342_p3.read());
}

void shuffle_24_l_p::thread_p_shl_cast_fu_287_p1() {
    p_shl_cast_fu_287_p1 = esl_zext<7,6>(tmp_518_fu_279_p3.read());
}

void shuffle_24_l_p::thread_tmp_240_cast9_fu_321_p1() {
    tmp_240_cast9_fu_321_p1 = esl_zext<7,5>(h_reg_191.read());
}

void shuffle_24_l_p::thread_tmp_240_cast_fu_325_p1() {
    tmp_240_cast_fu_325_p1 = esl_zext<11,5>(h_reg_191.read());
}

void shuffle_24_l_p::thread_tmp_241_cast8_fu_403_p1() {
    tmp_241_cast8_fu_403_p1 = esl_zext<11,5>(w_reg_202.read());
}

void shuffle_24_l_p::thread_tmp_241_cast_fu_407_p1() {
    tmp_241_cast_fu_407_p1 = esl_zext<15,5>(w_reg_202.read());
}

void shuffle_24_l_p::thread_tmp_515_fu_241_p3() {
    tmp_515_fu_241_p3 = esl_concat<6,1>(co_reg_180.read(), ap_const_lv1_0);
}

void shuffle_24_l_p::thread_tmp_516_fu_253_p2() {
    tmp_516_fu_253_p2 = (!p_shl3_cast_fu_249_p1.read().is_01() || !p_shl2_cast_fu_237_p1.read().is_01())? sc_lv<11>(): (sc_biguint<11>(p_shl3_cast_fu_249_p1.read()) + sc_biguint<11>(p_shl2_cast_fu_237_p1.read()));
}

void shuffle_24_l_p::thread_tmp_517_fu_269_p4() {
    tmp_517_fu_269_p4 = co_reg_180.read().range(5, 4);
}

void shuffle_24_l_p::thread_tmp_518_fu_279_p3() {
    tmp_518_fu_279_p3 = esl_concat<2,4>(tmp_517_fu_269_p4.read(), ap_const_lv4_0);
}

void shuffle_24_l_p::thread_tmp_519_fu_291_p3() {
    tmp_519_fu_291_p3 = esl_concat<2,1>(tmp_517_fu_269_p4.read(), ap_const_lv1_0);
}

void shuffle_24_l_p::thread_tmp_520_fu_303_p2() {
    tmp_520_fu_303_p2 = (!p_shl1_cast_fu_299_p1.read().is_01() || !p_shl_cast_fu_287_p1.read().is_01())? sc_lv<7>(): (sc_biguint<7>(p_shl1_cast_fu_299_p1.read()) + sc_biguint<7>(p_shl_cast_fu_287_p1.read()));
}

void shuffle_24_l_p::thread_tmp_521_fu_329_p2() {
    tmp_521_fu_329_p2 = (!tmp_240_cast_fu_325_p1.read().is_01() || !tmp_516_reg_470.read().is_01())? sc_lv<11>(): (sc_biguint<11>(tmp_240_cast_fu_325_p1.read()) + sc_biguint<11>(tmp_516_reg_470.read()));
}

void shuffle_24_l_p::thread_tmp_522_fu_354_p2() {
    tmp_522_fu_354_p2 = (!p_shl6_cast_fu_334_p3.read().is_01() || !p_shl7_cast_fu_350_p1.read().is_01())? sc_lv<15>(): (sc_biguint<15>(p_shl6_cast_fu_334_p3.read()) + sc_biguint<15>(p_shl7_cast_fu_350_p1.read()));
}

void shuffle_24_l_p::thread_tmp_523_fu_360_p2() {
    tmp_523_fu_360_p2 = (!tmp_240_cast9_fu_321_p1.read().is_01() || !tmp_520_reg_480.read().is_01())? sc_lv<7>(): (sc_biguint<7>(tmp_240_cast9_fu_321_p1.read()) + sc_biguint<7>(tmp_520_reg_480.read()));
}

void shuffle_24_l_p::thread_tmp_524_fu_385_p2() {
    tmp_524_fu_385_p2 = (!p_shl4_cast_fu_365_p3.read().is_01() || !p_shl5_cast_fu_381_p1.read().is_01())? sc_lv<11>(): (sc_biguint<11>(p_shl4_cast_fu_365_p3.read()) + sc_biguint<11>(p_shl5_cast_fu_381_p1.read()));
}

void shuffle_24_l_p::thread_tmp_525_fu_411_p2() {
    tmp_525_fu_411_p2 = (!tmp_522_reg_493.read().is_01() || !tmp_241_cast_fu_407_p1.read().is_01())? sc_lv<15>(): (sc_biguint<15>(tmp_522_reg_493.read()) + sc_biguint<15>(tmp_241_cast_fu_407_p1.read()));
}

void shuffle_24_l_p::thread_tmp_526_fu_416_p2() {
    tmp_526_fu_416_p2 = (!tmp_524_reg_498.read().is_01() || !tmp_241_cast8_fu_403_p1.read().is_01())? sc_lv<11>(): (sc_biguint<11>(tmp_524_reg_498.read()) + sc_biguint<11>(tmp_241_cast8_fu_403_p1.read()));
}

void shuffle_24_l_p::thread_tmp_542_fu_213_p1() {
    tmp_542_fu_213_p1 = co_reg_180.read().range(1-1, 0);
}

void shuffle_24_l_p::thread_tmp_543_fu_342_p3() {
    tmp_543_fu_342_p3 = esl_concat<11,1>(tmp_521_fu_329_p2.read(), ap_const_lv1_0);
}

void shuffle_24_l_p::thread_tmp_544_fu_373_p3() {
    tmp_544_fu_373_p3 = esl_concat<7,1>(tmp_523_fu_360_p2.read(), ap_const_lv1_0);
}

void shuffle_24_l_p::thread_tmp_650_cast_fu_454_p1() {
    tmp_650_cast_fu_454_p1 = esl_zext<64,15>(tmp_525_reg_511.read());
}

void shuffle_24_l_p::thread_tmp_651_cast_fu_421_p1() {
    tmp_651_cast_fu_421_p1 = esl_zext<64,11>(tmp_526_fu_416_p2.read());
}

void shuffle_24_l_p::thread_tmp_s_fu_229_p3() {
    tmp_s_fu_229_p3 = esl_concat<6,4>(co_reg_180.read(), ap_const_lv4_0);
}

void shuffle_24_l_p::thread_w_33_fu_397_p2() {
    w_33_fu_397_p2 = (!w_reg_202.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(w_reg_202.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void shuffle_24_l_p::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond3_fu_217_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(exitcond2_fu_309_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(exitcond_fu_391_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_391_p2.read()) && esl_seteq<1,1,1>(tmp_542_reg_458.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        default : 
            ap_NS_fsm = "XXXXXX";
            break;
    }
}

}
