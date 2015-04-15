
module atxpll (
	pll_powerdown,
	pll_refclk0,
	tx_serial_clk,
	pll_locked,
	pll_cal_busy,
	mcgb_rst,
	tx_bonding_clocks);	

	input		pll_powerdown;
	input		pll_refclk0;
	output		tx_serial_clk;
	output		pll_locked;
	output		pll_cal_busy;
	input		mcgb_rst;
	output	[5:0]	tx_bonding_clocks;
endmodule
