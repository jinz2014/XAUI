	atxpll u0 (
		.pll_powerdown     (<connected-to-pll_powerdown>),     //     pll_powerdown.pll_powerdown
		.pll_refclk0       (<connected-to-pll_refclk0>),       //       pll_refclk0.clk
		.tx_serial_clk     (<connected-to-tx_serial_clk>),     //     tx_serial_clk.clk
		.pll_locked        (<connected-to-pll_locked>),        //        pll_locked.pll_locked
		.pll_cal_busy      (<connected-to-pll_cal_busy>),      //      pll_cal_busy.pll_cal_busy
		.mcgb_rst          (<connected-to-mcgb_rst>),          //          mcgb_rst.mcgb_rst
		.tx_bonding_clocks (<connected-to-tx_bonding_clocks>)  // tx_bonding_clocks.clk
	);

