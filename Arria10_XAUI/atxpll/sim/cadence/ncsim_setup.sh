
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
# ncsim - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="atxpll"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="/share/jinz/Quartus14.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

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
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/atxpll_altera_xcvr_atx_pll_a10_141/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/twentynm_ver/
mkdir -p ./libraries/twentynm_hssi_ver/
mkdir -p ./libraries/twentynm_hip_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                  -work altera_ver       
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                           -work lpm_ver          
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                              -work sgate_ver        
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                          -work altera_mf_ver    
  ncvlog -sv "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                      -work altera_lnsim_ver 
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_atoms.v"                     -work twentynm_ver     
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/twentynm_atoms_ncrypt.v"      -work twentynm_ver     
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/twentynm_hssi_atoms_ncrypt.v" -work twentynm_hssi_ver
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_atoms.v"                -work twentynm_hssi_ver
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/twentynm_hip_atoms_ncrypt.v"  -work twentynm_hip_ver 
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_atoms.v"                 -work twentynm_hip_ver 
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog -sv       "$QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/twentynm_xcvr_avmm.sv"          -work atxpll_altera_xcvr_atx_pll_a10_141 -cdslib ./cds_libs/atxpll_altera_xcvr_atx_pll_a10_141.cds.lib
  ncvlog -sv       "$QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/alt_xcvr_resync.sv"             -work atxpll_altera_xcvr_atx_pll_a10_141 -cdslib ./cds_libs/atxpll_altera_xcvr_atx_pll_a10_141.cds.lib
  ncvlog -sv       "$QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/a10_avmm_h.sv"                  -work atxpll_altera_xcvr_atx_pll_a10_141 -cdslib ./cds_libs/atxpll_altera_xcvr_atx_pll_a10_141.cds.lib
  ncvlog -sv       "$QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/alt_xcvr_native_avmm_nf.sv"     -work atxpll_altera_xcvr_atx_pll_a10_141 -cdslib ./cds_libs/atxpll_altera_xcvr_atx_pll_a10_141.cds.lib
  ncvlog -sv       "$QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/altera_xcvr_atx_pll_a10.sv"     -work atxpll_altera_xcvr_atx_pll_a10_141 -cdslib ./cds_libs/atxpll_altera_xcvr_atx_pll_a10_141.cds.lib
  ncvlog -sv       "$QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/a10_xcvr_atx_pll.sv"            -work atxpll_altera_xcvr_atx_pll_a10_141 -cdslib ./cds_libs/atxpll_altera_xcvr_atx_pll_a10_141.cds.lib
  ncvlog -sv       "$QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/alt_xcvr_pll_embedded_debug.sv" -work atxpll_altera_xcvr_atx_pll_a10_141 -cdslib ./cds_libs/atxpll_altera_xcvr_atx_pll_a10_141.cds.lib
  ncvlog -sv       "$QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/alt_xcvr_pll_avmm_csr.sv"       -work atxpll_altera_xcvr_atx_pll_a10_141 -cdslib ./cds_libs/atxpll_altera_xcvr_atx_pll_a10_141.cds.lib
  ncvlog -compcnfg "$QSYS_SIMDIR/atxpll.v"                                                                                                                                                                
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  ncelab -access +w+r+c -namemap_mixgen $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
