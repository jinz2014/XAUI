onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/ref_clk
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/sys_clk
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/reset
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/xaui_bit_clk
add wave -noupdate -divider {atx pll}
add wave -noupdate -expand /xaui_phy_atxpll_tb/tx_bonding_clocks
add wave -noupdate /xaui_phy_atxpll_tb/pll_cal_busy
add wave -noupdate /xaui_phy_atxpll_tb/pll_locked
add wave -noupdate /xaui_phy_atxpll_tb/pll_powerdown
add wave -noupdate /xaui_phy_atxpll_tb/tx_serial_clk
add wave -noupdate /xaui_phy_atxpll_tb/mcgb_rst
add wave -noupdate -divider xaui
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/xaui_tx_serial_dataout
add wave -noupdate -radix hexadecimal -childformat {{{/xaui_phy_atxpll_tb/xaui_rx_serial_datain[3]} -radix hexadecimal} {{/xaui_phy_atxpll_tb/xaui_rx_serial_datain[2]} -radix hexadecimal} {{/xaui_phy_atxpll_tb/xaui_rx_serial_datain[1]} -radix hexadecimal} {{/xaui_phy_atxpll_tb/xaui_rx_serial_datain[0]} -radix hexadecimal}} -subitemconfig {{/xaui_phy_atxpll_tb/xaui_rx_serial_datain[3]} {-height 15 -radix hexadecimal} {/xaui_phy_atxpll_tb/xaui_rx_serial_datain[2]} {-height 15 -radix hexadecimal} {/xaui_phy_atxpll_tb/xaui_rx_serial_datain[1]} {-height 15 -radix hexadecimal} {/xaui_phy_atxpll_tb/xaui_rx_serial_datain[0]} {-height 15 -radix hexadecimal}} /xaui_phy_atxpll_tb/xaui_rx_serial_datain
add wave -noupdate -divider xgmii_tx
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/xgmii_tx_ready
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/xgmii_tx_datain
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/xgmii_tx_dataink
add wave -noupdate -divider xgmii_rx
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/xgmii_rx_ready
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/xgmii_rx_dataout
add wave -noupdate -radix hexadecimal -childformat {{{/xaui_phy_atxpll_tb/xgmii_rx_dataoutk[7]} -radix hexadecimal} {{/xaui_phy_atxpll_tb/xgmii_rx_dataoutk[6]} -radix hexadecimal} {{/xaui_phy_atxpll_tb/xgmii_rx_dataoutk[5]} -radix hexadecimal} {{/xaui_phy_atxpll_tb/xgmii_rx_dataoutk[4]} -radix hexadecimal} {{/xaui_phy_atxpll_tb/xgmii_rx_dataoutk[3]} -radix hexadecimal} {{/xaui_phy_atxpll_tb/xgmii_rx_dataoutk[2]} -radix hexadecimal} {{/xaui_phy_atxpll_tb/xgmii_rx_dataoutk[1]} -radix hexadecimal} {{/xaui_phy_atxpll_tb/xgmii_rx_dataoutk[0]} -radix hexadecimal}} -subitemconfig {{/xaui_phy_atxpll_tb/xgmii_rx_dataoutk[7]} {-height 15 -radix hexadecimal} {/xaui_phy_atxpll_tb/xgmii_rx_dataoutk[6]} {-height 15 -radix hexadecimal} {/xaui_phy_atxpll_tb/xgmii_rx_dataoutk[5]} {-height 15 -radix hexadecimal} {/xaui_phy_atxpll_tb/xgmii_rx_dataoutk[4]} {-height 15 -radix hexadecimal} {/xaui_phy_atxpll_tb/xgmii_rx_dataoutk[3]} {-height 15 -radix hexadecimal} {/xaui_phy_atxpll_tb/xgmii_rx_dataoutk[2]} {-height 15 -radix hexadecimal} {/xaui_phy_atxpll_tb/xgmii_rx_dataoutk[1]} {-height 15 -radix hexadecimal} {/xaui_phy_atxpll_tb/xgmii_rx_dataoutk[0]} {-height 15 -radix hexadecimal}} /xaui_phy_atxpll_tb/xgmii_rx_dataoutk
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/xgmii_rx_clk
add wave -noupdate -divider phy_mgmt
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/phy_mgmt_clk
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/phy_mgmt_clk_reset
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/phy_mgmt_address
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/phy_mgmt_read
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/phy_mgmt_readdata
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/phy_mgmt_write
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/phy_mgmt_writedata
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/phy_mgmt_waitrequest
add wave -noupdate -divider xaui_monitor
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/xaui_rx_recclk
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/xaui_rx_is_k
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/xaui_rx_pdata
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/xaui_tx_recclk
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/xaui_tx_is_k
add wave -noupdate -radix hexadecimal /xaui_phy_atxpll_tb/xaui_tx_pdata
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {533703 ps} 0} {{Cursor 3} {138863002 ps} 0}
configure wave -namecolwidth 165
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {409414 ps} {750586 ps}
