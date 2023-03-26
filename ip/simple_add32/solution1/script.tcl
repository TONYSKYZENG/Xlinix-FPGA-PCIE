############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project simple_add32
set_top example
add_files simple_add32/example.cpp
add_files -tb simple_add32/example_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7k325t-fbg676-2}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./simple_add32/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
