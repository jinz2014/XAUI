// xaui_phy.v

// Generated using ACDS version 14.1 186 at 2015.04.07.16:24:58

`timescale 1 ps / 1 ps
module xaui_phy (
		input  wire         pll_ref_clk,          //         pll_ref_clk.clk
		input  wire         xgmii_tx_clk,         //        xgmii_tx_clk.clk
		output wire         xgmii_rx_clk,         //        xgmii_rx_clk.clk
		output wire [71:0]  xgmii_rx_dc,          //         xgmii_rx_dc.data
		input  wire [71:0]  xgmii_tx_dc,          //         xgmii_tx_dc.data
		input  wire [3:0]   xaui_rx_serial_data,  // xaui_rx_serial_data.export
		output wire [3:0]   xaui_tx_serial_data,  // xaui_tx_serial_data.export
		output wire         rx_ready,             //            rx_ready.export
		output wire         tx_ready,             //            tx_ready.export
		input  wire         phy_mgmt_clk,         //        phy_mgmt_clk.clk
		input  wire         phy_mgmt_clk_reset,   //  phy_mgmt_clk_reset.reset
		input  wire [8:0]   phy_mgmt_address,     //            phy_mgmt.address
		input  wire         phy_mgmt_read,        //                    .read
		output wire [31:0]  phy_mgmt_readdata,    //                    .readdata
		input  wire         phy_mgmt_write,       //                    .write
		input  wire [31:0]  phy_mgmt_writedata,   //                    .writedata
		output wire         phy_mgmt_waitrequest, //                    .waitrequest
		output wire         rx_channelaligned,    //   rx_channelaligned.data
		output wire [7:0]   rx_syncstatus,        //       rx_syncstatus.data
		output wire [7:0]   rx_disperr,           //          rx_disperr.data
		output wire [7:0]   rx_errdetect,         //        rx_errdetect.data
		output wire [367:0] reconfig_from_xcvr,   //  reconfig_from_xcvr.data
		input  wire [559:0] reconfig_to_xcvr      //    reconfig_to_xcvr.data
	);

	altera_xcvr_xaui #(
		.device_family                ("Stratix V"),
		.starting_channel_number      (0),
		.interface_type               ("Soft XAUI"),
		.data_rate                    ("3125 Mbps"),
		.xaui_pll_type                ("ATX"),
		.BASE_DATA_RATE               ("3125 Mbps"),
		.en_synce_support             (0),
		.use_control_and_status_ports (1),
		.external_pma_ctrl_reconf     (0),
		.recovered_clk_out            (0),
		.number_of_interfaces         (1),
		.reconfig_interfaces          (8),
		.use_rx_rate_match            (0),
		.tx_termination               ("OCT_100_OHMS"),
		.tx_vod_selection             (4),
		.tx_preemp_pretap             (0),
		.tx_preemp_pretap_inv         ("false"),
		.tx_preemp_tap_1              (0),
		.tx_preemp_tap_2              (0),
		.tx_preemp_tap_2_inv          ("false"),
		.rx_common_mode               ("0.82v"),
		.rx_termination               ("OCT_100_OHMS"),
		.rx_eq_dc_gain                (0),
		.rx_eq_ctrl                   (0),
		.pll_external_enable          (0),
		.en_dual_fifo                 (0),
		.mgmt_clk_in_mhz              (150)
	) xaui_phy_inst (
		.pll_ref_clk              (pll_ref_clk),                          //         pll_ref_clk.clk
		.xgmii_tx_clk             (xgmii_tx_clk),                         //        xgmii_tx_clk.clk
		.xgmii_rx_clk             (xgmii_rx_clk),                         //        xgmii_rx_clk.clk
		.xgmii_rx_dc              (xgmii_rx_dc),                          //         xgmii_rx_dc.data
		.xgmii_tx_dc              (xgmii_tx_dc),                          //         xgmii_tx_dc.data
		.xaui_rx_serial_data      (xaui_rx_serial_data),                  // xaui_rx_serial_data.export
		.xaui_tx_serial_data      (xaui_tx_serial_data),                  // xaui_tx_serial_data.export
		.rx_ready                 (rx_ready),                             //            rx_ready.export
		.tx_ready                 (tx_ready),                             //            tx_ready.export
		.phy_mgmt_clk             (phy_mgmt_clk),                         //        phy_mgmt_clk.clk
		.phy_mgmt_clk_reset       (phy_mgmt_clk_reset),                   //  phy_mgmt_clk_reset.reset
		.phy_mgmt_address         (phy_mgmt_address),                     //            phy_mgmt.address
		.phy_mgmt_read            (phy_mgmt_read),                        //                    .read
		.phy_mgmt_readdata        (phy_mgmt_readdata),                    //                    .readdata
		.phy_mgmt_write           (phy_mgmt_write),                       //                    .write
		.phy_mgmt_writedata       (phy_mgmt_writedata),                   //                    .writedata
		.phy_mgmt_waitrequest     (phy_mgmt_waitrequest),                 //                    .waitrequest
		.rx_channelaligned        (rx_channelaligned),                    //   rx_channelaligned.data
		.rx_syncstatus            (rx_syncstatus),                        //       rx_syncstatus.data
		.rx_disperr               (rx_disperr),                           //          rx_disperr.data
		.rx_errdetect             (rx_errdetect),                         //        rx_errdetect.data
		.reconfig_from_xcvr       (reconfig_from_xcvr),                   //  reconfig_from_xcvr.data
		.reconfig_to_xcvr         (reconfig_to_xcvr),                     //    reconfig_to_xcvr.data
		.rx_recovered_clk         (),                                     //         (terminated)
		.tx_clk312_5              (),                                     //         (terminated)
		.rx_digitalreset          (1'b0),                                 //         (terminated)
		.tx_digitalreset          (1'b0),                                 //         (terminated)
		.rx_analogreset           (1'b0),                                 //         (terminated)
		.rx_invpolarity           (4'b0000),                              //         (terminated)
		.rx_set_locktodata        (4'b0000),                              //         (terminated)
		.rx_set_locktoref         (4'b0000),                              //         (terminated)
		.rx_seriallpbken          (4'b0000),                              //         (terminated)
		.tx_invpolarity           (4'b0000),                              //         (terminated)
		.rx_is_lockedtodata       (),                                     //         (terminated)
		.rx_phase_comp_fifo_error (),                                     //         (terminated)
		.rx_is_lockedtoref        (),                                     //         (terminated)
		.rx_rlv                   (),                                     //         (terminated)
		.rx_rmfifoempty           (),                                     //         (terminated)
		.rx_rmfifofull            (),                                     //         (terminated)
		.tx_phase_comp_fifo_error (),                                     //         (terminated)
		.rx_patterndetect         (),                                     //         (terminated)
		.rx_rmfifodatadeleted     (),                                     //         (terminated)
		.rx_rmfifodatainserted    (),                                     //         (terminated)
		.rx_runningdisp           (),                                     //         (terminated)
		.cal_blk_powerdown        (1'b0),                                 //         (terminated)
		.pll_powerdown            (1'b0),                                 //         (terminated)
		.gxb_powerdown            (1'b0),                                 //         (terminated)
		.pll_locked               (),                                     //         (terminated)
		.cdr_ref_clk              (1'b0),                                 //         (terminated)
		.pll_locked_i             (1'b0),                                 //         (terminated)
		.ext_pll_clk              (4'b0000),                              //         (terminated)
		.reconfig_clk             (1'b0),                                 //         (terminated)
		.reconfig_reset           (1'b0),                                 //         (terminated)
		.reconfig_address         (12'b000000000000),                     //         (terminated)
		.reconfig_read            (1'b0),                                 //         (terminated)
		.reconfig_write           (1'b0),                                 //         (terminated)
		.reconfig_writedata       (32'b00000000000000000000000000000000), //         (terminated)
		.reconfig_readdata        (),                                     //         (terminated)
		.reconfig_waitrequest     (),                                     //         (terminated)
		.tx_bonding_clocks        (6'b000000),                            //         (terminated)
		.pll_powerdown_o          (),                                     //         (terminated)
		.pll_cal_busy_i           (1'b0),                                 //         (terminated)
		.xgmii_rx_inclk           (1'b0)                                  //         (terminated)
	);

endmodule