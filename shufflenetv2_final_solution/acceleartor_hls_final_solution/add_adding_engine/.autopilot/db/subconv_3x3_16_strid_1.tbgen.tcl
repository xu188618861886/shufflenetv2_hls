set moduleName subconv_3x3_16_strid_1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {subconv_3x3_16_strid.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ weight_V int 8 regular {array 432 { 1 3 } 1 1 }  }
	{ bias_V int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ output_V int 8 regular {array 4800 { 0 3 } 0 1 }  }
	{ shuffleunit0_2_outpu int 8 regular {array 15552 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weight_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bias_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "output_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "shuffleunit0_2_outpu", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "shuffleunit0_2_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 47,"step" : 1},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ weight_V_address0 sc_out sc_lv 9 signal 0 } 
	{ weight_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ weight_V_q0 sc_in sc_lv 8 signal 0 } 
	{ bias_V_address0 sc_out sc_lv 6 signal 1 } 
	{ bias_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ bias_V_q0 sc_in sc_lv 8 signal 1 } 
	{ output_V_address0 sc_out sc_lv 13 signal 2 } 
	{ output_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ output_V_we0 sc_out sc_logic 1 signal 2 } 
	{ output_V_d0 sc_out sc_lv 8 signal 2 } 
	{ shuffleunit0_2_outpu_address0 sc_out sc_lv 14 signal 3 } 
	{ shuffleunit0_2_outpu_ce0 sc_out sc_logic 1 signal 3 } 
	{ shuffleunit0_2_outpu_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "weight_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight_V", "role": "address0" }} , 
 	{ "name": "weight_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "ce0" }} , 
 	{ "name": "weight_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_V", "role": "q0" }} , 
 	{ "name": "bias_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_V", "role": "address0" }} , 
 	{ "name": "bias_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_V", "role": "ce0" }} , 
 	{ "name": "bias_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bias_V", "role": "q0" }} , 
 	{ "name": "output_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "output_V", "role": "address0" }} , 
 	{ "name": "output_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V", "role": "ce0" }} , 
 	{ "name": "output_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V", "role": "we0" }} , 
 	{ "name": "output_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_V", "role": "d0" }} , 
 	{ "name": "shuffleunit0_2_outpu_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "shuffleunit0_2_outpu", "role": "address0" }} , 
 	{ "name": "shuffleunit0_2_outpu_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shuffleunit0_2_outpu", "role": "ce0" }} , 
 	{ "name": "shuffleunit0_2_outpu_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "shuffleunit0_2_outpu", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "subconv_3x3_16_strid_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "weight_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "shuffleunit0_2_outpu", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	subconv_3x3_16_strid_1 {
		weight_V {Type I LastRead 5 FirstWrite -1}
		bias_V {Type I LastRead 4 FirstWrite -1}
		output_V {Type O LastRead -1 FirstWrite 6}
		shuffleunit0_2_outpu {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "197473", "Max" : "197473"}
	, {"Name" : "Interval", "Min" : "197473", "Max" : "197473"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	weight_V { ap_memory {  { weight_V_address0 mem_address 1 9 }  { weight_V_ce0 mem_ce 1 1 }  { weight_V_q0 mem_dout 0 8 } } }
	bias_V { ap_memory {  { bias_V_address0 mem_address 1 6 }  { bias_V_ce0 mem_ce 1 1 }  { bias_V_q0 mem_dout 0 8 } } }
	output_V { ap_memory {  { output_V_address0 mem_address 1 13 }  { output_V_ce0 mem_ce 1 1 }  { output_V_we0 mem_we 1 1 }  { output_V_d0 mem_din 1 8 } } }
	shuffleunit0_2_outpu { ap_memory {  { shuffleunit0_2_outpu_address0 mem_address 1 14 }  { shuffleunit0_2_outpu_ce0 mem_ce 1 1 }  { shuffleunit0_2_outpu_q0 mem_dout 0 8 } } }
}