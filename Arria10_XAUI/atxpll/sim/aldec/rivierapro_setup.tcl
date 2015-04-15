
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
# Auto-generated simulation script

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "atxpll"
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

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                   ./libraries/altera_ver       
vmap       altera_ver        ./libraries/altera_ver       
ensure_lib                   ./libraries/lpm_ver          
vmap       lpm_ver           ./libraries/lpm_ver          
ensure_lib                   ./libraries/sgate_ver        
vmap       sgate_ver         ./libraries/sgate_ver        
ensure_lib                   ./libraries/altera_mf_ver    
vmap       altera_mf_ver     ./libraries/altera_mf_ver    
ensure_lib                   ./libraries/altera_lnsim_ver 
vmap       altera_lnsim_ver  ./libraries/altera_lnsim_ver 
ensure_lib                   ./libraries/twentynm_ver     
vmap       twentynm_ver      ./libraries/twentynm_ver     
ensure_lib                   ./libraries/twentynm_hssi_ver
vmap       twentynm_hssi_ver ./libraries/twentynm_hssi_ver
ensure_lib                   ./libraries/twentynm_hip_ver 
vmap       twentynm_hip_ver  ./libraries/twentynm_hip_ver 
ensure_lib                                    ./libraries/atxpll_altera_xcvr_atx_pll_a10_141
vmap       atxpll_altera_xcvr_atx_pll_a10_141 ./libraries/atxpll_altera_xcvr_atx_pll_a10_141

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                -work altera_ver       
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                         -work lpm_ver          
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                            -work sgate_ver        
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                        -work altera_mf_ver    
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                    -work altera_lnsim_ver 
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_atoms.v"                   -work twentynm_ver     
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/twentynm_atoms_ncrypt.v"      -work twentynm_ver     
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/twentynm_hssi_atoms_ncrypt.v" -work twentynm_hssi_ver
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_atoms.v"              -work twentynm_hssi_ver
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/twentynm_hip_atoms_ncrypt.v"  -work twentynm_hip_ver 
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_atoms.v"               -work twentynm_hip_ver 
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog  "$QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/twentynm_xcvr_avmm.sv"          -work atxpll_altera_xcvr_atx_pll_a10_141
  vlog  "$QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/alt_xcvr_resync.sv"             -work atxpll_altera_xcvr_atx_pll_a10_141
  vlog  "$QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/a10_avmm_h.sv"                  -work atxpll_altera_xcvr_atx_pll_a10_141
  vlog  "$QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/alt_xcvr_native_avmm_nf.sv"     -work atxpll_altera_xcvr_atx_pll_a10_141
  vlog  "$QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/altera_xcvr_atx_pll_a10.sv"     -work atxpll_altera_xcvr_atx_pll_a10_141
  vlog  "$QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/a10_xcvr_atx_pll.sv"            -work atxpll_altera_xcvr_atx_pll_a10_141
  vlog  "$QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/alt_xcvr_pll_embedded_debug.sv" -work atxpll_altera_xcvr_atx_pll_a10_141
  vlog  "$QSYS_SIMDIR/../altera_xcvr_atx_pll_a10_141/sim/alt_xcvr_pll_avmm_csr.sv"       -work atxpll_altera_xcvr_atx_pll_a10_141
  vlog  "$QSYS_SIMDIR/atxpll.v"                                                                                                  
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim +access +r -t ps $ELAB_OPTIONS -L work -L atxpll_altera_xcvr_atx_pll_a10_141 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L twentynm_ver -L twentynm_hssi_ver -L twentynm_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -dbg -O2 +access +r -t ps $ELAB_OPTIONS -L work -L atxpll_altera_xcvr_atx_pll_a10_141 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L twentynm_ver -L twentynm_hssi_ver -L twentynm_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
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
  echo "elab_debug                    -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -dbg -O2"
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
