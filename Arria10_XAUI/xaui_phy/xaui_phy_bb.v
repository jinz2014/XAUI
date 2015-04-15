
module xaui_phy (
	pll_ref_clk,
	xgmii_tx_clk,
	xgmii_rx_clk,
	xgmii_rx_dc,
	xgmii_tx_dc,
	xaui_rx_serial_data,
	xaui_tx_serial_data,
	rx_ready,
	tx_ready,
	phy_mgmt_clk,
	phy_mgmt_clk_reset,
	phy_mgmt_address,
	phy_mgmt_read,
	phy_mgmt_readdata,
	phy_mgmt_write,
	phy_mgmt_writedata,
	phy_mgmt_waitrequest,
	pll_locked_i,
	tx_bonding_clocks,
	pll_powerdown_o,
	pll_cal_busy_i);	

	input		pll_ref_clk;
	input		xgmii_tx_clk;
	output		xgmii_rx_clk;
	output	[71:0]	xgmii_rx_dc;
	input	[71:0]	xgmii_tx_dc;
	input	[3:0]	xaui_rx_serial_data;
	output	[3:0]	xaui_tx_serial_data;
	output		rx_ready;
	output		tx_ready;
	input		phy_mgmt_clk;
	input		phy_mgmt_clk_reset;
	input	[8:0]	phy_mgmt_address;
	input		phy_mgmt_read;
	output	[31:0]	phy_mgmt_readdata;
	input		phy_mgmt_write;
	input	[31:0]	phy_mgmt_writedata;
	output		phy_mgmt_waitrequest;
	input		pll_locked_i;
	input	[5:0]	tx_bonding_clocks;
	output		pll_powerdown_o;
	input		pll_cal_busy_i;
endmodule
