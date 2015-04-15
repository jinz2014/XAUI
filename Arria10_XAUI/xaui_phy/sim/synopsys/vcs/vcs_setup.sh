
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

# ACDS 14.1 186 linux 2015.04.06.11:08:06

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="xaui_phy"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="/share/jinz/Quartus14.1/quartus/"
SKIP_FILE_COPY=0
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
# copy RAM/ROM files to simulation directory

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/twentynm_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/twentynm_hssi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/twentynm_hip_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_atoms.v \
  $QSYS_SIMDIR/../altera_xcvr_native_a10_141/sim/altera_xcvr_functions.sv \
  $QSYS_SIMDIR/../altera_xcvr_native_a10_141/sim/alt_xcvr_resync.sv \
  $QSYS_SIMDIR/../altera_xcvr_native_a10_141/sim/twentynm_pcs.sv \
  $QSYS_SIMDIR/../altera_xcvr_native_a10_141/sim/twentynm_pma.sv \
  $QSYS_SIMDIR/../altera_xcvr_native_a10_141/sim/twentynm_xcvr_avmm.sv \
  $QSYS_SIMDIR/../altera_xcvr_native_a10_141/sim/twentynm_xcvr_native.sv \
  $QSYS_SIMDIR/../altera_xcvr_native_a10_141/sim/a10_avmm_h.sv \
  $QSYS_SIMDIR/../altera_xcvr_native_a10_141/sim/altera_xcvr_native_a10.sv \
  $QSYS_SIMDIR/../altera_xcvr_native_a10_141/sim/alt_xcvr_native_avmm_nf.sv \
  $QSYS_SIMDIR/../altera_xcvr_native_a10_141/sim/alt_xcvr_native_avmm_csr.sv \
  $QSYS_SIMDIR/../altera_xcvr_native_a10_141/sim/alt_xcvr_native_prbs_accum.sv \
  $QSYS_SIMDIR/../altera_xcvr_native_a10_141/sim/alt_xcvr_native_embedded_debug.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/a10_xcvr_custom_native.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/alt_pma_functions.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/altera_xcvr_xaui.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/hxaui_csr_h.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/hxaui_csr.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/alt_xcvr_mgmt2dec_phyreconfig.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/alt_xcvr_mgmt2dec_xaui.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/alt_pma_controller_tgx.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/alt_reset_ctrl_lego.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/alt_reset_ctrl_tgx_cdrauto.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/alt_xcvr_csr_common_h.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/alt_xcvr_csr_common.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/alt_xcvr_csr_pcs8g_h.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/alt_xcvr_csr_pcs8g.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/alt_xcvr_csr_selector.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/alt_xcvr_mgmt2dec.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/altera_wait_generate.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/altera_xcvr_reset_control.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/alt_xcvr_reset_counter.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_pcs.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_reset.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_rx.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_rx_8b10b_dec.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_rx_channel_synch.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_rx_deskew.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_rx_deskew_channel.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_rx_deskew_ram.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/altera_soft_xaui_rx_deskew_ram.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_rx_invalid_code_det.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_rx_parity.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_rx_parity_4b.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_rx_parity_6b.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_rx_rate_match.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_rx_rate_match_ram.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_rx_rl_chk_6g.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_rx_sm.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_tx.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_tx_8b10b_enc.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/alt_soft_xaui_tx_idle_conv.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/l_modules.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/serdes_4_unit_lc_siv.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/serdes_4_unit_siv.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/synopsys/serdes_4unit.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/sxaui.v \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/a10_xcvr_xaui.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/alt_xcvr_arbiter.sv \
  $QSYS_SIMDIR/../altera_xcvr_xaui_141/sim/alt_xcvr_m2s.sv \
  $QSYS_SIMDIR/xaui_phy.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
