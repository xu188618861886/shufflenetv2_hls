# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 107 \
    name left_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename left_V \
    op interface \
    ports { left_V_address0 { O 13 vector } left_V_ce0 { O 1 bit } left_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'left_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 108 \
    name output_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_V \
    op interface \
    ports { output_V_address0 { O 14 vector } output_V_ce0 { O 1 bit } output_V_we0 { O 1 bit } output_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 109 \
    name buffer1_1_24_16x16_p_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer1_1_24_16x16_p_7 \
    op interface \
    ports { buffer1_1_24_16x16_p_7_address0 { O 10 vector } buffer1_1_24_16x16_p_7_ce0 { O 1 bit } buffer1_1_24_16x16_p_7_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 110 \
    name buffer1_1_24_16x16_p_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer1_1_24_16x16_p_6 \
    op interface \
    ports { buffer1_1_24_16x16_p_6_address0 { O 10 vector } buffer1_1_24_16x16_p_6_ce0 { O 1 bit } buffer1_1_24_16x16_p_6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 111 \
    name buffer1_1_24_16x16_p_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer1_1_24_16x16_p_5 \
    op interface \
    ports { buffer1_1_24_16x16_p_5_address0 { O 10 vector } buffer1_1_24_16x16_p_5_ce0 { O 1 bit } buffer1_1_24_16x16_p_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 112 \
    name buffer1_1_24_16x16_p_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer1_1_24_16x16_p_4 \
    op interface \
    ports { buffer1_1_24_16x16_p_4_address0 { O 10 vector } buffer1_1_24_16x16_p_4_ce0 { O 1 bit } buffer1_1_24_16x16_p_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 113 \
    name buffer1_1_24_16x16_p_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer1_1_24_16x16_p_3 \
    op interface \
    ports { buffer1_1_24_16x16_p_3_address0 { O 10 vector } buffer1_1_24_16x16_p_3_ce0 { O 1 bit } buffer1_1_24_16x16_p_3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name buffer1_1_24_16x16_p_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer1_1_24_16x16_p_2 \
    op interface \
    ports { buffer1_1_24_16x16_p_2_address0 { O 10 vector } buffer1_1_24_16x16_p_2_ce0 { O 1 bit } buffer1_1_24_16x16_p_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name buffer1_1_24_16x16_p_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer1_1_24_16x16_p_1 \
    op interface \
    ports { buffer1_1_24_16x16_p_1_address0 { O 10 vector } buffer1_1_24_16x16_p_1_ce0 { O 1 bit } buffer1_1_24_16x16_p_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name buffer1_1_24_16x16_p \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer1_1_24_16x16_p \
    op interface \
    ports { buffer1_1_24_16x16_p_address0 { O 10 vector } buffer1_1_24_16x16_p_ce0 { O 1 bit } buffer1_1_24_16x16_p_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}

