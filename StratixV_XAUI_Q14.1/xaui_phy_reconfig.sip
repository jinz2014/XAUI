set_global_assignment -entity "xaui_phy_reconfig" -library "lib_xaui_phy_reconfig" -name IP_TOOL_NAME "alt_xcvr_reconfig"
set_global_assignment -entity "xaui_phy_reconfig" -library "lib_xaui_phy_reconfig" -name IP_TOOL_VERSION "14.1"
set_global_assignment -entity "xaui_phy_reconfig" -library "lib_xaui_phy_reconfig" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_xaui_phy_reconfig" -name SPD_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig.spd"]

set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/xaui_phy_reconfig.v"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/altera_xcvr_functions.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/altera_xcvr_functions.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/sv_xcvr_h.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/sv_xcvr_h.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_resync.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_resync.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_h.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_h.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/sv_xcvr_dfe_cal_sweep_h.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/sv_xcvr_dfe_cal_sweep_h.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cal_seq.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_cal_seq.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_cif.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_cif.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_uif.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_uif.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_basic_acq.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_basic_acq.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_analog.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_analog.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_analog_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_analog_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_analog_datactrl.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_analog_datactrl.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_analog_rmw.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_analog_rmw.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_analog_ctrlsm.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_analog_ctrlsm.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_offset_cancellation.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_offset_cancellation.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_offset_cancellation_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_offset_cancellation_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_eyemon.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_eyemon.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_eyemon_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_eyemon_ctrl_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_eyemon_ber_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/ber_reader_dcfifo.v"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/step_to_mon_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mon_to_step_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_eyemon_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_eyemon_ctrl_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_eyemon_ber_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/ber_reader_dcfifo.v"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/step_to_mon_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/mon_to_step_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe_reg_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe_cal_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe_cal_sweep_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe_cal_sweep_datapath_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe_oc_cal_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe_pi_phase_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe_step_to_mon_en_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe_adapt_tap_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe_ctrl_mux_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe_local_reset_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe_cal_sim_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe_adapt_tap_sim_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe_reg_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe_cal_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe_cal_sweep_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe_cal_sweep_datapath_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe_oc_cal_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe_pi_phase_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe_step_to_mon_en_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe_adapt_tap_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe_ctrl_mux_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe_local_reset_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe_cal_sim_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe_adapt_tap_sim_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_adce.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_adce.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_adce_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_adce_datactrl_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_adce_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_adce_datactrl_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_cal.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_control.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_datapath.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_pll_reset.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_eye_width.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_align_clk.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_get_sum.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_cal_sim_model.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_sv.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_cal.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_control.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_datapath.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_pll_reset.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_eye_width.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_align_clk.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_get_sum.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_cal_sim_model.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_mif.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_mif.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/sv_xcvr_reconfig_mif.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/sv_xcvr_reconfig_mif_ctrl.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/sv_xcvr_reconfig_mif_avmm.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/sv_xcvr_reconfig_mif.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/sv_xcvr_reconfig_mif_ctrl.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/sv_xcvr_reconfig_mif_avmm.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_pll.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_pll.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/sv_xcvr_reconfig_pll.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/sv_xcvr_reconfig_pll_ctrl.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/sv_xcvr_reconfig_pll.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/sv_xcvr_reconfig_pll_ctrl.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_soc.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_ram.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_ram.hex"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_direct.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/sv_xrbasic_l2p_addr.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/sv_xrbasic_l2p_ch.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/sv_xrbasic_l2p_rom.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/sv_xrbasic_lif_csr.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/sv_xrbasic_lif.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/sv_xcvr_reconfig_basic.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_arbiter_acq.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_basic.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/sv_xrbasic_l2p_addr.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/sv_xrbasic_l2p_ch.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/sv_xrbasic_l2p_rom.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/sv_xrbasic_lif_csr.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/sv_xrbasic_lif.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/sv_xcvr_reconfig_basic.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_arbiter_acq.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_basic.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_arbiter.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_m2s.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/altera_wait_generate.v"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_csr_selector.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_arbiter.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_m2s.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/altera_wait_generate.v"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_csr_selector.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/sv_reconfig_bundle_to_basic.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor/sv_reconfig_bundle_to_basic.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu.v"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_reconfig_cpu_rf_ram_b.mif"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_reconfig_cpu_rf_ram_a.hex"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_reconfig_cpu_rf_ram_b.hex"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_reconfig_cpu_rf_ram_a.dat"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_reconfig_cpu_rf_ram_a.mif"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_reconfig_cpu_rf_ram_b.dat"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_reconfig_cpu_nios2_waves.do"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_reconfig_cpu_test_bench.v"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_reconfig_cpu.v"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0.v"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_irq_mapper.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/altera_reset_controller.v"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/altera_reset_synchronizer.v"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/altera_reset_controller.sdc"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/altera_merlin_master_translator.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/altera_merlin_slave_translator.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/altera_merlin_master_agent.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/altera_merlin_slave_agent.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/altera_merlin_burst_uncompressor.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/altera_avalon_sc_fifo.v"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_router.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_router_001.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_router_002.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_router_003.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_cmd_demux.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_cmd_demux_001.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/altera_merlin_arbitrator.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_cmd_mux.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_cmd_mux_001.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_rsp_mux.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_mm_interconnect_0_rsp_mux_001.sv"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/plain_files.txt"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/mentor_files.txt"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/cadence_files.txt"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/synopsys_files.txt"]
set_global_assignment -library "lib_xaui_phy_reconfig" -name MISC_FILE [file join $::quartus(sip_path) "xaui_phy_reconfig_sim/alt_xcvr_reconfig/aldec_files.txt"]
