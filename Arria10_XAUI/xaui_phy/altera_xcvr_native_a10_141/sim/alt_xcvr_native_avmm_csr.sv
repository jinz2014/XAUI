// (C) 2001-2014 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License Subscription 
// Agreement, Altera MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


module alt_xcvr_native_avmm_csr #(
  parameter dbg_capability_reg_enable   = 0,
  parameter dbg_user_identifier         = 0,
  parameter dbg_stat_soft_logic_enable  = 0,
  parameter dbg_ctrl_soft_logic_enable  = 0,
  parameter channels                    = 1,
  parameter channel_num                 = 1,
  parameter duplex_mode                 = 3,
  parameter dbg_prbs_soft_logic_enable  = 0,
  parameter dbg_odi_soft_logic_enable   = 0
) (
  // avmm signals
  input               avmm_clk,
  input               avmm_reset,
  input  [8:0]        avmm_address,
  input  [7:0]        avmm_writedata,
  input               avmm_write,
  input               avmm_read,
  output reg [7:0]    avmm_readdata,
  output              avmm_waitrequest,

  // prbs ctrl signal
  input  [49:0]       prbs_err,
  input  [49:0]       prbs_bit,
  input               prbs_done,
  output              prbs_count_en,
  output              prbs_snap,
  output              prbs_reset,
  
  // inuput statussignals from the channel
  input               rx_is_lockedtodata,
  input               rx_is_lockedtoref,
  input               tx_cal_busy,
  input               rx_cal_busy,
  
  // input controlsignals
  input               rx_prbs_err_clr,
  input               set_rx_locktoref,
  input               set_rx_locktodata,
  input               serial_loopback,
  input               rx_analogreset,
  input               rx_digitalreset,
  input               tx_analogreset,
  input               tx_digitalreset,

  // output control signals to the channel
  output              csr_set_lock_to_data,
  output              csr_set_lock_to_ref,
  output              csr_en_loopback,
  output              csr_rx_analogreset,
  output              csr_rx_digitalreset,
  output              csr_tx_analogreset,
  output              csr_tx_digitalreset
);

// Import package with parameters for the soft addresses and offsets
import a10_avmm_h::*;


// Reg for generating waitrequest and data valid
reg         avmm_valid;

/**********************************************************************/
// wires and bus declaration
/**********************************************************************/
wire [7:0]  rd_channel;
wire [7:0]  rd_channel_num;
wire [7:0]  rd_duplex;
wire [7:0]  rd_system_id;
wire [7:0]  rd_prbs_en;
wire [7:0]  rd_odi_en;
wire [7:0]  rd_status_en;
wire [7:0]  rd_control_en;
wire [7:0]  rd_prbs_ctrl;
wire [7:0]  rd_ltr_status;
wire [7:0]  rd_set_ltr;
wire [7:0]  rd_loopback;
wire [7:0]  rd_cal_busy;
wire [7:0]  rd_chnl_reset;
wire [49:0] rd_prbs_err;
wire [49:0] rd_prbs_bit;


/**********************************************************************/
//generate waitrequest
/**********************************************************************/
assign avmm_waitrequest = (~avmm_valid & avmm_read);


/**********************************************************************/
// soft CSRs for embedded debug
/**********************************************************************/
always@(posedge avmm_clk) begin
  if(~avmm_read) begin
    avmm_valid    <= 1'b0;
    avmm_readdata <= RD_UNUSED;
  end else begin
    avmm_valid    <= avmm_waitrequest;
    case(avmm_address)

      // Address for Capabilities
      A10_XR_ADDR_ID_0:           avmm_readdata <= rd_system_id;
      A10_XR_ADDR_STATUS_EN:      avmm_readdata <= rd_status_en;
      A10_XR_ADDR_CONTROL_EN:     avmm_readdata <= rd_control_en;
      A10_XR_ADDR_NAT_CHNLS:      avmm_readdata <= rd_channel;
      A10_XR_ADDR_NAT_CHNL_NUM:   avmm_readdata <= rd_channel_num;
      A10_XR_ADDR_NAT_DUPLEX:     avmm_readdata <= rd_duplex;
      A10_XR_ADDR_NAT_PRBS_EN:    avmm_readdata <= rd_prbs_en;
      A10_XR_ADDR_NAT_ODI_EN:     avmm_readdata <= rd_odi_en;

      // Addresses for PRBS
      A10_XR_ADDR_PRBS_CTRL:      avmm_readdata <= rd_prbs_ctrl;
      A10_XR_ADDR_PRBS_ERR_0:     avmm_readdata <= rd_prbs_err[7:0];
      A10_XR_ADDR_PRBS_ERR_1:     avmm_readdata <= rd_prbs_err[15:8];
      A10_XR_ADDR_PRBS_ERR_2:     avmm_readdata <= rd_prbs_err[23:16];
      A10_XR_ADDR_PRBS_ERR_3:     avmm_readdata <= rd_prbs_err[31:24];
      A10_XR_ADDR_PRBS_ERR_4:     avmm_readdata <= rd_prbs_err[39:32];
      A10_XR_ADDR_PRBS_ERR_5:     avmm_readdata <= rd_prbs_err[47:40];
      A10_XR_ADDR_PRBS_ERR_6:     avmm_readdata <= {6'b0, rd_prbs_err[49:48]};
      A10_XR_ADDR_PRBS_BIT_0:     avmm_readdata <= rd_prbs_bit[7:0];
      A10_XR_ADDR_PRBS_BIT_1:     avmm_readdata <= rd_prbs_bit[15:8];
      A10_XR_ADDR_PRBS_BIT_2:     avmm_readdata <= rd_prbs_bit[23:16];
      A10_XR_ADDR_PRBS_BIT_3:     avmm_readdata <= rd_prbs_bit[31:24];
      A10_XR_ADDR_PRBS_BIT_4:     avmm_readdata <= rd_prbs_bit[39:32];
      A10_XR_ADDR_PRBS_BIT_5:     avmm_readdata <= rd_prbs_bit[47:40];
      A10_XR_ADDR_PRBS_BIT_6:     avmm_readdata <= {6'b0, rd_prbs_bit[49:48]};

      // Address for status registers
      A10_XR_ADDR_GP_RD_LTR:      avmm_readdata <= rd_ltr_status;
      A10_XR_ADDR_GP_CAL_BUSY:    avmm_readdata <= rd_cal_busy;

      // Addresses for control registers
      A10_XR_ADDR_GP_SET_LTR:     avmm_readdata <= rd_set_ltr;
      A10_XR_ADDR_GP_LPBK:        avmm_readdata <= rd_loopback;
      A10_XR_ADDR_CHNL_RESET:     avmm_readdata <= rd_chnl_reset;
      default:                    avmm_readdata <= RD_UNUSED;
    endcase
  end
end

/**********************************************************************/
// Generate Capability Registers
/**********************************************************************/
generate if(dbg_capability_reg_enable == 1) begin: en_capability_reg
  assign rd_channel     = channels[7:0];
  assign rd_channel_num = channel_num[7:0];
  assign rd_duplex      = (duplex_mode == "duplex") ? 8'h3 :
                          (duplex_mode == "tx")     ? 8'h2 : 8'h1;
  assign rd_system_id   = dbg_user_identifier[7:0];
  assign rd_prbs_en     = dbg_prbs_soft_logic_enable[7:0];
  assign rd_odi_en      = dbg_odi_soft_logic_enable[7:0];
  assign rd_status_en   = dbg_stat_soft_logic_enable[7:0];
  assign rd_control_en  = dbg_ctrl_soft_logic_enable[7:0];
end else begin
  assign rd_channel     = RD_UNUSED;
  assign rd_channel_num = RD_UNUSED;
  assign rd_duplex      = RD_UNUSED;
  assign rd_system_id   = RD_UNUSED;
  assign rd_prbs_en     = RD_UNUSED;
  assign rd_odi_en      = RD_UNUSED;
  assign rd_status_en   = RD_UNUSED;
  assign rd_control_en  = RD_UNUSED;
end
endgenerate


/**********************************************************************/
// Generate registers for status signals
/**********************************************************************/
generate if(dbg_stat_soft_logic_enable == 1) begin: en_status_reg

    /**********************************************************************/
    // Wires for status signal synchronizers inside generate to avoid un-used wires
    /**********************************************************************/
    wire rx_is_ltd_sync;
    wire rx_is_ltr_sync;
    wire tx_cal_busy_sync;
    wire rx_cal_busy_sync;


    /**********************************************************************/
    // Instantiate Synchronizers and read logic for rx_is_lockedtodata and rx_is_lockedtoref
    /**********************************************************************/
    alt_xcvr_resync #(
      .SYNC_CHAIN_LENGTH ( 3 ),
      .WIDTH             ( 2 )  // two bits, one for locktodata and one for locktoref
    ) rx_is_locked_sync (
      .clk                       (avmm_clk),
      .reset                     (avmm_reset),
      .d                         ({rx_is_lockedtodata, rx_is_lockedtoref}),
      .q                         ({rx_is_ltd_sync, rx_is_ltr_sync}) 
    );

    assign rd_ltr_status[A10_XR_OFFSET_RD_LTR] = rx_is_ltr_sync;
    assign rd_ltr_status[A10_XR_OFFSET_RD_LTD] = rx_is_ltd_sync;
    assign rd_ltr_status[A10_XR_OFFSET_LTR_UNUSED+:A10_XR_LTR_UNUSED_LEN] = {A10_XR_LTR_UNUSED_LEN{1'b0}};


    /**********************************************************************/
    // Instantiate Synchronizers and read logic for cal busy
    /**********************************************************************/
    alt_xcvr_resync #(
      .SYNC_CHAIN_LENGTH ( 3 ),
      .WIDTH             ( 2 )  // two bits, one for locktodata and one for locktoref
    ) cal_busy (
      .clk                       (avmm_clk),
      .reset                     (avmm_reset),
      .d                         ({rx_cal_busy, tx_cal_busy}),
      .q                         ({rx_cal_busy_sync, tx_cal_busy_sync}) 
    );

    assign rd_cal_busy[A10_XR_OFFSET_TX_CAL_BUSY] = tx_cal_busy_sync;
    assign rd_cal_busy[A10_XR_OFFSET_RX_CAL_BUSY] = rx_cal_busy_sync;
    assign rd_cal_busy[A10_XR_OFFSET_CAL_UNUSED+:A10_XR_CAL_UNUSED_LEN] = {A10_XR_CAL_UNUSED_LEN{1'b0}};

  end else begin
    assign rd_ltr_status  = RD_UNUSED;
    assign rd_cal_busy    = RD_UNUSED;
  end
endgenerate


/**********************************************************************/
// Generate registers for control signals
/**********************************************************************/
generate if(dbg_ctrl_soft_logic_enable == 1) begin: en_control_reg

    /**********************************************************************/
    // Registers for set Lock to ref and set Lock to Data
    /**********************************************************************/
    reg r_set_ltr;
    reg r_set_ltd;
    reg r_set_ltr_override;
    reg r_set_ltd_override;

    // readback control registers for set ltr and ltd
    assign rd_set_ltr[A10_XR_OFFSET_SET_LTR] = r_set_ltr;
    assign rd_set_ltr[A10_XR_OFFSET_SET_LTD] = r_set_ltd;
    assign rd_set_ltr[A10_XR_OFFSET_SET_LTR_OVR] = r_set_ltr_override;
    assign rd_set_ltr[A10_XR_OFFSET_SET_LTD_OVR] = r_set_ltd_override;
    assign rd_set_ltr[A10_XR_OFFSET_SET_LTR_UNUSED+:A10_XR_SET_LTR_UNUSED_LEN] = {A10_XR_SET_LTR_UNUSED_LEN{1'b0}};

    // assign the output signals to the channel.  Use the inputs signal with the control registers
    assign csr_set_lock_to_ref  = (rd_set_ltr[A10_XR_OFFSET_SET_LTR_OVR]) ? rd_set_ltr[A10_XR_OFFSET_SET_LTR] : set_rx_locktoref;
    assign csr_set_lock_to_data = (rd_set_ltr[A10_XR_OFFSET_SET_LTD_OVR]) ? rd_set_ltr[A10_XR_OFFSET_SET_LTD] : set_rx_locktodata;

    // write control registers for ltr and ltd
    always@(posedge avmm_clk or posedge avmm_reset) begin
      if(avmm_reset) begin
        r_set_ltr           <= 1'b0;
        r_set_ltd           <= 1'b0;
        r_set_ltr_override  <= 1'b0;
        r_set_ltd_override  <= 1'b0;
      end else if(avmm_write && avmm_address == A10_XR_ADDR_GP_SET_LTR) begin
        r_set_ltr           <= avmm_writedata[A10_XR_OFFSET_SET_LTR];
        r_set_ltd           <= avmm_writedata[A10_XR_OFFSET_SET_LTD];
        r_set_ltr_override  <= avmm_writedata[A10_XR_OFFSET_SET_LTR_OVR];
        r_set_ltd_override  <= avmm_writedata[A10_XR_OFFSET_SET_LTD_OVR];
      end
    end


    /**********************************************************************/
    // Registers for loopback
    /**********************************************************************/
    reg r_loopback;

    // readback control register for enabling loopback
    assign rd_loopback[A10_XR_OFFSET_LPBK] = r_loopback;
    assign rd_loopback[A10_XR_OFFSET_LPBK_UNUSED+:A10_XR_LPBK_UNUSED_LEN] = {A10_XR_LPBK_UNUSED_LEN{1'b0}};

    // assign the output signals to the channel
    assign csr_en_loopback  = (rd_loopback[A10_XR_OFFSET_LPBK] || serial_loopback);

    // write control registers for loopback
    always@(posedge avmm_clk or posedge avmm_reset) begin
      if(avmm_reset) begin
        r_loopback    <= 1'b0;
      end else if(avmm_write && avmm_address == A10_XR_ADDR_GP_LPBK) begin
        r_loopback    <= avmm_writedata[A10_XR_OFFSET_LPBK];
      end
    end


    /**********************************************************************/
    // Registers for Channel Resets and Overrides
    /**********************************************************************/
    reg r_rx_analogreset;
    reg r_rx_digitalreset;
    reg r_tx_analogreset;
    reg r_tx_digitalreset;
    reg r_rx_analogreset_override;
    reg r_rx_digitalreset_override;
    reg r_tx_analogreset_override;
    reg r_tx_digitalreset_override;

    // readback the control registers for the channel resets and overrides
    assign rd_chnl_reset[A10_XR_OFFSET_RX_ANA]     = r_rx_analogreset;
    assign rd_chnl_reset[A10_XR_OFFSET_RX_DIG]     = r_rx_digitalreset;
    assign rd_chnl_reset[A10_XR_OFFSET_TX_ANA]     = r_tx_analogreset;
    assign rd_chnl_reset[A10_XR_OFFSET_TX_DIG]     = r_tx_digitalreset;
    assign rd_chnl_reset[A10_XR_OFFSET_RX_ANA_OVR] = r_rx_analogreset_override;
    assign rd_chnl_reset[A10_XR_OFFSET_RX_DIG_OVR] = r_rx_digitalreset_override;
    assign rd_chnl_reset[A10_XR_OFFSET_TX_ANA_OVR] = r_tx_analogreset_override;
    assign rd_chnl_reset[A10_XR_OFFSET_TX_DIG_OVR] = r_tx_digitalreset_override;

    // assign the output signals to the channel
    assign csr_rx_analogreset   = (rd_chnl_reset[A10_XR_OFFSET_RX_ANA_OVR]) ? rd_chnl_reset[A10_XR_OFFSET_RX_ANA] : rx_analogreset;
    assign csr_rx_digitalreset  = (rd_chnl_reset[A10_XR_OFFSET_RX_DIG_OVR]) ? rd_chnl_reset[A10_XR_OFFSET_RX_DIG] : rx_digitalreset;
    assign csr_tx_analogreset   = (rd_chnl_reset[A10_XR_OFFSET_TX_ANA_OVR]) ? rd_chnl_reset[A10_XR_OFFSET_TX_ANA] : tx_analogreset;
    assign csr_tx_digitalreset  = (rd_chnl_reset[A10_XR_OFFSET_TX_DIG_OVR]) ? rd_chnl_reset[A10_XR_OFFSET_TX_DIG] : tx_digitalreset;

    // write reset and reset override registers
    always@(posedge avmm_clk or posedge avmm_reset) begin
      if(avmm_reset) begin
        r_rx_analogreset              = 1'b0;
        r_rx_digitalreset             = 1'b0;
        r_tx_analogreset              = 1'b0;
        r_tx_digitalreset             = 1'b0;
        r_rx_analogreset_override     = 1'b0;
        r_rx_digitalreset_override    = 1'b0;
        r_tx_analogreset_override     = 1'b0;
        r_tx_digitalreset_override    = 1'b0;
      end else if(avmm_write && avmm_address == A10_XR_ADDR_CHNL_RESET) begin
        r_rx_analogreset              = avmm_writedata[A10_XR_OFFSET_RX_ANA]; 
        r_rx_digitalreset             = avmm_writedata[A10_XR_OFFSET_RX_DIG]; 
        r_tx_analogreset              = avmm_writedata[A10_XR_OFFSET_TX_ANA]; 
        r_tx_digitalreset             = avmm_writedata[A10_XR_OFFSET_TX_DIG]; 
        r_rx_analogreset_override     = avmm_writedata[A10_XR_OFFSET_RX_ANA_OVR]; 
        r_rx_digitalreset_override    = avmm_writedata[A10_XR_OFFSET_RX_DIG_OVR]; 
        r_tx_analogreset_override     = avmm_writedata[A10_XR_OFFSET_TX_ANA_OVR]; 
        r_tx_digitalreset_override    = avmm_writedata[A10_XR_OFFSET_TX_DIG_OVR]; 
      end
    end
        
  end else begin
    // assign LTR control signals when control registers are disabled
    assign rd_set_ltr           = RD_UNUSED;
    assign rd_loopback          = RD_UNUSED;
    assign rd_chnl_reset        = RD_UNUSED;

    // pass through control signals
    assign csr_set_lock_to_ref  = (set_rx_locktoref);
    assign csr_set_lock_to_data = (set_rx_locktodata);
    assign csr_en_loopback      = (serial_loopback);
    assign csr_rx_analogreset   = (rx_analogreset);
    assign csr_rx_digitalreset  = (rx_digitalreset);
    assign csr_tx_analogreset   = (tx_analogreset);
    assign csr_tx_digitalreset  = (tx_digitalreset);
  end
endgenerate


/**********************************************************************/
// PRBS Registers and logic
/**********************************************************************/
assign rd_prbs_err  = prbs_err;
assign rd_prbs_bit  = prbs_bit;
generate if(dbg_prbs_soft_logic_enable == 1) begin: en_prbs_reg

    /**********************************************************************/
    // wires for synchronizer and registers for control signals to the PRBS accumulation block
    /**********************************************************************/
    wire rx_prbs_err_clr_sync;
    reg r_prbs_reset;
    reg r_prbs_snap;
    reg r_prbs_en;

    /**********************************************************************/
    // Instantiate Synchronizers and read logic for rx_is_lockedtodata and rx_is_lockedtoref
    /**********************************************************************/
    alt_xcvr_resync #(
      .SYNC_CHAIN_LENGTH ( 3 ),
      .WIDTH             ( 1 )  // two bits, one for locktodata and one for locktoref
    ) prbs_err_clr_sync (
      .clk                       (avmm_clk),
      .reset                     (avmm_reset),
      .d                         (rx_prbs_err_clr),
      .q                         (rx_prbs_err_clr_sync) 
    );

    // assign control signals for the PRBS accumulation logic
    assign prbs_count_en  = r_prbs_en;
    assign prbs_snap      = r_prbs_snap;
    assign prbs_reset     = r_prbs_reset || rx_prbs_err_clr_sync;

    // readback data
    assign rd_prbs_ctrl[A10_XR_OFFSET_PRBS_EN]    = r_prbs_en;
    assign rd_prbs_ctrl[A10_XR_OFFSET_PRBS_RESET] = r_prbs_reset;
    assign rd_prbs_ctrl[A10_XR_OFFSET_PRBS_SNAP]  = r_prbs_snap;
    assign rd_prbs_ctrl[A10_XR_OFFSET_PRBS_LOCK]  = prbs_done;
    assign rd_prbs_ctrl[A10_XR_OFFSET_PRBS_UNUSED+:A10_XR_PRBS_UNUSED_LEN] = {A10_XR_PRBS_UNUSED_LEN{1'b0}};

    // write prbs ctrl reg
    always@(posedge avmm_clk or posedge avmm_reset) begin
      if(avmm_reset) begin
        r_prbs_en     <= 1'b0;
        r_prbs_reset  <= 1'b0;
        r_prbs_snap   <= 1'b0;
      end else if(avmm_write && avmm_address == A10_XR_ADDR_PRBS_CTRL) begin
        r_prbs_en     <= avmm_writedata[A10_XR_OFFSET_PRBS_EN];
        r_prbs_reset  <= avmm_writedata[A10_XR_OFFSET_PRBS_RESET];
        r_prbs_snap   <= avmm_writedata[A10_XR_OFFSET_PRBS_SNAP];
      end
    end
  end else begin
    assign prbs_reset     = (rx_prbs_err_clr);
    assign rd_prbs_ctrl   = RD_UNUSED;
    assign prbs_count_en  = 1'b0;
    assign prbs_snap      = 1'b0;
  end
endgenerate

endmodule
