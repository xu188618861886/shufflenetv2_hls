// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _fc_HH_
#define _fc_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_mac_cud.h"

namespace ap_rtl {

struct fc : public sc_module {
    // Port declarations 104
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > m_axi_weight_V_AWVALID;
    sc_in< sc_logic > m_axi_weight_V_AWREADY;
    sc_out< sc_lv<32> > m_axi_weight_V_AWADDR;
    sc_out< sc_lv<1> > m_axi_weight_V_AWID;
    sc_out< sc_lv<32> > m_axi_weight_V_AWLEN;
    sc_out< sc_lv<3> > m_axi_weight_V_AWSIZE;
    sc_out< sc_lv<2> > m_axi_weight_V_AWBURST;
    sc_out< sc_lv<2> > m_axi_weight_V_AWLOCK;
    sc_out< sc_lv<4> > m_axi_weight_V_AWCACHE;
    sc_out< sc_lv<3> > m_axi_weight_V_AWPROT;
    sc_out< sc_lv<4> > m_axi_weight_V_AWQOS;
    sc_out< sc_lv<4> > m_axi_weight_V_AWREGION;
    sc_out< sc_lv<1> > m_axi_weight_V_AWUSER;
    sc_out< sc_logic > m_axi_weight_V_WVALID;
    sc_in< sc_logic > m_axi_weight_V_WREADY;
    sc_out< sc_lv<8> > m_axi_weight_V_WDATA;
    sc_out< sc_lv<1> > m_axi_weight_V_WSTRB;
    sc_out< sc_logic > m_axi_weight_V_WLAST;
    sc_out< sc_lv<1> > m_axi_weight_V_WID;
    sc_out< sc_lv<1> > m_axi_weight_V_WUSER;
    sc_out< sc_logic > m_axi_weight_V_ARVALID;
    sc_in< sc_logic > m_axi_weight_V_ARREADY;
    sc_out< sc_lv<32> > m_axi_weight_V_ARADDR;
    sc_out< sc_lv<1> > m_axi_weight_V_ARID;
    sc_out< sc_lv<32> > m_axi_weight_V_ARLEN;
    sc_out< sc_lv<3> > m_axi_weight_V_ARSIZE;
    sc_out< sc_lv<2> > m_axi_weight_V_ARBURST;
    sc_out< sc_lv<2> > m_axi_weight_V_ARLOCK;
    sc_out< sc_lv<4> > m_axi_weight_V_ARCACHE;
    sc_out< sc_lv<3> > m_axi_weight_V_ARPROT;
    sc_out< sc_lv<4> > m_axi_weight_V_ARQOS;
    sc_out< sc_lv<4> > m_axi_weight_V_ARREGION;
    sc_out< sc_lv<1> > m_axi_weight_V_ARUSER;
    sc_in< sc_logic > m_axi_weight_V_RVALID;
    sc_out< sc_logic > m_axi_weight_V_RREADY;
    sc_in< sc_lv<8> > m_axi_weight_V_RDATA;
    sc_in< sc_logic > m_axi_weight_V_RLAST;
    sc_in< sc_lv<1> > m_axi_weight_V_RID;
    sc_in< sc_lv<1> > m_axi_weight_V_RUSER;
    sc_in< sc_lv<2> > m_axi_weight_V_RRESP;
    sc_in< sc_logic > m_axi_weight_V_BVALID;
    sc_out< sc_logic > m_axi_weight_V_BREADY;
    sc_in< sc_lv<2> > m_axi_weight_V_BRESP;
    sc_in< sc_lv<1> > m_axi_weight_V_BID;
    sc_in< sc_lv<1> > m_axi_weight_V_BUSER;
    sc_in< sc_lv<32> > fc_weight_V11;
    sc_out< sc_lv<4> > bias_V_address0;
    sc_out< sc_logic > bias_V_ce0;
    sc_in< sc_lv<8> > bias_V_q0;
    sc_out< sc_logic > m_axi_output_V_AWVALID;
    sc_in< sc_logic > m_axi_output_V_AWREADY;
    sc_out< sc_lv<32> > m_axi_output_V_AWADDR;
    sc_out< sc_lv<1> > m_axi_output_V_AWID;
    sc_out< sc_lv<32> > m_axi_output_V_AWLEN;
    sc_out< sc_lv<3> > m_axi_output_V_AWSIZE;
    sc_out< sc_lv<2> > m_axi_output_V_AWBURST;
    sc_out< sc_lv<2> > m_axi_output_V_AWLOCK;
    sc_out< sc_lv<4> > m_axi_output_V_AWCACHE;
    sc_out< sc_lv<3> > m_axi_output_V_AWPROT;
    sc_out< sc_lv<4> > m_axi_output_V_AWQOS;
    sc_out< sc_lv<4> > m_axi_output_V_AWREGION;
    sc_out< sc_lv<1> > m_axi_output_V_AWUSER;
    sc_out< sc_logic > m_axi_output_V_WVALID;
    sc_in< sc_logic > m_axi_output_V_WREADY;
    sc_out< sc_lv<8> > m_axi_output_V_WDATA;
    sc_out< sc_lv<1> > m_axi_output_V_WSTRB;
    sc_out< sc_logic > m_axi_output_V_WLAST;
    sc_out< sc_lv<1> > m_axi_output_V_WID;
    sc_out< sc_lv<1> > m_axi_output_V_WUSER;
    sc_out< sc_logic > m_axi_output_V_ARVALID;
    sc_in< sc_logic > m_axi_output_V_ARREADY;
    sc_out< sc_lv<32> > m_axi_output_V_ARADDR;
    sc_out< sc_lv<1> > m_axi_output_V_ARID;
    sc_out< sc_lv<32> > m_axi_output_V_ARLEN;
    sc_out< sc_lv<3> > m_axi_output_V_ARSIZE;
    sc_out< sc_lv<2> > m_axi_output_V_ARBURST;
    sc_out< sc_lv<2> > m_axi_output_V_ARLOCK;
    sc_out< sc_lv<4> > m_axi_output_V_ARCACHE;
    sc_out< sc_lv<3> > m_axi_output_V_ARPROT;
    sc_out< sc_lv<4> > m_axi_output_V_ARQOS;
    sc_out< sc_lv<4> > m_axi_output_V_ARREGION;
    sc_out< sc_lv<1> > m_axi_output_V_ARUSER;
    sc_in< sc_logic > m_axi_output_V_RVALID;
    sc_out< sc_logic > m_axi_output_V_RREADY;
    sc_in< sc_lv<8> > m_axi_output_V_RDATA;
    sc_in< sc_logic > m_axi_output_V_RLAST;
    sc_in< sc_lv<1> > m_axi_output_V_RID;
    sc_in< sc_lv<1> > m_axi_output_V_RUSER;
    sc_in< sc_lv<2> > m_axi_output_V_RRESP;
    sc_in< sc_logic > m_axi_output_V_BVALID;
    sc_out< sc_logic > m_axi_output_V_BREADY;
    sc_in< sc_lv<2> > m_axi_output_V_BRESP;
    sc_in< sc_lv<1> > m_axi_output_V_BID;
    sc_in< sc_lv<1> > m_axi_output_V_BUSER;
    sc_in< sc_lv<32> > fc_output_V15;
    sc_out< sc_lv<9> > avgpool_output_V_address0;
    sc_out< sc_logic > avgpool_output_V_ce0;
    sc_in< sc_lv<8> > avgpool_output_V_q0;


    // Module declarations
    fc(sc_module_name name);
    SC_HAS_PROCESS(fc);

    ~fc();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mac_cud<1,1,8,8,8,8>* ShuffleNetV2_mac_cud_x_U779;
    sc_signal< sc_lv<18> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > weight_V_blk_n_AR;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > weight_V_blk_n_R;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > output_V_blk_n_AW;
    sc_signal< sc_logic > output_V_blk_n_W;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > output_V_blk_n_B;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > ap_sig_ioackin_m_axi_output_V_AWREADY;
    sc_signal< sc_lv<32> > co_cast2_fu_174_p1;
    sc_signal< sc_lv<32> > co_cast2_reg_252;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > co_33_fu_192_p2;
    sc_signal< sc_lv<4> > co_33_reg_260;
    sc_signal< sc_lv<32> > weight_V_addr_reg_265;
    sc_signal< sc_lv<1> > exitcond42_fu_186_p2;
    sc_signal< sc_lv<10> > ci_15_fu_224_p2;
    sc_signal< sc_lv<10> > ci_15_reg_274;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > exitcond_fu_218_p2;
    sc_signal< sc_lv<8> > weight_V_addr_read_reg_289;
    sc_signal< sc_lv<8> > avgpool_output_V_loa_reg_294;
    sc_signal< sc_lv<8> > grp_fu_236_p3;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<8> > result_V_fu_230_p2;
    sc_signal< sc_lv<8> > result_V_reg_304;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<4> > co_reg_133;
    sc_signal< sc_logic > ap_sig_ioackin_m_axi_output_V_WREADY;
    sc_signal< sc_lv<8> > p_s_reg_144;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<10> > ci_reg_156;
    sc_signal< sc_lv<32> > ci_cast1_fu_213_p1;
    sc_signal< sc_lv<32> > tmp_677_fu_202_p2;
    sc_signal< sc_logic > ap_reg_ioackin_m_axi_output_V_AWREADY;
    sc_signal< sc_logic > ap_reg_ioackin_m_axi_output_V_WREADY;
    sc_signal< sc_logic > ap_reg_ioackin_m_axi_weight_V_ARREADY;
    sc_signal< sc_logic > ap_sig_ioackin_m_axi_weight_V_ARREADY;
    sc_signal< sc_lv<13> > tmp_s_fu_178_p3;
    sc_signal< sc_lv<32> > tmp_676_fu_198_p1;
    sc_signal< sc_lv<18> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<18> ap_ST_fsm_state1;
    static const sc_lv<18> ap_ST_fsm_state2;
    static const sc_lv<18> ap_ST_fsm_state3;
    static const sc_lv<18> ap_ST_fsm_state4;
    static const sc_lv<18> ap_ST_fsm_state5;
    static const sc_lv<18> ap_ST_fsm_state6;
    static const sc_lv<18> ap_ST_fsm_state7;
    static const sc_lv<18> ap_ST_fsm_state8;
    static const sc_lv<18> ap_ST_fsm_state9;
    static const sc_lv<18> ap_ST_fsm_state10;
    static const sc_lv<18> ap_ST_fsm_state11;
    static const sc_lv<18> ap_ST_fsm_state12;
    static const sc_lv<18> ap_ST_fsm_state13;
    static const sc_lv<18> ap_ST_fsm_state14;
    static const sc_lv<18> ap_ST_fsm_state15;
    static const sc_lv<18> ap_ST_fsm_state16;
    static const sc_lv<18> ap_ST_fsm_state17;
    static const sc_lv<18> ap_ST_fsm_state18;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<32> ap_const_lv32_200;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<10> ap_const_lv10_200;
    static const sc_lv<10> ap_const_lv10_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_ioackin_m_axi_output_V_AWREADY();
    void thread_ap_sig_ioackin_m_axi_output_V_WREADY();
    void thread_ap_sig_ioackin_m_axi_weight_V_ARREADY();
    void thread_avgpool_output_V_address0();
    void thread_avgpool_output_V_ce0();
    void thread_bias_V_address0();
    void thread_bias_V_ce0();
    void thread_ci_15_fu_224_p2();
    void thread_ci_cast1_fu_213_p1();
    void thread_co_33_fu_192_p2();
    void thread_co_cast2_fu_174_p1();
    void thread_exitcond42_fu_186_p2();
    void thread_exitcond_fu_218_p2();
    void thread_m_axi_output_V_ARADDR();
    void thread_m_axi_output_V_ARBURST();
    void thread_m_axi_output_V_ARCACHE();
    void thread_m_axi_output_V_ARID();
    void thread_m_axi_output_V_ARLEN();
    void thread_m_axi_output_V_ARLOCK();
    void thread_m_axi_output_V_ARPROT();
    void thread_m_axi_output_V_ARQOS();
    void thread_m_axi_output_V_ARREGION();
    void thread_m_axi_output_V_ARSIZE();
    void thread_m_axi_output_V_ARUSER();
    void thread_m_axi_output_V_ARVALID();
    void thread_m_axi_output_V_AWADDR();
    void thread_m_axi_output_V_AWBURST();
    void thread_m_axi_output_V_AWCACHE();
    void thread_m_axi_output_V_AWID();
    void thread_m_axi_output_V_AWLEN();
    void thread_m_axi_output_V_AWLOCK();
    void thread_m_axi_output_V_AWPROT();
    void thread_m_axi_output_V_AWQOS();
    void thread_m_axi_output_V_AWREGION();
    void thread_m_axi_output_V_AWSIZE();
    void thread_m_axi_output_V_AWUSER();
    void thread_m_axi_output_V_AWVALID();
    void thread_m_axi_output_V_BREADY();
    void thread_m_axi_output_V_RREADY();
    void thread_m_axi_output_V_WDATA();
    void thread_m_axi_output_V_WID();
    void thread_m_axi_output_V_WLAST();
    void thread_m_axi_output_V_WSTRB();
    void thread_m_axi_output_V_WUSER();
    void thread_m_axi_output_V_WVALID();
    void thread_m_axi_weight_V_ARADDR();
    void thread_m_axi_weight_V_ARBURST();
    void thread_m_axi_weight_V_ARCACHE();
    void thread_m_axi_weight_V_ARID();
    void thread_m_axi_weight_V_ARLEN();
    void thread_m_axi_weight_V_ARLOCK();
    void thread_m_axi_weight_V_ARPROT();
    void thread_m_axi_weight_V_ARQOS();
    void thread_m_axi_weight_V_ARREGION();
    void thread_m_axi_weight_V_ARSIZE();
    void thread_m_axi_weight_V_ARUSER();
    void thread_m_axi_weight_V_ARVALID();
    void thread_m_axi_weight_V_AWADDR();
    void thread_m_axi_weight_V_AWBURST();
    void thread_m_axi_weight_V_AWCACHE();
    void thread_m_axi_weight_V_AWID();
    void thread_m_axi_weight_V_AWLEN();
    void thread_m_axi_weight_V_AWLOCK();
    void thread_m_axi_weight_V_AWPROT();
    void thread_m_axi_weight_V_AWQOS();
    void thread_m_axi_weight_V_AWREGION();
    void thread_m_axi_weight_V_AWSIZE();
    void thread_m_axi_weight_V_AWUSER();
    void thread_m_axi_weight_V_AWVALID();
    void thread_m_axi_weight_V_BREADY();
    void thread_m_axi_weight_V_RREADY();
    void thread_m_axi_weight_V_WDATA();
    void thread_m_axi_weight_V_WID();
    void thread_m_axi_weight_V_WLAST();
    void thread_m_axi_weight_V_WSTRB();
    void thread_m_axi_weight_V_WUSER();
    void thread_m_axi_weight_V_WVALID();
    void thread_output_V_blk_n_AW();
    void thread_output_V_blk_n_B();
    void thread_output_V_blk_n_W();
    void thread_result_V_fu_230_p2();
    void thread_tmp_676_fu_198_p1();
    void thread_tmp_677_fu_202_p2();
    void thread_tmp_s_fu_178_p3();
    void thread_weight_V_blk_n_AR();
    void thread_weight_V_blk_n_R();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif