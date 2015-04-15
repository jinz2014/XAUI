vlog -work work +incdir+"./tb" tb/xaui_phy_atxpll_tb.v
vlog -work work +incdir+"./tb" tb/xaui_monitor.v

vlog -work work ../atxpll/sim/atxpll.v
vlog -work work ../xaui_phy/sim/xaui_phy.v

xaui_phy_lib_path="../xaui_phy/sim/mentor/libraries"
atxpll_lib_path="../atxpll/sim/mentor/libraries"

vsim  -voptargs=+acc -t ps work.xaui_phy_atxpll_tb \
 -L $xaui_phy_lib_path/xaui_phy_altera_xcvr_native_a10_141 \
 -L $xaui_phy_lib_path/xaui_phy_altera_xcvr_xaui_141 \
 -L $xaui_phy_lib_path/twentynm_ver \
 -L $xaui_phy_lib_path/twentynm_hssi_ver \
 -L $xaui_phy_lib_path/twentynm_hip_ver\
 -L $xaui_phy_lib_path/altera_ver \
 -L $xaui_phy_lib_path/lpm_ver \
 -L $xaui_phy_lib_path/sgate_ver \
 -L $xaui_phy_lib_path/altera_mf_ver \
 -L $xaui_phy_lib_path/altera_lnsim_ver  \
 -L $atxpll_lib_path/atxpll_altera_xcvr_atx_pll_a10_141
