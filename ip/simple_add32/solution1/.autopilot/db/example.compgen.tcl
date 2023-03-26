# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_BUS_A {
a { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
b { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
c_i { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
c_o { 
	dir O
	width 8
	depth 1
	mode ap_vld
	offset 56
	offset_end 63
}
ver { 
	dir O
	width 8
	depth 1
	mode ap_vld
	offset 64
	offset_end 71
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict BUS_A $port_BUS_A


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 1 \
			corename example_BUS_A_axilite \
			name example_BUS_A_s_axi \
			ports {$port_BUS_A} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'BUS_A'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler example_BUS_A_s_axi BINDTYPE interface TYPE interface_s_axilite
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


