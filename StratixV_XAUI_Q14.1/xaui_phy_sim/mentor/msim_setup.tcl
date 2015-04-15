
# (C) 2001-2015 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 14.1 186 linux 2015.04.07.16:25:09

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "xaui_phy"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "/share/jinz/Quartus14.1/quartus/"
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
  ensure_lib                       ./libraries/altera_ver/           
  vmap       altera_ver            ./libraries/altera_ver/           
  ensure_lib                       ./libraries/lpm_ver/              
  vmap       lpm_ver               ./libraries/lpm_ver/              
  ensure_lib                       ./libraries/sgate_ver/            
  vmap       sgate_ver             ./libraries/sgate_ver/            
  ensure_lib                       ./libraries/altera_mf_ver/        
  vmap       altera_mf_ver         ./libraries/altera_mf_ver/        
  ensure_lib                       ./libraries/altera_lnsim_ver/     
  vmap       altera_lnsim_ver      ./libraries/altera_lnsim_ver/     
  ensure_lib                       ./libraries/stratixv_ver/         
  vmap       stratixv_ver          ./libraries/stratixv_ver/         
  ensure_lib                       ./libraries/stratixv_hssi_ver/    
  vmap       stratixv_hssi_ver     ./libraries/stratixv_hssi_ver/    
  ensure_lib                       ./libraries/stratixv_pcie_hip_ver/
  vmap       stratixv_pcie_hip_ver ./libraries/stratixv_pcie_hip_ver/
}
ensure_lib          ./libraries/xaui_phy/
vmap       xaui_phy ./libraries/xaui_phy/

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                     -work altera_ver           
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                              -work lpm_ver              
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                 -work sgate_ver            
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                             -work altera_mf_ver        
    vlog -sv "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                         -work altera_lnsim_ver     
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/stratixv_atoms_ncrypt.v"          -work stratixv_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_atoms.v"                        -work stratixv_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/stratixv_hssi_atoms_ncrypt.v"     -work stratixv_hssi_ver    
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_hssi_atoms.v"                   -work stratixv_hssi_ver    
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/stratixv_pcie_hip_atoms_ncrypt.v" -work stratixv_pcie_hip_ver
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_pcie_hip_atoms.v"               -work stratixv_pcie_hip_ver
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/altera_xcvr_functions.sv"                       -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/altera_xcvr_functions.sv"                -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/alt_pma_functions.sv"                           -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_pma_functions.sv"                    -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/altera_xcvr_xaui.sv"                            -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/hxaui_csr_h.sv"                                 -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/hxaui_csr.sv"                                   -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_mgmt2dec_phyreconfig.sv"               -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_mgmt2dec_xaui.sv"                      -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/altera_xcvr_xaui.sv"                     -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/hxaui_csr_h.sv"                          -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/hxaui_csr.sv"                            -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_xcvr_mgmt2dec_phyreconfig.sv"        -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_xcvr_mgmt2dec_xaui.sv"               -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/alt_pma_controller_tgx.v"                       -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_pma_controller_tgx.v"                -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/alt_reset_ctrl_lego.sv"                         -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/alt_reset_ctrl_tgx_cdrauto.sv"                  -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_resync.sv"                             -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_reset_ctrl_lego.sv"                  -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_reset_ctrl_tgx_cdrauto.sv"           -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_xcvr_resync.sv"                      -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_csr_common_h.sv"                       -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_csr_common.sv"                         -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_csr_pcs8g_h.sv"                        -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_csr_pcs8g.sv"                          -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_csr_selector.sv"                       -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_mgmt2dec.sv"                           -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/altera_wait_generate.v"                         -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_xcvr_csr_common_h.sv"                -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_xcvr_csr_common.sv"                  -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_xcvr_csr_pcs8g_h.sv"                 -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_xcvr_csr_pcs8g.sv"                   -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_xcvr_csr_selector.sv"                -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_xcvr_mgmt2dec.sv"                    -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/altera_wait_generate.v"                  -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/altera_xcvr_reset_control.sv"                   -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_reset_counter.sv"                      -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/altera_xcvr_reset_control.sv"            -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_xcvr_reset_counter.sv"               -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_pcs.v"                     -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_reset.v"                   -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_rx.v"                      -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_rx_8b10b_dec.v"            -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_rx_channel_synch.v"        -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_rx_deskew.v"               -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_rx_deskew_channel.v"       -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_rx_deskew_ram.v"           -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/altera_soft_xaui_rx_deskew_ram.v"        -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_rx_invalid_code_det.v"     -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_rx_parity.v"               -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_rx_parity_4b.v"            -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_rx_parity_6b.v"            -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_rx_rate_match.v"           -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_rx_rate_match_ram.v"       -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_rx_rl_chk_6g.v"            -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_rx_sm.v"                   -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_tx.v"                      -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_tx_8b10b_enc.v"            -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_soft_xaui_tx_idle_conv.v"            -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/l_modules.v"                             -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/serdes_4_unit_lc_siv.v"                  -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/serdes_4_unit_siv.v"                     -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/serdes_4unit.v"                          -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/sxaui.v"                                        -work xaui_phy
  vlog     "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sxaui.v"                                 -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_xaui.sv"                                -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_xcvr_xaui.sv"                         -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_low_latency_phy_nr.sv"                  -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_xcvr_low_latency_phy_nr.sv"           -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_pcs.sv"                                      -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_pcs_ch.sv"                                   -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_pma.sv"                                      -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_reconfig_bundle_to_xcvr.sv"                  -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_reconfig_bundle_to_ip.sv"                    -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_reconfig_bundle_merger.sv"                   -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_rx_pma.sv"                                   -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_tx_pma.sv"                                   -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_tx_pma_ch.sv"                                -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_h.sv"                                   -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_avmm_csr.sv"                            -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_avmm_dcd.sv"                            -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_avmm.sv"                                -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_data_adapter.sv"                        -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_native.sv"                              -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_plls.sv"                                -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_pcs.sv"                               -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_pcs_ch.sv"                            -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_pma.sv"                               -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_reconfig_bundle_to_xcvr.sv"           -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_reconfig_bundle_to_ip.sv"             -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_reconfig_bundle_merger.sv"            -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_rx_pma.sv"                            -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_tx_pma.sv"                            -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_tx_pma_ch.sv"                         -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_xcvr_h.sv"                            -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_xcvr_avmm_csr.sv"                     -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_xcvr_avmm_dcd.sv"                     -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_xcvr_avmm.sv"                         -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_xcvr_data_adapter.sv"                 -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_xcvr_native.sv"                       -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_xcvr_plls.sv"                         -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_10g_rx_pcs_rbc.sv"                      -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_10g_tx_pcs_rbc.sv"                      -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_8g_rx_pcs_rbc.sv"                       -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_8g_tx_pcs_rbc.sv"                       -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_8g_pcs_aggregate_rbc.sv"                -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_common_pcs_pma_interface_rbc.sv"        -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_common_pld_pcs_interface_rbc.sv"        -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_pipe_gen1_2_rbc.sv"                     -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_pipe_gen3_rbc.sv"                       -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_rx_pcs_pma_interface_rbc.sv"            -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_rx_pld_pcs_interface_rbc.sv"            -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_tx_pcs_pma_interface_rbc.sv"            -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_tx_pld_pcs_interface_rbc.sv"            -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_hssi_10g_rx_pcs_rbc.sv"               -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_hssi_10g_tx_pcs_rbc.sv"               -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_hssi_8g_rx_pcs_rbc.sv"                -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_hssi_8g_tx_pcs_rbc.sv"                -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_hssi_8g_pcs_aggregate_rbc.sv"         -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_hssi_common_pcs_pma_interface_rbc.sv" -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_hssi_common_pld_pcs_interface_rbc.sv" -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_hssi_pipe_gen1_2_rbc.sv"              -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_hssi_pipe_gen3_rbc.sv"                -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_hssi_rx_pcs_pma_interface_rbc.sv"     -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_hssi_rx_pld_pcs_interface_rbc.sv"     -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_hssi_tx_pcs_pma_interface_rbc.sv"     -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_hssi_tx_pld_pcs_interface_rbc.sv"     -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_custom_native.sv"                       -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/sv_xcvr_custom_native.sv"                -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_arbiter.sv"                            -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_m2s.sv"                                -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_xcvr_arbiter.sv"                     -work xaui_phy
  vlog -sv "$QSYS_SIMDIR/altera_xcvr_xaui/mentor/alt_xcvr_m2s.sv"                         -work xaui_phy
  vlog     "$QSYS_SIMDIR/xaui_phy.v"                                                                    
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS -L work -L work_lib -L xaui_phy -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L stratixv_ver -L stratixv_hssi_ver -L stratixv_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS -L work -L work_lib -L xaui_phy -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L stratixv_ver -L stratixv_hssi_ver -L stratixv_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
