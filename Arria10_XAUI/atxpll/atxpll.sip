set_global_assignment -entity "atxpll" -library "lib_atxpll" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "atxpll" -library "lib_atxpll" -name IP_TOOL_VERSION "14.1"
set_global_assignment -entity "atxpll" -library "lib_atxpll" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_atxpll" -name SPD_FILE [file join $::quartus(sip_path) "atxpll.spd"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "../atxpll.qsys"]

set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "sim/atxpll.v"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/twentynm_xcvr_avmm.sv"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/mentor/twentynm_xcvr_avmm.sv"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/alt_xcvr_resync.sv"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/mentor/alt_xcvr_resync.sv"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/a10_avmm_h.sv"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/alt_xcvr_native_avmm_nf.sv"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/mentor/a10_avmm_h.sv"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/mentor/alt_xcvr_native_avmm_nf.sv"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/altera_xcvr_atx_pll_a10.sv"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/a10_xcvr_atx_pll.sv"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/alt_xcvr_pll_embedded_debug.sv"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/alt_xcvr_pll_avmm_csr.sv"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/mentor/altera_xcvr_atx_pll_a10.sv"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/mentor/a10_xcvr_atx_pll.sv"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/mentor/alt_xcvr_pll_embedded_debug.sv"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/mentor/alt_xcvr_pll_avmm_csr.sv"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/plain_files.txt"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/mentor_files.txt"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/cadence_files.txt"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/synopsys_files.txt"]
set_global_assignment -library "lib_atxpll" -name MISC_FILE [file join $::quartus(sip_path) "altera_xcvr_atx_pll_a10_141/sim/aldec_files.txt"]
