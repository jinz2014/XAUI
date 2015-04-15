
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
# vcsmx - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="xaui_phy"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="/share/jinz/Quartus14.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/xaui_phy/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/stratixv_ver/
mkdir -p ./libraries/stratixv_hssi_ver/
mkdir -p ./libraries/stratixv_pcie_hip_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                       -work altera_ver           
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                                -work lpm_ver              
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                   -work sgate_ver            
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                               -work altera_mf_ver        
  vlogan +v2k -sverilog "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                           -work altera_lnsim_ver     
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/stratixv_atoms_ncrypt.v"          -work stratixv_ver         
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_atoms.v"                          -work stratixv_ver         
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/stratixv_hssi_atoms_ncrypt.v"     -work stratixv_hssi_ver    
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_hssi_atoms.v"                     -work stratixv_hssi_ver    
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/stratixv_pcie_hip_atoms_ncrypt.v" -work stratixv_pcie_hip_ver
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_pcie_hip_atoms.v"                 -work stratixv_pcie_hip_ver
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/altera_xcvr_functions.sv"                     -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/alt_pma_functions.sv"                         -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/altera_xcvr_xaui.sv"                          -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/hxaui_csr_h.sv"                               -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/hxaui_csr.sv"                                 -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_mgmt2dec_phyreconfig.sv"             -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_mgmt2dec_xaui.sv"                    -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/alt_pma_controller_tgx.v"                     -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/alt_reset_ctrl_lego.sv"                       -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/alt_reset_ctrl_tgx_cdrauto.sv"                -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_resync.sv"                           -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_csr_common_h.sv"                     -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_csr_common.sv"                       -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_csr_pcs8g_h.sv"                      -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_csr_pcs8g.sv"                        -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_csr_selector.sv"                     -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_mgmt2dec.sv"                         -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/altera_wait_generate.v"                       -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/altera_xcvr_reset_control.sv"                 -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_reset_counter.sv"                    -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_pcs.v"                 -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_reset.v"               -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_rx.v"                  -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_rx_8b10b_dec.v"        -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_rx_channel_synch.v"    -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_rx_deskew.v"           -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_rx_deskew_channel.v"   -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_rx_deskew_ram.v"       -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/altera_soft_xaui_rx_deskew_ram.v"    -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_rx_invalid_code_det.v" -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_rx_parity.v"           -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_rx_parity_4b.v"        -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_rx_parity_6b.v"        -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_rx_rate_match.v"       -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_rx_rate_match_ram.v"   -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_rx_rl_chk_6g.v"        -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_rx_sm.v"               -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_tx.v"                  -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_tx_8b10b_enc.v"        -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/alt_soft_xaui_tx_idle_conv.v"        -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/l_modules.v"                         -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/serdes_4_unit_lc_siv.v"              -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/serdes_4_unit_siv.v"                 -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/synopsys/serdes_4unit.v"                      -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/altera_xcvr_xaui/sxaui.v"                                      -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_xaui.sv"                              -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_low_latency_phy_nr.sv"                -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_pcs.sv"                                    -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_pcs_ch.sv"                                 -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_pma.sv"                                    -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_reconfig_bundle_to_xcvr.sv"                -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_reconfig_bundle_to_ip.sv"                  -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_reconfig_bundle_merger.sv"                 -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_rx_pma.sv"                                 -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_tx_pma.sv"                                 -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_tx_pma_ch.sv"                              -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_h.sv"                                 -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_avmm_csr.sv"                          -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_avmm_dcd.sv"                          -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_avmm.sv"                              -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_data_adapter.sv"                      -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_native.sv"                            -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_plls.sv"                              -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_10g_rx_pcs_rbc.sv"                    -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_10g_tx_pcs_rbc.sv"                    -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_8g_rx_pcs_rbc.sv"                     -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_8g_tx_pcs_rbc.sv"                     -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_8g_pcs_aggregate_rbc.sv"              -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_common_pcs_pma_interface_rbc.sv"      -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_common_pld_pcs_interface_rbc.sv"      -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_pipe_gen1_2_rbc.sv"                   -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_pipe_gen3_rbc.sv"                     -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_rx_pcs_pma_interface_rbc.sv"          -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_rx_pld_pcs_interface_rbc.sv"          -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_tx_pcs_pma_interface_rbc.sv"          -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_hssi_tx_pld_pcs_interface_rbc.sv"          -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/sv_xcvr_custom_native.sv"                     -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_arbiter.sv"                          -work xaui_phy
  vlogan +v2k -sverilog "$QSYS_SIMDIR/altera_xcvr_xaui/alt_xcvr_m2s.sv"                              -work xaui_phy
  vlogan +v2k           "$QSYS_SIMDIR/xaui_phy.v"                                                                  
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
