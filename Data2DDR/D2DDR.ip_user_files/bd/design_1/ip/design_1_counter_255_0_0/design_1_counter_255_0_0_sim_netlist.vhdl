-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Sun May 17 10:25:33 2020
-- Host        : ayman-HP-ENVY-15 running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/ayman/Vivado_Projects/Hosseiny2/Hosseiny2.srcs/sources_1/bd/design_1/ip/design_1_counter_255_0_0/design_1_counter_255_0_0_sim_netlist.vhdl
-- Design      : design_1_counter_255_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_counter_255_0_0_counter_255 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Tvalid : out STD_LOGIC;
    Tready : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_counter_255_0_0_counter_255 : entity is "counter_255";
end design_1_counter_255_0_0_counter_255;

architecture STRUCTURE of design_1_counter_255_0_0_counter_255 is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Tvalid_i_1_n_0 : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_i_2_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[7]_i_1\ : label is "soft_lutpair1";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
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
      I0 => \^q\(0),
      O => sel0(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => count(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => count(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => count(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => count(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count[7]_i_2_n_0\,
      I1 => \^q\(6),
      O => count(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count[7]_i_2_n_0\,
      I2 => \^q\(7),
      O => count(7)
    );
\count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \count[7]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => sel0(0),
      Q => \^q\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => \count[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => count(2),
      Q => \^q\(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => count(3),
      Q => \^q\(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => count(4),
      Q => \^q\(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => count(5),
      Q => \^q\(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => count(6),
      Q => \^q\(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Tready,
      CLR => Tvalid_i_1_n_0,
      D => count(7),
      Q => \^q\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_counter_255_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Tready : in STD_LOGIC;
    Tvalid : out STD_LOGIC;
    Tdata : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_counter_255_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_counter_255_0_0 : entity is "design_1_counter_255_0_0,counter_255,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_counter_255_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_counter_255_0_0 : entity is "counter_255,Vivado 2017.4";
end design_1_counter_255_0_0;

architecture STRUCTURE of design_1_counter_255_0_0 is
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
U0: entity work.design_1_counter_255_0_0_counter_255
     port map (
      Q(7 downto 0) => Tdata(7 downto 0),
      Tready => Tready,
      Tvalid => Tvalid,
      clk => clk,
      rst => rst
    );
end STRUCTURE;
