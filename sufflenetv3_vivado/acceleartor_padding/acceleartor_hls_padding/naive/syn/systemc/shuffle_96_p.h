// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _shuffle_96_p_HH_
#define _shuffle_96_p_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct shuffle_96_p : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<12> > left_r_address0;
    sc_out< sc_logic > left_r_ce0;
    sc_in< sc_lv<32> > left_r_q0;
    sc_out< sc_lv<13> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<32> > output_r_d0;
    sc_out< sc_lv<12> > buffer1_1_96_4x4_p_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_ce0;
    sc_in< sc_lv<32> > buffer1_1_96_4x4_p_q0;


    // Module declarations
    shuffle_96_p(sc_module_name name);
    SC_HAS_PROCESS(shuffle_96_p);

    ~shuffle_96_p();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > tmp_79_fu_130_p1;
    sc_signal< sc_lv<1> > tmp_79_reg_347;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > co_14_fu_140_p2;
    sc_signal< sc_lv<8> > co_14_reg_354;
    sc_signal< sc_lv<12> > tmp_274_cast_fu_186_p1;
    sc_signal< sc_lv<12> > tmp_274_cast_reg_359;
    sc_signal< sc_lv<1> > exitcond2_fu_134_p2;
    sc_signal< sc_lv<13> > tmp_277_cast_fu_220_p1;
    sc_signal< sc_lv<13> > tmp_277_cast_reg_364;
    sc_signal< sc_lv<3> > h_14_fu_230_p2;
    sc_signal< sc_lv<3> > h_14_reg_372;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<13> > tmp_202_fu_269_p2;
    sc_signal< sc_lv<13> > tmp_202_reg_377;
    sc_signal< sc_lv<1> > exitcond1_fu_224_p2;
    sc_signal< sc_lv<14> > tmp_204_fu_300_p2;
    sc_signal< sc_lv<14> > tmp_204_reg_382;
    sc_signal< sc_lv<3> > w_14_fu_312_p2;
    sc_signal< sc_lv<3> > w_14_reg_390;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > exitcond_fu_306_p2;
    sc_signal< sc_lv<13> > output_addr_reg_400;
    sc_signal< sc_lv<8> > co_reg_85;
    sc_signal< sc_lv<3> > h_reg_96;
    sc_signal< sc_lv<3> > w_reg_107;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > storemerge_phi_fu_121_p4;
    sc_signal< sc_lv<64> > tmp_286_cast_fu_331_p1;
    sc_signal< sc_lv<64> > tmp_287_cast_fu_342_p1;
    sc_signal< sc_lv<7> > tmp_fu_146_p4;
    sc_signal< sc_lv<10> > tmp_s_fu_156_p3;
    sc_signal< sc_lv<8> > tmp_196_fu_168_p3;
    sc_signal< sc_lv<11> > p_shl2_cast_fu_164_p1;
    sc_signal< sc_lv<11> > p_shl3_cast_fu_176_p1;
    sc_signal< sc_lv<11> > tmp_197_fu_180_p2;
    sc_signal< sc_lv<11> > tmp_198_fu_190_p3;
    sc_signal< sc_lv<9> > tmp_199_fu_202_p3;
    sc_signal< sc_lv<12> > p_shl_cast_fu_198_p1;
    sc_signal< sc_lv<12> > p_shl1_cast_fu_210_p1;
    sc_signal< sc_lv<12> > tmp_200_fu_214_p2;
    sc_signal< sc_lv<12> > tmp_cast_fu_240_p1;
    sc_signal< sc_lv<12> > tmp_201_fu_244_p2;
    sc_signal< sc_lv<10> > tmp_80_fu_249_p1;
    sc_signal< sc_lv<13> > p_shl6_cast_fu_253_p3;
    sc_signal< sc_lv<13> > p_shl7_cast_fu_261_p3;
    sc_signal< sc_lv<13> > tmp_cast9_fu_236_p1;
    sc_signal< sc_lv<13> > tmp_203_fu_275_p2;
    sc_signal< sc_lv<11> > tmp_81_fu_280_p1;
    sc_signal< sc_lv<14> > p_shl4_cast_fu_284_p3;
    sc_signal< sc_lv<14> > p_shl5_cast_fu_292_p3;
    sc_signal< sc_lv<13> > tmp_74_cast_fu_322_p1;
    sc_signal< sc_lv<13> > tmp_205_fu_326_p2;
    sc_signal< sc_lv<14> > tmp_74_cast8_fu_318_p1;
    sc_signal< sc_lv<14> > tmp_206_fu_337_p2;
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
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<8> ap_const_lv8_C0;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_1;
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
    void thread_buffer1_1_96_4x4_p_address0();
    void thread_buffer1_1_96_4x4_p_ce0();
    void thread_co_14_fu_140_p2();
    void thread_exitcond1_fu_224_p2();
    void thread_exitcond2_fu_134_p2();
    void thread_exitcond_fu_306_p2();
    void thread_h_14_fu_230_p2();
    void thread_left_r_address0();
    void thread_left_r_ce0();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_p_shl1_cast_fu_210_p1();
    void thread_p_shl2_cast_fu_164_p1();
    void thread_p_shl3_cast_fu_176_p1();
    void thread_p_shl4_cast_fu_284_p3();
    void thread_p_shl5_cast_fu_292_p3();
    void thread_p_shl6_cast_fu_253_p3();
    void thread_p_shl7_cast_fu_261_p3();
    void thread_p_shl_cast_fu_198_p1();
    void thread_storemerge_phi_fu_121_p4();
    void thread_tmp_196_fu_168_p3();
    void thread_tmp_197_fu_180_p2();
    void thread_tmp_198_fu_190_p3();
    void thread_tmp_199_fu_202_p3();
    void thread_tmp_200_fu_214_p2();
    void thread_tmp_201_fu_244_p2();
    void thread_tmp_202_fu_269_p2();
    void thread_tmp_203_fu_275_p2();
    void thread_tmp_204_fu_300_p2();
    void thread_tmp_205_fu_326_p2();
    void thread_tmp_206_fu_337_p2();
    void thread_tmp_274_cast_fu_186_p1();
    void thread_tmp_277_cast_fu_220_p1();
    void thread_tmp_286_cast_fu_331_p1();
    void thread_tmp_287_cast_fu_342_p1();
    void thread_tmp_74_cast8_fu_318_p1();
    void thread_tmp_74_cast_fu_322_p1();
    void thread_tmp_79_fu_130_p1();
    void thread_tmp_80_fu_249_p1();
    void thread_tmp_81_fu_280_p1();
    void thread_tmp_cast9_fu_236_p1();
    void thread_tmp_cast_fu_240_p1();
    void thread_tmp_fu_146_p4();
    void thread_tmp_s_fu_156_p3();
    void thread_w_14_fu_312_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
