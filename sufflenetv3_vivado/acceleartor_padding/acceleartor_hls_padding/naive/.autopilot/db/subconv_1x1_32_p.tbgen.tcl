set moduleName subconv_1x1_32_p
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {subconv_1x1_32_p}
set C_modelType { void 0 }
set C_modelArgList {
	{ weight float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ bias float 32 regular {array 24 { 1 3 } 1 1 }  }
	{ conv1_output_p float 32 regular {array 27744 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_0_Downs float 32 regular {array 27744 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weight", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bias", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_output_p", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "conv1_output_p","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 23,"step" : 1},{"low" : 0,"up" : 33,"step" : 1},{"low" : 0,"up" : 33,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_0_Downs", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ShuffleConvs_0_DownsampleUnit__conv1r_output_p","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 23,"step" : 1},{"low" : 0,"up" : 33,"step" : 1},{"low" : 0,"up" : 33,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ weight_address0 sc_out sc_lv 10 signal 0 } 
	{ weight_ce0 sc_out sc_logic 1 signal 0 } 
	{ weight_q0 sc_in sc_lv 32 signal 0 } 
	{ bias_address0 sc_out sc_lv 5 signal 1 } 
	{ bias_ce0 sc_out sc_logic 1 signal 1 } 
	{ bias_q0 sc_in sc_lv 32 signal 1 } 
	{ conv1_output_p_address0 sc_out sc_lv 15 signal 2 } 
	{ conv1_output_p_ce0 sc_out sc_logic 1 signal 2 } 
	{ conv1_output_p_q0 sc_in sc_lv 32 signal 2 } 
	{ ShuffleConvs_0_Downs_address0 sc_out sc_lv 15 signal 3 } 
	{ ShuffleConvs_0_Downs_ce0 sc_out sc_logic 1 signal 3 } 
	{ ShuffleConvs_0_Downs_we0 sc_out sc_logic 1 signal 3 } 
	{ ShuffleConvs_0_Downs_d0 sc_out sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "weight_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weight", "role": "address0" }} , 
 	{ "name": "weight_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight", "role": "ce0" }} , 
 	{ "name": "weight_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight", "role": "q0" }} , 
 	{ "name": "bias_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bias", "role": "address0" }} , 
 	{ "name": "bias_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "ce0" }} , 
 	{ "name": "bias_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias", "role": "q0" }} , 
 	{ "name": "conv1_output_p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv1_output_p", "role": "address0" }} , 
 	{ "name": "conv1_output_p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1_output_p", "role": "ce0" }} , 
 	{ "name": "conv1_output_p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_output_p", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_0_Downs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ShuffleConvs_0_Downs", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_0_Downs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_0_Downs", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_0_Downs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_0_Downs", "role": "we0" }} , 
 	{ "name": "ShuffleConvs_0_Downs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ShuffleConvs_0_Downs", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "subconv_1x1_32_p",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "weight", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv1_output_p", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_0_Downs", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ShuffleNetV2_faddbkb_x_U8", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ShuffleNetV2_fmulcud_x_U9", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ShuffleNetV2_fcmpdEe_x_U10", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	subconv_1x1_32_p {
		weight {Type I LastRead 5 FirstWrite -1}
		bias {Type I LastRead 4 FirstWrite -1}
		conv1_output_p {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_0_Downs {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7325233", "Max" : "7325233"}
	, {"Name" : "Interval", "Min" : "7325233", "Max" : "7325233"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	weight { ap_memory {  { weight_address0 mem_address 1 10 }  { weight_ce0 mem_ce 1 1 }  { weight_q0 mem_dout 0 32 } } }
	bias { ap_memory {  { bias_address0 mem_address 1 5 }  { bias_ce0 mem_ce 1 1 }  { bias_q0 mem_dout 0 32 } } }
	conv1_output_p { ap_memory {  { conv1_output_p_address0 mem_address 1 15 }  { conv1_output_p_ce0 mem_ce 1 1 }  { conv1_output_p_q0 mem_dout 0 32 } } }
	ShuffleConvs_0_Downs { ap_memory {  { ShuffleConvs_0_Downs_address0 mem_address 1 15 }  { ShuffleConvs_0_Downs_ce0 mem_ce 1 1 }  { ShuffleConvs_0_Downs_we0 mem_we 1 1 }  { ShuffleConvs_0_Downs_d0 mem_din 1 32 } } }
}