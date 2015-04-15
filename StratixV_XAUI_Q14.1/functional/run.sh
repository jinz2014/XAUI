vlog -work work +incdir+"./tb" ./tb/xaui_phy_top_tb.v
vlog -work work  ./tb/xaui_monitor.v
vlog -work work  ../xaui_phy.v
vlog -work work  ../xaui_phy_reconfig.v

xaui_phy_lib_path="../xaui_phy_sim/mentor/libraries"
xaui_phy_reconfig_lib_path="../xaui_phy_reconfig_sim/mentor/libraries"

vsim -voptargs=+acc -t ps work.xaui_phy_top_tb \
 -L $xaui_phy_lib_path/xaui_phy \
 -L $xaui_phy_reconfig_lib_path/xaui_phy_reconfig \
 -L $xaui_phy_lib_path/altera_ver \
 -L $xaui_phy_lib_path/lpm_ver \
 -L $xaui_phy_lib_path/sgate_ver \
 -L $xaui_phy_lib_path/altera_mf_ver \
 -L $xaui_phy_lib_path/altera_lnsim_ver  \
 -L $xaui_phy_lib_path/stratixv_ver \
 -L $xaui_phy_lib_path/stratixv_hssi_ver \
 -L $xaui_phy_lib_path/stratixv_pcie_hip_ver \
 -L $xaui_phy_reconfig_lib_path/altera_ver \
 -L $xaui_phy_reconfig_lib_path/lpm_ver \
 -L $xaui_phy_reconfig_lib_path/sgate_ver \
 -L $xaui_phy_reconfig_lib_path/altera_mf_ver \
 -L $xaui_phy_reconfig_lib_path/altera_lnsim_ver  \
 -L $xaui_phy_reconfig_lib_path/stratixv_ver \
 -L $xaui_phy_reconfig_lib_path/stratixv_hssi_ver \
 -L $xaui_phy_reconfig_lib_path/stratixv_pcie_hip_ver
