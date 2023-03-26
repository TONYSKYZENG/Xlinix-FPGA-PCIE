# This script segment is generated automatically by AutoPilot

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


