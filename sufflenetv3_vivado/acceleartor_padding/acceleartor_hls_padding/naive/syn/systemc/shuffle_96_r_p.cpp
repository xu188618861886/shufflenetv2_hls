// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "shuffle_96_r_p.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic shuffle_96_r_p::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic shuffle_96_r_p::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<5> shuffle_96_r_p::ap_ST_fsm_state1 = "1";
const sc_lv<5> shuffle_96_r_p::ap_ST_fsm_state2 = "10";
const sc_lv<5> shuffle_96_r_p::ap_ST_fsm_state3 = "100";
const sc_lv<5> shuffle_96_r_p::ap_ST_fsm_state4 = "1000";
const sc_lv<5> shuffle_96_r_p::ap_ST_fsm_state5 = "10000";
const sc_lv<32> shuffle_96_r_p::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> shuffle_96_r_p::ap_const_lv32_1 = "1";
const sc_lv<1> shuffle_96_r_p::ap_const_lv1_0 = "0";
const sc_lv<32> shuffle_96_r_p::ap_const_lv32_2 = "10";
const sc_lv<32> shuffle_96_r_p::ap_const_lv32_3 = "11";
const sc_lv<1> shuffle_96_r_p::ap_const_lv1_1 = "1";
const sc_lv<8> shuffle_96_r_p::ap_const_lv8_0 = "00000000";
const sc_lv<3> shuffle_96_r_p::ap_const_lv3_0 = "000";
const sc_lv<32> shuffle_96_r_p::ap_const_lv32_4 = "100";
const sc_lv<8> shuffle_96_r_p::ap_const_lv8_C0 = "11000000";
const sc_lv<8> shuffle_96_r_p::ap_const_lv8_1 = "1";
const sc_lv<32> shuffle_96_r_p::ap_const_lv32_7 = "111";
const sc_lv<3> shuffle_96_r_p::ap_const_lv3_6 = "110";
const sc_lv<3> shuffle_96_r_p::ap_const_lv3_1 = "1";
const bool shuffle_96_r_p::ap_const_boolean_1 = true;

shuffle_96_r_p::shuffle_96_r_p(sc_module_name name) : sc_module(name), mVcdFile(0) {

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

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_110_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_110_p2 );

    SC_METHOD(thread_co_13_fu_116_p2);
    sensitive << ( co_reg_73 );

    SC_METHOD(thread_exitcond1_fu_200_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( h_reg_84 );

    SC_METHOD(thread_exitcond2_fu_110_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( co_reg_73 );

    SC_METHOD(thread_exitcond_fu_282_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( w_reg_95 );

    SC_METHOD(thread_h_13_fu_206_p2);
    sensitive << ( h_reg_84 );

    SC_METHOD(thread_output_r_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_270_cast_fu_317_p1 );

    SC_METHOD(thread_output_r_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_output_r_d0);
    sensitive << ( right_r_q0 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_output_r_we0);
    sensitive << ( tmp_76_reg_321 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_p_shl1_cast_fu_186_p1);
    sensitive << ( tmp_188_fu_178_p3 );

    SC_METHOD(thread_p_shl2_cast_fu_140_p1);
    sensitive << ( tmp_s_fu_132_p3 );

    SC_METHOD(thread_p_shl3_cast_fu_152_p1);
    sensitive << ( tmp_185_fu_144_p3 );

    SC_METHOD(thread_p_shl4_cast_fu_260_p3);
    sensitive << ( tmp_78_fu_256_p1 );

    SC_METHOD(thread_p_shl5_cast_fu_268_p3);
    sensitive << ( tmp_192_fu_251_p2 );

    SC_METHOD(thread_p_shl6_cast_fu_229_p3);
    sensitive << ( tmp_77_fu_225_p1 );

    SC_METHOD(thread_p_shl7_cast_fu_237_p3);
    sensitive << ( tmp_190_fu_220_p2 );

    SC_METHOD(thread_p_shl_cast_fu_174_p1);
    sensitive << ( tmp_187_fu_166_p3 );

    SC_METHOD(thread_right_r_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_269_cast_fu_307_p1 );

    SC_METHOD(thread_right_r_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_tmp_185_fu_144_p3);
    sensitive << ( tmp_fu_122_p4 );

    SC_METHOD(thread_tmp_186_fu_156_p2);
    sensitive << ( p_shl2_cast_fu_140_p1 );
    sensitive << ( p_shl3_cast_fu_152_p1 );

    SC_METHOD(thread_tmp_187_fu_166_p3);
    sensitive << ( co_reg_73 );

    SC_METHOD(thread_tmp_188_fu_178_p3);
    sensitive << ( co_reg_73 );

    SC_METHOD(thread_tmp_189_fu_190_p2);
    sensitive << ( p_shl_cast_fu_174_p1 );
    sensitive << ( p_shl1_cast_fu_186_p1 );

    SC_METHOD(thread_tmp_190_fu_220_p2);
    sensitive << ( tmp_257_cast_reg_333 );
    sensitive << ( tmp_cast_fu_216_p1 );

    SC_METHOD(thread_tmp_191_fu_245_p2);
    sensitive << ( p_shl6_cast_fu_229_p3 );
    sensitive << ( p_shl7_cast_fu_237_p3 );

    SC_METHOD(thread_tmp_192_fu_251_p2);
    sensitive << ( tmp_260_cast_reg_338 );
    sensitive << ( tmp_cast9_fu_212_p1 );

    SC_METHOD(thread_tmp_193_fu_276_p2);
    sensitive << ( p_shl4_cast_fu_260_p3 );
    sensitive << ( p_shl5_cast_fu_268_p3 );

    SC_METHOD(thread_tmp_194_fu_302_p2);
    sensitive << ( tmp_191_reg_351 );
    sensitive << ( tmp_73_cast_fu_298_p1 );

    SC_METHOD(thread_tmp_195_fu_312_p2);
    sensitive << ( tmp_193_reg_356 );
    sensitive << ( tmp_73_cast8_fu_294_p1 );

    SC_METHOD(thread_tmp_257_cast_fu_162_p1);
    sensitive << ( tmp_186_fu_156_p2 );

    SC_METHOD(thread_tmp_260_cast_fu_196_p1);
    sensitive << ( tmp_189_fu_190_p2 );

    SC_METHOD(thread_tmp_269_cast_fu_307_p1);
    sensitive << ( tmp_194_fu_302_p2 );

    SC_METHOD(thread_tmp_270_cast_fu_317_p1);
    sensitive << ( tmp_195_reg_374 );

    SC_METHOD(thread_tmp_73_cast8_fu_294_p1);
    sensitive << ( w_reg_95 );

    SC_METHOD(thread_tmp_73_cast_fu_298_p1);
    sensitive << ( w_reg_95 );

    SC_METHOD(thread_tmp_76_fu_106_p1);
    sensitive << ( co_reg_73 );

    SC_METHOD(thread_tmp_77_fu_225_p1);
    sensitive << ( tmp_190_fu_220_p2 );

    SC_METHOD(thread_tmp_78_fu_256_p1);
    sensitive << ( tmp_192_fu_251_p2 );

    SC_METHOD(thread_tmp_cast9_fu_212_p1);
    sensitive << ( h_reg_84 );

    SC_METHOD(thread_tmp_cast_fu_216_p1);
    sensitive << ( h_reg_84 );

    SC_METHOD(thread_tmp_fu_122_p4);
    sensitive << ( co_reg_73 );

    SC_METHOD(thread_tmp_s_fu_132_p3);
    sensitive << ( tmp_fu_122_p4 );

    SC_METHOD(thread_w_13_fu_288_p2);
    sensitive << ( w_reg_95 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_110_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond1_fu_200_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_282_p2 );

    ap_CS_fsm = "00001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "shuffle_96_r_p_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, right_r_address0, "(port)right_r_address0");
    sc_trace(mVcdFile, right_r_ce0, "(port)right_r_ce0");
    sc_trace(mVcdFile, right_r_q0, "(port)right_r_q0");
    sc_trace(mVcdFile, output_r_address0, "(port)output_r_address0");
    sc_trace(mVcdFile, output_r_ce0, "(port)output_r_ce0");
    sc_trace(mVcdFile, output_r_we0, "(port)output_r_we0");
    sc_trace(mVcdFile, output_r_d0, "(port)output_r_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, tmp_76_fu_106_p1, "tmp_76_fu_106_p1");
    sc_trace(mVcdFile, tmp_76_reg_321, "tmp_76_reg_321");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, co_13_fu_116_p2, "co_13_fu_116_p2");
    sc_trace(mVcdFile, co_13_reg_328, "co_13_reg_328");
    sc_trace(mVcdFile, tmp_257_cast_fu_162_p1, "tmp_257_cast_fu_162_p1");
    sc_trace(mVcdFile, tmp_257_cast_reg_333, "tmp_257_cast_reg_333");
    sc_trace(mVcdFile, exitcond2_fu_110_p2, "exitcond2_fu_110_p2");
    sc_trace(mVcdFile, tmp_260_cast_fu_196_p1, "tmp_260_cast_fu_196_p1");
    sc_trace(mVcdFile, tmp_260_cast_reg_338, "tmp_260_cast_reg_338");
    sc_trace(mVcdFile, h_13_fu_206_p2, "h_13_fu_206_p2");
    sc_trace(mVcdFile, h_13_reg_346, "h_13_reg_346");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_191_fu_245_p2, "tmp_191_fu_245_p2");
    sc_trace(mVcdFile, tmp_191_reg_351, "tmp_191_reg_351");
    sc_trace(mVcdFile, exitcond1_fu_200_p2, "exitcond1_fu_200_p2");
    sc_trace(mVcdFile, tmp_193_fu_276_p2, "tmp_193_fu_276_p2");
    sc_trace(mVcdFile, tmp_193_reg_356, "tmp_193_reg_356");
    sc_trace(mVcdFile, w_13_fu_288_p2, "w_13_fu_288_p2");
    sc_trace(mVcdFile, w_13_reg_364, "w_13_reg_364");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, exitcond_fu_282_p2, "exitcond_fu_282_p2");
    sc_trace(mVcdFile, tmp_195_fu_312_p2, "tmp_195_fu_312_p2");
    sc_trace(mVcdFile, tmp_195_reg_374, "tmp_195_reg_374");
    sc_trace(mVcdFile, co_reg_73, "co_reg_73");
    sc_trace(mVcdFile, h_reg_84, "h_reg_84");
    sc_trace(mVcdFile, w_reg_95, "w_reg_95");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, tmp_269_cast_fu_307_p1, "tmp_269_cast_fu_307_p1");
    sc_trace(mVcdFile, tmp_270_cast_fu_317_p1, "tmp_270_cast_fu_317_p1");
    sc_trace(mVcdFile, tmp_fu_122_p4, "tmp_fu_122_p4");
    sc_trace(mVcdFile, tmp_s_fu_132_p3, "tmp_s_fu_132_p3");
    sc_trace(mVcdFile, tmp_185_fu_144_p3, "tmp_185_fu_144_p3");
    sc_trace(mVcdFile, p_shl2_cast_fu_140_p1, "p_shl2_cast_fu_140_p1");
    sc_trace(mVcdFile, p_shl3_cast_fu_152_p1, "p_shl3_cast_fu_152_p1");
    sc_trace(mVcdFile, tmp_186_fu_156_p2, "tmp_186_fu_156_p2");
    sc_trace(mVcdFile, tmp_187_fu_166_p3, "tmp_187_fu_166_p3");
    sc_trace(mVcdFile, tmp_188_fu_178_p3, "tmp_188_fu_178_p3");
    sc_trace(mVcdFile, p_shl_cast_fu_174_p1, "p_shl_cast_fu_174_p1");
    sc_trace(mVcdFile, p_shl1_cast_fu_186_p1, "p_shl1_cast_fu_186_p1");
    sc_trace(mVcdFile, tmp_189_fu_190_p2, "tmp_189_fu_190_p2");
    sc_trace(mVcdFile, tmp_cast_fu_216_p1, "tmp_cast_fu_216_p1");
    sc_trace(mVcdFile, tmp_190_fu_220_p2, "tmp_190_fu_220_p2");
    sc_trace(mVcdFile, tmp_77_fu_225_p1, "tmp_77_fu_225_p1");
    sc_trace(mVcdFile, p_shl6_cast_fu_229_p3, "p_shl6_cast_fu_229_p3");
    sc_trace(mVcdFile, p_shl7_cast_fu_237_p3, "p_shl7_cast_fu_237_p3");
    sc_trace(mVcdFile, tmp_cast9_fu_212_p1, "tmp_cast9_fu_212_p1");
    sc_trace(mVcdFile, tmp_192_fu_251_p2, "tmp_192_fu_251_p2");
    sc_trace(mVcdFile, tmp_78_fu_256_p1, "tmp_78_fu_256_p1");
    sc_trace(mVcdFile, p_shl4_cast_fu_260_p3, "p_shl4_cast_fu_260_p3");
    sc_trace(mVcdFile, p_shl5_cast_fu_268_p3, "p_shl5_cast_fu_268_p3");
    sc_trace(mVcdFile, tmp_73_cast_fu_298_p1, "tmp_73_cast_fu_298_p1");
    sc_trace(mVcdFile, tmp_194_fu_302_p2, "tmp_194_fu_302_p2");
    sc_trace(mVcdFile, tmp_73_cast8_fu_294_p1, "tmp_73_cast8_fu_294_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

shuffle_96_r_p::~shuffle_96_r_p() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void shuffle_96_r_p::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_200_p2.read(), ap_const_lv1_1))) {
        co_reg_73 = co_13_reg_328.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        co_reg_73 = ap_const_lv8_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_282_p2.read(), ap_const_lv1_1))) {
        h_reg_84 = h_13_reg_346.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(exitcond2_fu_110_p2.read(), ap_const_lv1_0))) {
        h_reg_84 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_200_p2.read()))) {
        w_reg_95 = ap_const_lv3_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        w_reg_95 = w_13_reg_364.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        co_13_reg_328 = co_13_fu_116_p2.read();
        tmp_76_reg_321 = tmp_76_fu_106_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        h_13_reg_346 = h_13_fu_206_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_200_p2.read()))) {
        tmp_191_reg_351 = tmp_191_fu_245_p2.read();
        tmp_193_reg_356 = tmp_193_fu_276_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_282_p2.read()) && esl_seteq<1,1,1>(tmp_76_reg_321.read(), ap_const_lv1_1))) {
        tmp_195_reg_374 = tmp_195_fu_312_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond2_fu_110_p2.read(), ap_const_lv1_0))) {
        tmp_257_cast_reg_333 = tmp_257_cast_fu_162_p1.read();
        tmp_260_cast_reg_338 = tmp_260_cast_fu_196_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        w_13_reg_364 = w_13_fu_288_p2.read();
    }
}

void shuffle_96_r_p::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void shuffle_96_r_p::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void shuffle_96_r_p::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void shuffle_96_r_p::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void shuffle_96_r_p::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void shuffle_96_r_p::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(exitcond2_fu_110_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void shuffle_96_r_p::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void shuffle_96_r_p::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond2_fu_110_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void shuffle_96_r_p::thread_co_13_fu_116_p2() {
    co_13_fu_116_p2 = (!ap_const_lv8_1.is_01() || !co_reg_73.read().is_01())? sc_lv<8>(): (sc_biguint<8>(ap_const_lv8_1) + sc_biguint<8>(co_reg_73.read()));
}

void shuffle_96_r_p::thread_exitcond1_fu_200_p2() {
    exitcond1_fu_200_p2 = (!h_reg_84.read().is_01() || !ap_const_lv3_6.is_01())? sc_lv<1>(): sc_lv<1>(h_reg_84.read() == ap_const_lv3_6);
}

void shuffle_96_r_p::thread_exitcond2_fu_110_p2() {
    exitcond2_fu_110_p2 = (!co_reg_73.read().is_01() || !ap_const_lv8_C0.is_01())? sc_lv<1>(): sc_lv<1>(co_reg_73.read() == ap_const_lv8_C0);
}

void shuffle_96_r_p::thread_exitcond_fu_282_p2() {
    exitcond_fu_282_p2 = (!w_reg_95.read().is_01() || !ap_const_lv3_6.is_01())? sc_lv<1>(): sc_lv<1>(w_reg_95.read() == ap_const_lv3_6);
}

void shuffle_96_r_p::thread_h_13_fu_206_p2() {
    h_13_fu_206_p2 = (!h_reg_84.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(h_reg_84.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void shuffle_96_r_p::thread_output_r_address0() {
    output_r_address0 =  (sc_lv<13>) (tmp_270_cast_fu_317_p1.read());
}

void shuffle_96_r_p::thread_output_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        output_r_ce0 = ap_const_logic_1;
    } else {
        output_r_ce0 = ap_const_logic_0;
    }
}

void shuffle_96_r_p::thread_output_r_d0() {
    output_r_d0 = right_r_q0.read();
}

void shuffle_96_r_p::thread_output_r_we0() {
    if ((esl_seteq<1,1,1>(tmp_76_reg_321.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        output_r_we0 = ap_const_logic_1;
    } else {
        output_r_we0 = ap_const_logic_0;
    }
}

void shuffle_96_r_p::thread_p_shl1_cast_fu_186_p1() {
    p_shl1_cast_fu_186_p1 = esl_zext<12,9>(tmp_188_fu_178_p3.read());
}

void shuffle_96_r_p::thread_p_shl2_cast_fu_140_p1() {
    p_shl2_cast_fu_140_p1 = esl_zext<11,10>(tmp_s_fu_132_p3.read());
}

void shuffle_96_r_p::thread_p_shl3_cast_fu_152_p1() {
    p_shl3_cast_fu_152_p1 = esl_zext<11,8>(tmp_185_fu_144_p3.read());
}

void shuffle_96_r_p::thread_p_shl4_cast_fu_260_p3() {
    p_shl4_cast_fu_260_p3 = esl_concat<11,3>(tmp_78_fu_256_p1.read(), ap_const_lv3_0);
}

void shuffle_96_r_p::thread_p_shl5_cast_fu_268_p3() {
    p_shl5_cast_fu_268_p3 = esl_concat<13,1>(tmp_192_fu_251_p2.read(), ap_const_lv1_0);
}

void shuffle_96_r_p::thread_p_shl6_cast_fu_229_p3() {
    p_shl6_cast_fu_229_p3 = esl_concat<10,3>(tmp_77_fu_225_p1.read(), ap_const_lv3_0);
}

void shuffle_96_r_p::thread_p_shl7_cast_fu_237_p3() {
    p_shl7_cast_fu_237_p3 = esl_concat<12,1>(tmp_190_fu_220_p2.read(), ap_const_lv1_0);
}

void shuffle_96_r_p::thread_p_shl_cast_fu_174_p1() {
    p_shl_cast_fu_174_p1 = esl_zext<12,11>(tmp_187_fu_166_p3.read());
}

void shuffle_96_r_p::thread_right_r_address0() {
    right_r_address0 =  (sc_lv<12>) (tmp_269_cast_fu_307_p1.read());
}

void shuffle_96_r_p::thread_right_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        right_r_ce0 = ap_const_logic_1;
    } else {
        right_r_ce0 = ap_const_logic_0;
    }
}

void shuffle_96_r_p::thread_tmp_185_fu_144_p3() {
    tmp_185_fu_144_p3 = esl_concat<7,1>(tmp_fu_122_p4.read(), ap_const_lv1_0);
}

void shuffle_96_r_p::thread_tmp_186_fu_156_p2() {
    tmp_186_fu_156_p2 = (!p_shl2_cast_fu_140_p1.read().is_01() || !p_shl3_cast_fu_152_p1.read().is_01())? sc_lv<11>(): (sc_biguint<11>(p_shl2_cast_fu_140_p1.read()) - sc_biguint<11>(p_shl3_cast_fu_152_p1.read()));
}

void shuffle_96_r_p::thread_tmp_187_fu_166_p3() {
    tmp_187_fu_166_p3 = esl_concat<8,3>(co_reg_73.read(), ap_const_lv3_0);
}

void shuffle_96_r_p::thread_tmp_188_fu_178_p3() {
    tmp_188_fu_178_p3 = esl_concat<8,1>(co_reg_73.read(), ap_const_lv1_0);
}

void shuffle_96_r_p::thread_tmp_189_fu_190_p2() {
    tmp_189_fu_190_p2 = (!p_shl_cast_fu_174_p1.read().is_01() || !p_shl1_cast_fu_186_p1.read().is_01())? sc_lv<12>(): (sc_biguint<12>(p_shl_cast_fu_174_p1.read()) - sc_biguint<12>(p_shl1_cast_fu_186_p1.read()));
}

void shuffle_96_r_p::thread_tmp_190_fu_220_p2() {
    tmp_190_fu_220_p2 = (!tmp_cast_fu_216_p1.read().is_01() || !tmp_257_cast_reg_333.read().is_01())? sc_lv<12>(): (sc_biguint<12>(tmp_cast_fu_216_p1.read()) + sc_bigint<12>(tmp_257_cast_reg_333.read()));
}

void shuffle_96_r_p::thread_tmp_191_fu_245_p2() {
    tmp_191_fu_245_p2 = (!p_shl6_cast_fu_229_p3.read().is_01() || !p_shl7_cast_fu_237_p3.read().is_01())? sc_lv<13>(): (sc_biguint<13>(p_shl6_cast_fu_229_p3.read()) - sc_biguint<13>(p_shl7_cast_fu_237_p3.read()));
}

void shuffle_96_r_p::thread_tmp_192_fu_251_p2() {
    tmp_192_fu_251_p2 = (!tmp_cast9_fu_212_p1.read().is_01() || !tmp_260_cast_reg_338.read().is_01())? sc_lv<13>(): (sc_biguint<13>(tmp_cast9_fu_212_p1.read()) + sc_bigint<13>(tmp_260_cast_reg_338.read()));
}

void shuffle_96_r_p::thread_tmp_193_fu_276_p2() {
    tmp_193_fu_276_p2 = (!p_shl4_cast_fu_260_p3.read().is_01() || !p_shl5_cast_fu_268_p3.read().is_01())? sc_lv<14>(): (sc_biguint<14>(p_shl4_cast_fu_260_p3.read()) - sc_biguint<14>(p_shl5_cast_fu_268_p3.read()));
}

void shuffle_96_r_p::thread_tmp_194_fu_302_p2() {
    tmp_194_fu_302_p2 = (!tmp_191_reg_351.read().is_01() || !tmp_73_cast_fu_298_p1.read().is_01())? sc_lv<13>(): (sc_biguint<13>(tmp_191_reg_351.read()) + sc_biguint<13>(tmp_73_cast_fu_298_p1.read()));
}

void shuffle_96_r_p::thread_tmp_195_fu_312_p2() {
    tmp_195_fu_312_p2 = (!tmp_193_reg_356.read().is_01() || !tmp_73_cast8_fu_294_p1.read().is_01())? sc_lv<14>(): (sc_biguint<14>(tmp_193_reg_356.read()) + sc_biguint<14>(tmp_73_cast8_fu_294_p1.read()));
}

void shuffle_96_r_p::thread_tmp_257_cast_fu_162_p1() {
    tmp_257_cast_fu_162_p1 = esl_sext<12,11>(tmp_186_fu_156_p2.read());
}

void shuffle_96_r_p::thread_tmp_260_cast_fu_196_p1() {
    tmp_260_cast_fu_196_p1 = esl_sext<13,12>(tmp_189_fu_190_p2.read());
}

void shuffle_96_r_p::thread_tmp_269_cast_fu_307_p1() {
    tmp_269_cast_fu_307_p1 = esl_zext<64,13>(tmp_194_fu_302_p2.read());
}

void shuffle_96_r_p::thread_tmp_270_cast_fu_317_p1() {
    tmp_270_cast_fu_317_p1 = esl_zext<64,14>(tmp_195_reg_374.read());
}

void shuffle_96_r_p::thread_tmp_73_cast8_fu_294_p1() {
    tmp_73_cast8_fu_294_p1 = esl_zext<14,3>(w_reg_95.read());
}

void shuffle_96_r_p::thread_tmp_73_cast_fu_298_p1() {
    tmp_73_cast_fu_298_p1 = esl_zext<13,3>(w_reg_95.read());
}

void shuffle_96_r_p::thread_tmp_76_fu_106_p1() {
    tmp_76_fu_106_p1 = co_reg_73.read().range(1-1, 0);
}

void shuffle_96_r_p::thread_tmp_77_fu_225_p1() {
    tmp_77_fu_225_p1 = tmp_190_fu_220_p2.read().range(10-1, 0);
}

void shuffle_96_r_p::thread_tmp_78_fu_256_p1() {
    tmp_78_fu_256_p1 = tmp_192_fu_251_p2.read().range(11-1, 0);
}

void shuffle_96_r_p::thread_tmp_cast9_fu_212_p1() {
    tmp_cast9_fu_212_p1 = esl_zext<13,3>(h_reg_84.read());
}

void shuffle_96_r_p::thread_tmp_cast_fu_216_p1() {
    tmp_cast_fu_216_p1 = esl_zext<12,3>(h_reg_84.read());
}

void shuffle_96_r_p::thread_tmp_fu_122_p4() {
    tmp_fu_122_p4 = co_reg_73.read().range(7, 1);
}

void shuffle_96_r_p::thread_tmp_s_fu_132_p3() {
    tmp_s_fu_132_p3 = esl_concat<7,3>(tmp_fu_122_p4.read(), ap_const_lv3_0);
}

void shuffle_96_r_p::thread_w_13_fu_288_p2() {
    w_13_fu_288_p2 = (!w_reg_95.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(w_reg_95.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void shuffle_96_r_p::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond2_fu_110_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(exitcond1_fu_200_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(exitcond_fu_282_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        default : 
            ap_NS_fsm = "XXXXX";
            break;
    }
}

}

