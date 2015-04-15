`timescale 1 ps/ 1 ps

// 156M
`define xaui_ref_clk  6400

// 100M
`define system_clk    5000 

//===============================================================
// Arria10 device
//===============================================================

module xaui_phy_atxpll_tb;

reg          ref_clk; 
reg          sys_clk;         
reg          reset;           
reg          xaui_bit_clk;

wire   [3:0] xaui_tx_serial_dataout; 

wire         xgmii_rx_clk;        // generated by the xaui_phy core, frequency is 156M
wire         xgmii_rx_ready;      // xgmii receive i/f is ready 
wire         xgmii_tx_ready;      // xgmii transmit i/f is ready
wire  [63:0] xgmii_rx_dataout; 
wire  [ 7:0] xgmii_rx_dataoutk;

reg   [63:0] xgmii_tx_datain;
reg   [ 7:0] xgmii_tx_dataink;
reg    [3:0] xaui_rx_serial_datain; 

wire        phy_mgmt_clk;         //  
wire        phy_mgmt_clk_reset;   //  
wire [8:0]  phy_mgmt_address;     // 
wire        phy_mgmt_read;        //
wire [31:0] phy_mgmt_readdata;    //
wire        phy_mgmt_write;       //
wire [31:0] phy_mgmt_writedata;   //
wire        phy_mgmt_waitrequest; //


wire [ 5:0] tx_bonding_clocks;
wire        pll_cal_busy;
wire        pll_locked;
wire        pll_powerdown;
wire        mcgb_rst = reset;


initial 
	begin
		reset = 1'b0;
		#10;
		#(`xaui_ref_clk*10) reset = 1'b1;
		#(`xaui_ref_clk*50) reset = 1'b0;
	end

	initial begin : xgmii_clock
		ref_clk = 1'b0;
    forever
		  #(`xaui_ref_clk/2) ref_clk = ~ref_clk;
	end

	initial begin : phy_mgmt_clock
		sys_clk = 1'b0;
    forever
      #(`system_clk/2) sys_clk <= ~sys_clk;
  end


  initial begin  : xaui_phy_monitor_clock
    xaui_bit_clk = 0;

    // wait until xaui_tx_ready is asserted
    @(posedge xgmii_tx_ready);
    @(posedge xaui_tx_serial_dataout[0]);

    // set the clock to the mid of the tranmit eye
    #160;
    forever
      #320 xaui_bit_clk = ~xaui_bit_clk;
  end

  // initialize frame
  reg [63:0] dc [255:0]; 
  reg [ 7:0] kc [255:0]; 

  initial begin
    dc[0] = 64'h0707070707070707;
    kc[0] = 8'hFF;
    dc[1] = 64'h060504030201FBFB;
    kc[1] = 8'h01;
    dc[2] = 64'h0E0D0C0B0A090807;
    kc[2] = 8'h00;
    dc[3] = 64'h161514131211100F;
    kc[3] = 8'h00;
    dc[4] = 64'h1e1d1c1b1a191817;
    kc[4] = 8'h00;
    dc[5] = 64'h2e2d2c2b2a292827;
    kc[5] = 8'h00;
    dc[6] = 64'h3e3d3c3b3a393837;
    kc[6] = 8'h00;
    dc[7] = 64'h4e4d4c4b4a494847;
    kc[7] = 8'h00;
    dc[8] = 64'h5e5d5c5b5a595857;
    kc[8] = 8'h00;
    dc[9] = 64'h6e6d6c6b6a696867;
    kc[9] = 8'h00;
    dc[10] = 64'h070707070707FD07;
    kc[10] = 8'hFE;
  end


  integer fd1, fd2, fd3, fd4;
  initial begin : interface_logging
    fd1 = $fopen("XGMII_TX_IN.log");
    fd2 = $fopen("XGMII_RX_OUT.log");
    fd3 = $fopen("Serial_TX_OUT.log");
    fd4 = $fopen("Serial_RX_IN.log");
  end

	
// Management interface
assign phy_mgmt_read        = 0;
assign phy_mgmt_write       = 0;
assign phy_mgmt_clk         = sys_clk;
assign phy_mgmt_clk_reset   = reset;

//--------------------------------------------
// Altera's ATXPLL core
//--------------------------------------------
	atxpll atxpll (
		.pll_powerdown     (pll_powerdown),     //     pll_powerdown.pll_powerdown
		.pll_refclk0       (sys_clk),       //       pll_refclk0.clk
		.tx_serial_clk     (tx_serial_clk),     //     tx_serial_clk.clk
		.pll_locked        (pll_locked),        //        pll_locked.pll_locked
		.pll_cal_busy      (pll_cal_busy),      //      pll_cal_busy.pll_cal_busy
		.mcgb_rst          (mcgb_rst),          //          mcgb_rst.mcgb_rst
		.tx_bonding_clocks (tx_bonding_clocks)  // tx_bonding_clocks.clk
	);

//--------------------------------------------
// Altera's XAUI core
//--------------------------------------------


xaui_phy dut (
  .pll_ref_clk           (ref_clk),  // i
	.pll_cal_busy_i        (pll_cal_busy),
	.pll_locked_i          (pll_locked),
	.pll_powerdown_o       (pll_powerdown),   
  .tx_bonding_clocks     (tx_bonding_clocks),   

  .xgmii_tx_clk          (ref_clk),  // i
  .xgmii_rx_clk          (xgmii_rx_clk),   // o

  // o
  .xgmii_rx_dc           ({ 
	                          xgmii_rx_dataoutk[7], xgmii_rx_dataout[63:56],
	                          xgmii_rx_dataoutk[6], xgmii_rx_dataout[55:48],  
	                          xgmii_rx_dataoutk[5], xgmii_rx_dataout[47:40],  
	                          xgmii_rx_dataoutk[4], xgmii_rx_dataout[39:32],  
	                          xgmii_rx_dataoutk[3], xgmii_rx_dataout[31:24],  
	                          xgmii_rx_dataoutk[2], xgmii_rx_dataout[23:16],  
	                          xgmii_rx_dataoutk[1], xgmii_rx_dataout[15:8],   
                            xgmii_rx_dataoutk[0], xgmii_rx_dataout[7:0]
                          }),		  

  // i
	.xgmii_tx_dc           ({ 
	                          xgmii_tx_dataink[7], xgmii_tx_datain[63:56],
	                          xgmii_tx_dataink[6], xgmii_tx_datain[55:48],  
	                          xgmii_tx_dataink[5], xgmii_tx_datain[47:40],  
	                          xgmii_tx_dataink[4], xgmii_tx_datain[39:32],  
	                          xgmii_tx_dataink[3], xgmii_tx_datain[31:24],  
	                          xgmii_tx_dataink[2], xgmii_tx_datain[23:16],  
	                          xgmii_tx_dataink[1], xgmii_tx_datain[15:8],   
                            xgmii_tx_dataink[0], xgmii_tx_datain[7:0]
                          }),
  .rx_ready              (xgmii_rx_ready),
  .tx_ready              (xgmii_tx_ready),

  .xaui_rx_serial_data   (xaui_rx_serial_datain), // i
  .xaui_tx_serial_data   (xaui_tx_serial_dataout), // o
  .phy_mgmt_clk          (phy_mgmt_clk),
  .phy_mgmt_clk_reset    (phy_mgmt_clk_reset),
  .phy_mgmt_address      (phy_mgmt_address),
  .phy_mgmt_read         (phy_mgmt_read),
  .phy_mgmt_readdata     (phy_mgmt_readdata),
  .phy_mgmt_write        (phy_mgmt_write),
  .phy_mgmt_writedata    (phy_mgmt_writedata),
  .phy_mgmt_waitrequest  (phy_mgmt_waitrequest)
);


initial begin : xgmii_tx_driver
  integer i, j;
  // send idle 
  xgmii_tx_datain  = dc[0];
  xgmii_tx_dataink = kc[0];

  @(posedge xgmii_rx_ready);

  for (j = 0; j < 3; j = j + 1) begin
    // send valid data qualified by the control code
    for (i = 1; i <= 10; i = i + 1) begin
      @(negedge ref_clk);
      xgmii_tx_datain  = dc[i];
      xgmii_tx_dataink = kc[i];
    end

    repeat(1) begin
      // send idle
      @(negedge ref_clk);
      xgmii_tx_datain  = dc[0];
      xgmii_tx_dataink = kc[0];
    end
  end

end

`include "phy_driver.v"

initial begin : serial_rx_driver
  integer i, j;

  @(negedge reset);

  while (!xgmii_rx_ready)
    rx_stimulus_send_idle;

  //
  repeat(5000) rx_stimulus_send_idle;

  for (j = 0; j < 3; j = j + 1) begin
    // valid data qualified by the control code
    for (i = 1; i <= 10; i = i + 1) begin
      rx_stimulus_send_column(dc[i][31: 0], kc[i][3:0]);
      rx_stimulus_send_column(dc[i][63:32], kc[i][7:4]);
    end
    repeat(60) rx_stimulus_send_idle;
  end

  while (1)
    rx_stimulus_send_idle;
end

//--------------------------------------------------------------
// XGMII TX monitor
//--------------------------------------------------------------
always @ (negedge ref_clk) begin
  if (xgmii_tx_ready && xgmii_tx_dataink != 8'hFF)
    $fdisplay(fd1, "%t [XGMII TX] xgmii txd = %h txc = %h", 
             $time, xgmii_tx_datain, xgmii_tx_dataink);
end

//--------------------------------------------------------------
// XGMII RX monitor
//--------------------------------------------------------------
always @ (negedge xgmii_rx_clk) begin
  if (xgmii_rx_ready && xgmii_rx_dataoutk != 8'hFF)
    $fdisplay(fd2, "%t [XGMII RX] xgmii rxd = %h rxc = %h", 
             $time, xgmii_rx_dataout, xgmii_rx_dataoutk);
end

//--------------------------------------------------------------
// xaui tx serial monitor
//--------------------------------------------------------------

wire [31:0] xaui_tx_pdata;
wire [ 3:0] xaui_tx_is_k;
wire [ 3:0] xaui_tx_recclk;
wire [ 3:0] xaui_rx_recclk;


genvar i;

generate
for (i = 0; i < 4; i=i+1) 
xaui_monitor xaui_mon_tx_lane (
  .xaui_bit_clock        (xaui_bit_clk),
  .xaui_lane_p           (xaui_tx_serial_dataout[i]),
  .xaui_recclk           (xaui_tx_recclk[i]),
  .xaui_tx_pdata         (xaui_tx_pdata[i*8+7:i*8]),
  .xaui_tx_is_k          (xaui_tx_is_k[i])
);
endgenerate

// both clock edge
always @ (xaui_tx_recclk[0]) begin
  if (xgmii_tx_ready && xaui_tx_is_k != 4'hF) 
    $fdisplay(fd3, "%t [Serial TX] xaui_tx_pdata = %h datak = %h", 
             $time, xaui_tx_pdata, xaui_tx_is_k);
end


//--------------------------------------------------------------
// xaui rx serial monitor
//--------------------------------------------------------------
wire [31:0] xaui_rx_pdata;
wire [ 3:0] xaui_rx_is_k;

generate
for (i = 0; i < 4; i=i+1) 
xaui_monitor xaui_mon_rx_lane (
  .xaui_bit_clock        (xaui_bit_clk),
  .xaui_lane_p           (xaui_rx_serial_datain[i]),
  .xaui_recclk           (xaui_rx_recclk[i]),
  .xaui_tx_pdata         (xaui_rx_pdata[i*8+7:i*8]),
  .xaui_tx_is_k          (xaui_rx_is_k[i])
);
endgenerate

// both clock edge
always @ (xaui_rx_recclk[0]) begin
  if (xgmii_rx_ready && xaui_rx_is_k != 4'hF) 
    $fdisplay(fd4, "%t [Serial RX] xaui_rx_pdata = %h datak = %h", 
             $time, xaui_rx_pdata, xaui_rx_is_k);
end


endmodule
