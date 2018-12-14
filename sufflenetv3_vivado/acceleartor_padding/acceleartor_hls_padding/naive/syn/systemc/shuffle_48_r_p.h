// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _shuffle_48_r_p_HH_
#define _shuffle_48_r_p_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct shuffle_48_r_p : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<13> > right_r_address0;
    sc_out< sc_logic > right_r_ce0;
    sc_in< sc_lv<32> > right_r_q0;
    sc_out< sc_lv<14> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<32> > output_r_d0;


    // Module declarations
    shuffle_48_r_p(sc_module_name name);
    SC_HAS_PROCESS(shuffle_48_r_p);

    ~shuffle_48_r_p();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > tmp_85_fu_108_p1;
    sc_signal< sc_lv<1> > tmp_85_reg_323;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<7> > co_16_fu_118_p2;
    sc_signal< sc_lv<7> > co_16_reg_330;
    sc_signal< sc_lv<10> > tmp_219_fu_158_p2;
    sc_signal< sc_lv<10> > tmp_219_reg_335;
    sc_signal< sc_lv<1> > exitcond2_fu_112_p2;
    sc_signal< sc_lv<11> > tmp_222_fu_188_p2;
    sc_signal< sc_lv<11> > tmp_222_reg_340;
    sc_signal< sc_lv<4> > h_16_fu_200_p2;
    sc_signal< sc_lv<4> > h_16_reg_348;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<14> > tmp_224_fu_243_p2;
    sc_signal< sc_lv<14> > tmp_224_reg_353;
    sc_signal< sc_lv<1> > exitcond1_fu_194_p2;
    sc_signal< sc_lv<15> > tmp_226_fu_278_p2;
    sc_signal< sc_lv<15> > tmp_226_reg_358;
    sc_signal< sc_lv<4> > w_16_fu_290_p2;
    sc_signal< sc_lv<4> > w_16_reg_366;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > exitcond_fu_284_p2;
    sc_signal< sc_lv<15> > tmp_228_fu_314_p2;
    sc_signal< sc_lv<15> > tmp_228_reg_376;
    sc_signal< sc_lv<7> > co_reg_75;
    sc_signal< sc_lv<4> > h_reg_86;
    sc_signal< sc_lv<4> > w_reg_97;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<64> > tmp_320_cast_fu_309_p1;
    sc_signal< sc_lv<64> > tmp_321_cast_fu_319_p1;
    sc_signal< sc_lv<6> > tmp_fu_124_p4;
    sc_signal< sc_lv<9> > tmp_s_fu_134_p3;
    sc_signal< sc_lv<7> > tmp_218_fu_146_p3;
    sc_signal< sc_lv<10> > p_shl3_cast_fu_154_p1;
    sc_signal< sc_lv<10> > p_shl2_cast_fu_142_p1;
    sc_signal< sc_lv<10> > tmp_220_fu_164_p3;
    sc_signal< sc_lv<8> > tmp_221_fu_176_p3;
    sc_signal< sc_lv<11> > p_shl1_cast_fu_184_p1;
    sc_signal< sc_lv<11> > p_shl_cast_fu_172_p1;
    sc_signal< sc_lv<10> > tmp_cast_fu_210_p1;
    sc_signal< sc_lv<10> > tmp_223_fu_214_p2;
    sc_signal< sc_lv<13> > tmp_86_fu_219_p3;
    sc_signal< sc_lv<11> > tmp_87_fu_231_p3;
    sc_signal< sc_lv<14> > p_shl6_cast_fu_227_p1;
    sc_signal< sc_lv<14> > p_shl7_cast_fu_239_p1;
    sc_signal< sc_lv<11> > tmp_cast9_fu_206_p1;
    sc_signal< sc_lv<11> > tmp_225_fu_249_p2;
    sc_signal< sc_lv<14> > tmp_88_fu_254_p3;
    sc_signal< sc_lv<12> > tmp_89_fu_266_p3;
    sc_signal< sc_lv<15> > p_shl4_cast_fu_262_p1;
    sc_signal< sc_lv<15> > p_shl5_cast_fu_274_p1;
    sc_signal< sc_lv<14> > tmp_76_cast_fu_300_p1;
    sc_signal< sc_lv<14> > tmp_227_fu_304_p2;
    sc_signal< sc_lv<15> > tmp_76_cast8_fu_296_p1;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_state4;
    static const sc_lv<5> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<7> ap_const_lv7_60;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_co_16_fu_118_p2();
    void thread_exitcond1_fu_194_p2();
    void thread_exitcond2_fu_112_p2();
    void thread_exitcond_fu_284_p2();
    void thread_h_16_fu_200_p2();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_p_shl1_cast_fu_184_p1();
    void thread_p_shl2_cast_fu_142_p1();
    void thread_p_shl3_cast_fu_154_p1();
    void thread_p_shl4_cast_fu_262_p1();
    void thread_p_shl5_cast_fu_274_p1();
    void thread_p_shl6_cast_fu_227_p1();
    void thread_p_shl7_cast_fu_239_p1();
    void thread_p_shl_cast_fu_172_p1();
    void thread_right_r_address0();
    void thread_right_r_ce0();
    void thread_tmp_218_fu_146_p3();
    void thread_tmp_219_fu_158_p2();
    void thread_tmp_220_fu_164_p3();
    void thread_tmp_221_fu_176_p3();
    void thread_tmp_222_fu_188_p2();
    void thread_tmp_223_fu_214_p2();
    void thread_tmp_224_fu_243_p2();
    void thread_tmp_225_fu_249_p2();
    void thread_tmp_226_fu_278_p2();
    void thread_tmp_227_fu_304_p2();
    void thread_tmp_228_fu_314_p2();
    void thread_tmp_320_cast_fu_309_p1();
    void thread_tmp_321_cast_fu_319_p1();
    void thread_tmp_76_cast8_fu_296_p1();
    void thread_tmp_76_cast_fu_300_p1();
    void thread_tmp_85_fu_108_p1();
    void thread_tmp_86_fu_219_p3();
    void thread_tmp_87_fu_231_p3();
    void thread_tmp_88_fu_254_p3();
    void thread_tmp_89_fu_266_p3();
    void thread_tmp_cast9_fu_206_p1();
    void thread_tmp_cast_fu_210_p1();
    void thread_tmp_fu_124_p4();
    void thread_tmp_s_fu_134_p3();
    void thread_w_16_fu_290_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
