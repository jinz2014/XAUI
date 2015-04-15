	xaui_phy u0 (
		.pll_ref_clk          (<connected-to-pll_ref_clk>),          //         pll_ref_clk.clk
		.xgmii_tx_clk         (<connected-to-xgmii_tx_clk>),         //        xgmii_tx_clk.clk
		.xgmii_rx_clk         (<connected-to-xgmii_rx_clk>),         //        xgmii_rx_clk.clk
		.xgmii_rx_dc          (<connected-to-xgmii_rx_dc>),          //         xgmii_rx_dc.data
		.xgmii_tx_dc          (<connected-to-xgmii_tx_dc>),          //         xgmii_tx_dc.data
		.xaui_rx_serial_data  (<connected-to-xaui_rx_serial_data>),  // xaui_rx_serial_data.export
		.xaui_tx_serial_data  (<connected-to-xaui_tx_serial_data>),  // xaui_tx_serial_data.export
		.rx_ready             (<connected-to-rx_ready>),             //            rx_ready.export
		.tx_ready             (<connected-to-tx_ready>),             //            tx_ready.export
		.phy_mgmt_clk         (<connected-to-phy_mgmt_clk>),         //        phy_mgmt_clk.clk
		.phy_mgmt_clk_reset   (<connected-to-phy_mgmt_clk_reset>),   //  phy_mgmt_clk_reset.reset
		.phy_mgmt_address     (<connected-to-phy_mgmt_address>),     //            phy_mgmt.address
		.phy_mgmt_read        (<connected-to-phy_mgmt_read>),        //                    .read
		.phy_mgmt_readdata    (<connected-to-phy_mgmt_readdata>),    //                    .readdata
		.phy_mgmt_write       (<connected-to-phy_mgmt_write>),       //                    .write
		.phy_mgmt_writedata   (<connected-to-phy_mgmt_writedata>),   //                    .writedata
		.phy_mgmt_waitrequest (<connected-to-phy_mgmt_waitrequest>), //                    .waitrequest
		.pll_locked_i         (<connected-to-pll_locked_i>),         //        pll_locked_i.export
		.tx_bonding_clocks    (<connected-to-tx_bonding_clocks>),    //   tx_bonding_clocks.export
		.pll_powerdown_o      (<connected-to-pll_powerdown_o>),      //     pll_powerdown_o.export
		.pll_cal_busy_i       (<connected-to-pll_cal_busy_i>)        //      pll_cal_busy_i.export
	);

