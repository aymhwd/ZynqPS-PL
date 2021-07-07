-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Mon May 18 08:02:13 2020
-- Host        : ayman-HP-ENVY-15 running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_counter_255_0_0_sim_netlist.vhdl
-- Design      : design_1_counter_255_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_255 is
  port (
    Tvalid : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Tready : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_255;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_255 is
  signal Tvalid_i_1_n_0 : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count[7]_i_2_n_0\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[7]_i_1\ : label is "soft_lutpair1";
begin
  \out\(7 downto 0) <= \^out\(7 downto 0);
Tvalid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => Tvalid_i_1_n_0
    );
Tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => Tready,
      Q => Tvalid
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(0),
      O => count(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      O => count(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      I2 => \^out\(2),
      O => count(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(0),
      I2 => \^out\(2),
      I3 => \^out\(3),
      O => count(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(0),
      I2 => \^out\(1),
      I3 => \^out\(3),
      I4 => \^out\(4),
      O => count(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^out\(3),
      I1 => \^out\(1),
      I2 => \^out\(0),
      I3 => \^out\(2),
      I4 => \^out\(4),
      I5 => \^out\(5),
      O => count(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count[7]_i_2_n_0\,
      I1 => \^out\(6),
      O => count(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count[7]_i_2_n_0\,
      I1 => \^out\(6),
      I2 => \^out\(7),
      O => count(7)
    );
\count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^out\(5),
      I1 => \^out\(3),
      I2 => \^out\(1),
      I3 => \^out\(0),
      I4 => \^out\(2),
      I5 => \^out\(4),
      O => \count[7]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => count(0),
      Q => \^out\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => count(1),
      Q => \^out\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => count(2),
      Q => \^out\(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => count(3),
      Q => \^out\(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => count(4),
      Q => \^out\(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => count(5),
      Q => \^out\(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => count(6),
      Q => \^out\(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => count(7),
      Q => \^out\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Tready : in STD_LOGIC;
    Tvalid : out STD_LOGIC;
    Tdata : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_counter_255_0_0,counter_255,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "counter_255,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of Tready : signal is "xilinx.com:interface:axis:1.0 interface_axis TREADY";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Tready : signal is "XIL_INTERFACENAME interface_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute x_interface_info of Tvalid : signal is "xilinx.com:interface:axis:1.0 interface_axis TVALID";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF interface_axis, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
  attribute x_interface_info of Tdata : signal is "xilinx.com:interface:axis:1.0 interface_axis TDATA";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_255
     port map (
      Tready => Tready,
      Tvalid => Tvalid,
      clk => clk,
      \out\(7 downto 0) => Tdata(7 downto 0),
      rst => rst
    );
end STRUCTURE;
