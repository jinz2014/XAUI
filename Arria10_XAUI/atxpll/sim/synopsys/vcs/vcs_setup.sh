
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

# ACDS 14.1 186 linux 2015.04.14.11:26:38

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="atxpll"
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
  $QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/twentynm_xcvr_avmm.sv \
  $QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/alt_xcvr_resync.sv \
  $QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/a10_avmm_h.sv \
  $QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/alt_xcvr_native_avmm_nf.sv \
  $QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/altera_xcvr_atx_pll_a10.sv \
  $QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/a10_xcvr_atx_pll.sv \
  $QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/alt_xcvr_pll_embedded_debug.sv \
  $QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/alt_xcvr_pll_avmm_csr.sv \
  $QSYS_SIMDIR/atxpll.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
