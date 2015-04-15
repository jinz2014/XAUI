	component xaui_phy is
		port (
			pll_ref_clk          : in  std_logic                     := 'X';             -- clk
			xgmii_tx_clk         : in  std_logic                     := 'X';             -- clk
			xgmii_rx_clk         : out std_logic;                                        -- clk
			xgmii_rx_dc          : out std_logic_vector(71 downto 0);                    -- data
			xgmii_tx_dc          : in  std_logic_vector(71 downto 0) := (others => 'X'); -- data
			xaui_rx_serial_data  : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			xaui_tx_serial_data  : out std_logic_vector(3 downto 0);                     -- export
			rx_ready             : out std_logic;                                        -- export
			tx_ready             : out std_logic;                                        -- export
			phy_mgmt_clk         : in  std_logic                     := 'X';             -- clk
			phy_mgmt_clk_reset   : in  std_logic                     := 'X';             -- reset
			phy_mgmt_address     : in  std_logic_vector(8 downto 0)  := (others => 'X'); -- address
			phy_mgmt_read        : in  std_logic                     := 'X';             -- read
			phy_mgmt_readdata    : out std_logic_vector(31 downto 0);                    -- readdata
			phy_mgmt_write       : in  std_logic                     := 'X';             -- write
			phy_mgmt_writedata   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			phy_mgmt_waitrequest : out std_logic;                                        -- waitrequest
			pll_locked_i         : in  std_logic                     := 'X';             -- export
			tx_bonding_clocks    : in  std_logic_vector(5 downto 0)  := (others => 'X'); -- export
			pll_powerdown_o      : out std_logic;                                        -- export
			pll_cal_busy_i       : in  std_logic                     := 'X'              -- export
		);
	end component xaui_phy;

	u0 : component xaui_phy
		port map (
			pll_ref_clk          => CONNECTED_TO_pll_ref_clk,          --         pll_ref_clk.clk
			xgmii_tx_clk         => CONNECTED_TO_xgmii_tx_clk,         --        xgmii_tx_clk.clk
			xgmii_rx_clk         => CONNECTED_TO_xgmii_rx_clk,         --        xgmii_rx_clk.clk
			xgmii_rx_dc          => CONNECTED_TO_xgmii_rx_dc,          --         xgmii_rx_dc.data
			xgmii_tx_dc          => CONNECTED_TO_xgmii_tx_dc,          --         xgmii_tx_dc.data
			xaui_rx_serial_data  => CONNECTED_TO_xaui_rx_serial_data,  -- xaui_rx_serial_data.export
			xaui_tx_serial_data  => CONNECTED_TO_xaui_tx_serial_data,  -- xaui_tx_serial_data.export
			rx_ready             => CONNECTED_TO_rx_ready,             --            rx_ready.export
			tx_ready             => CONNECTED_TO_tx_ready,             --            tx_ready.export
			phy_mgmt_clk         => CONNECTED_TO_phy_mgmt_clk,         --        phy_mgmt_clk.clk
			phy_mgmt_clk_reset   => CONNECTED_TO_phy_mgmt_clk_reset,   --  phy_mgmt_clk_reset.reset
			phy_mgmt_address     => CONNECTED_TO_phy_mgmt_address,     --            phy_mgmt.address
			phy_mgmt_read        => CONNECTED_TO_phy_mgmt_read,        --                    .read
			phy_mgmt_readdata    => CONNECTED_TO_phy_mgmt_readdata,    --                    .readdata
			phy_mgmt_write       => CONNECTED_TO_phy_mgmt_write,       --                    .write
			phy_mgmt_writedata   => CONNECTED_TO_phy_mgmt_writedata,   --                    .writedata
			phy_mgmt_waitrequest => CONNECTED_TO_phy_mgmt_waitrequest, --                    .waitrequest
			pll_locked_i         => CONNECTED_TO_pll_locked_i,         --        pll_locked_i.export
			tx_bonding_clocks    => CONNECTED_TO_tx_bonding_clocks,    --   tx_bonding_clocks.export
			pll_powerdown_o      => CONNECTED_TO_pll_powerdown_o,      --     pll_powerdown_o.export
			pll_cal_busy_i       => CONNECTED_TO_pll_cal_busy_i        --      pll_cal_busy_i.export
		);

