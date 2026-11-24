-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Nov 16 13:23:47 2026
-- Host        : Noctis_Win11 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_bd_sh_sc_fifo_axi_0_0_sim_netlist.vhdl
-- Design      : mult_bd_sh_sc_fifo_axi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_fifo is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rd_valid_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    fifo_wr_pulse : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_rd_pulse : in STD_LOGIC;
    fifo_rst_pulse : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \axi_rdata_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_rdata_reg[1]\ : in STD_LOGIC;
    rd_valid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_fifo is
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_2_n_0\ : STD_LOGIC;
  signal \count[3]_i_3_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_2_n_0\ : STD_LOGIC;
  signal \count[5]_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_i_2_n_0\ : STD_LOGIC;
  signal \count[5]_i_3_n_0\ : STD_LOGIC;
  signal \count[5]_i_4_n_0\ : STD_LOGIC;
  signal \count[5]_i_5_n_0\ : STD_LOGIC;
  signal \count[5]_i_6_n_0\ : STD_LOGIC;
  signal do_read : STD_LOGIC;
  signal do_write : STD_LOGIC;
  signal do_write0 : STD_LOGIC;
  signal fifo_data_count : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal fifo_srst : STD_LOGIC;
  signal fifo_valid : STD_LOGIC;
  signal mem_reg_i_1_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal plusOp_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rd_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rd_ptr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \rd_ptr[4]_i_3_n_0\ : STD_LOGIC;
  signal \valid_pipe[0]_i_1_n_0\ : STD_LOGIC;
  signal wr_ptr_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[5]_i_6\ : label is "soft_lutpair5";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-4 {cell *THIS*} {string 5}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 512;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "U0/sc_fifo_axi_v1_0_S00_AXI_inst/sc_fifo_inst/mem_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg : label is 992;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 15;
  attribute SOFT_HLUTNM of \rd_ptr[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rd_ptr[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rd_ptr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rd_ptr[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rd_ptr[4]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of rd_valid_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \valid_pipe[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wr_ptr[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wr_ptr[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wr_ptr[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wr_ptr[4]_i_2\ : label is "soft_lutpair0";
begin
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAAAAAAAAAA"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata_reg[0]\(0),
      I2 => \axi_rdata_reg[0]\(1),
      I3 => \axi_rdata_reg[0]\(3),
      I4 => \axi_rdata_reg[0]\(2),
      I5 => \axi_rdata[0]_i_3_n_0\,
      O => D(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E23300"
    )
        port map (
      I0 => rd_data(0),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => fifo_data_count(0),
      I3 => \axi_rdata_reg[0]\(3),
      I4 => \axi_rdata_reg[0]\(2),
      I5 => \axi_rdata_reg[0]\(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => fifo_data_count(0),
      I1 => fifo_data_count(1),
      I2 => fifo_data_count(2),
      I3 => fifo_data_count(3),
      I4 => fifo_data_count(4),
      I5 => fifo_data_count(5),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\(1),
      I1 => \axi_rdata_reg[0]\(3),
      I2 => rd_data(10),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => \axi_rdata_reg[0]\(2),
      O => D(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\(1),
      I1 => \axi_rdata_reg[0]\(3),
      I2 => rd_data(11),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => \axi_rdata_reg[0]\(2),
      O => D(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\(1),
      I1 => \axi_rdata_reg[0]\(3),
      I2 => rd_data(12),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => \axi_rdata_reg[0]\(2),
      O => D(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44000040"
    )
        port map (
      I0 => \axi_rdata_reg[0]\(3),
      I1 => \axi_rdata_reg[0]\(2),
      I2 => rd_data(13),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => \axi_rdata_reg[0]\(1),
      O => D(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\(1),
      I1 => \axi_rdata_reg[0]\(3),
      I2 => rd_data(14),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => \axi_rdata_reg[0]\(2),
      O => D(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\(1),
      I1 => \axi_rdata_reg[0]\(3),
      I2 => rd_data(15),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => \axi_rdata_reg[0]\(2),
      O => D(15)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000B0B030008080"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata_reg[0]\(0),
      I2 => \axi_rdata_reg[1]\,
      I3 => fifo_data_count(1),
      I4 => \axi_rdata_reg[0]\(1),
      I5 => rd_data(1),
      O => D(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => fifo_data_count(3),
      I1 => fifo_data_count(2),
      I2 => fifo_data_count(4),
      I3 => fifo_data_count(5),
      I4 => fifo_data_count(1),
      I5 => fifo_data_count(0),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAAAAAAA"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => \axi_rdata[2]_i_3_n_0\,
      I2 => fifo_data_count(1),
      I3 => \axi_rdata_reg[1]\,
      I4 => \axi_rdata_reg[0]\(1),
      I5 => \axi_rdata_reg[0]\(0),
      O => D(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C0000000AF"
    )
        port map (
      I0 => rd_data(2),
      I1 => fifo_data_count(2),
      I2 => \axi_rdata_reg[0]\(2),
      I3 => \axi_rdata_reg[0]\(3),
      I4 => \axi_rdata_reg[0]\(0),
      I5 => \axi_rdata_reg[0]\(1),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => fifo_data_count(5),
      I1 => fifo_data_count(4),
      I2 => fifo_data_count(3),
      I3 => fifo_data_count(2),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A8888888A88"
    )
        port map (
      I0 => \axi_rdata_reg[1]\,
      I1 => \axi_rdata[3]_i_2_n_0\,
      I2 => \axi_rdata_reg[0]\(0),
      I3 => rd_data(3),
      I4 => \axi_rdata_reg[0]\(1),
      I5 => fifo_data_count(3),
      O => D(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F40000"
    )
        port map (
      I0 => \count[4]_i_2_n_0\,
      I1 => fifo_data_count(4),
      I2 => fifo_data_count(5),
      I3 => \axi_rdata_reg[0]\(1),
      I4 => \axi_rdata_reg[0]\(0),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A80A0A08A80"
    )
        port map (
      I0 => \axi_rdata_reg[1]\,
      I1 => rd_valid,
      I2 => \axi_rdata_reg[0]\(0),
      I3 => rd_data(4),
      I4 => \axi_rdata_reg[0]\(1),
      I5 => fifo_data_count(4),
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => rd_data(5),
      I1 => \axi_rdata_reg[0]\(1),
      I2 => fifo_data_count(5),
      I3 => \axi_rdata_reg[0]\(2),
      I4 => \axi_rdata_reg[0]\(3),
      I5 => \axi_rdata_reg[0]\(0),
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\(1),
      I1 => \axi_rdata_reg[0]\(3),
      I2 => rd_data(6),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => \axi_rdata_reg[0]\(2),
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\(1),
      I1 => \axi_rdata_reg[0]\(3),
      I2 => rd_data(7),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => \axi_rdata_reg[0]\(2),
      O => D(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\(1),
      I1 => \axi_rdata_reg[0]\(3),
      I2 => rd_data(8),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => \axi_rdata_reg[0]\(2),
      O => D(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\(1),
      I1 => \axi_rdata_reg[0]\(3),
      I2 => rd_data(9),
      I3 => \axi_rdata_reg[0]\(0),
      I4 => \axi_rdata_reg[0]\(2),
      O => D(9)
    );
\count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => fifo_rst_pulse,
      I1 => s00_axi_aresetn,
      I2 => \count[5]_i_4_n_0\,
      I3 => fifo_data_count(0),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004404040400440"
    )
        port map (
      I0 => fifo_rst_pulse,
      I1 => s00_axi_aresetn,
      I2 => fifo_data_count(1),
      I3 => do_read,
      I4 => do_write,
      I5 => fifo_data_count(0),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AA8AA00800200"
    )
        port map (
      I0 => \count[5]_i_2_n_0\,
      I1 => fifo_data_count(1),
      I2 => do_write,
      I3 => do_read,
      I4 => fifo_data_count(0),
      I5 => fifo_data_count(2),
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A20AA008A20A802"
    )
        port map (
      I0 => \count[5]_i_2_n_0\,
      I1 => \count[5]_i_4_n_0\,
      I2 => fifo_data_count(2),
      I3 => fifo_data_count(3),
      I4 => \count[3]_i_2_n_0\,
      I5 => \count[3]_i_3_n_0\,
      O => \count[3]_i_1_n_0\
    );
\count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000202000000000"
    )
        port map (
      I0 => fifo_data_count(1),
      I1 => \axi_rdata[1]_i_2_n_0\,
      I2 => fifo_wr_pulse,
      I3 => \axi_rdata[0]_i_3_n_0\,
      I4 => fifo_rd_pulse,
      I5 => fifo_data_count(0),
      O => \count[3]_i_2_n_0\
    );
\count[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5553FFFF0000"
    )
        port map (
      I0 => fifo_rd_pulse,
      I1 => fifo_data_count(5),
      I2 => fifo_data_count(4),
      I3 => \rd_ptr[4]_i_3_n_0\,
      I4 => \count[5]_i_6_n_0\,
      I5 => fifo_wr_pulse,
      O => \count[3]_i_3_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8822228888888288"
    )
        port map (
      I0 => \count[5]_i_2_n_0\,
      I1 => fifo_data_count(4),
      I2 => \count[4]_i_2_n_0\,
      I3 => do_write,
      I4 => do_read,
      I5 => \count[5]_i_3_n_0\,
      O => \count[4]_i_1_n_0\
    );
\count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => fifo_data_count(3),
      I1 => fifo_data_count(2),
      I2 => fifo_data_count(0),
      I3 => fifo_data_count(1),
      O => \count[4]_i_2_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888222888888288"
    )
        port map (
      I0 => \count[5]_i_2_n_0\,
      I1 => fifo_data_count(5),
      I2 => fifo_data_count(4),
      I3 => \count[5]_i_3_n_0\,
      I4 => \count[5]_i_4_n_0\,
      I5 => \count[5]_i_5_n_0\,
      O => \count[5]_i_1_n_0\
    );
\count[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => fifo_rst_pulse,
      O => \count[5]_i_2_n_0\
    );
\count[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303030101030101"
    )
        port map (
      I0 => fifo_wr_pulse,
      I1 => \count[5]_i_6_n_0\,
      I2 => \rd_ptr[4]_i_3_n_0\,
      I3 => fifo_data_count(4),
      I4 => fifo_data_count(5),
      I5 => fifo_rd_pulse,
      O => \count[5]_i_3_n_0\
    );
\count[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA9A855555557"
    )
        port map (
      I0 => fifo_rd_pulse,
      I1 => \rd_ptr[4]_i_3_n_0\,
      I2 => fifo_data_count(4),
      I3 => fifo_data_count(5),
      I4 => \count[5]_i_6_n_0\,
      I5 => fifo_wr_pulse,
      O => \count[5]_i_4_n_0\
    );
\count[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000D0"
    )
        port map (
      I0 => fifo_rd_pulse,
      I1 => \axi_rdata[0]_i_3_n_0\,
      I2 => fifo_wr_pulse,
      I3 => \axi_rdata[1]_i_2_n_0\,
      I4 => \count[4]_i_2_n_0\,
      O => \count[5]_i_5_n_0\
    );
\count[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fifo_data_count(1),
      I1 => fifo_data_count(0),
      O => \count[5]_i_6_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => fifo_data_count(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[1]_i_1_n_0\,
      Q => fifo_data_count(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[2]_i_1_n_0\,
      Q => fifo_data_count(2),
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[3]_i_1_n_0\,
      Q => fifo_data_count(3),
      R => '0'
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[4]_i_1_n_0\,
      Q => fifo_data_count(4),
      R => '0'
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[5]_i_1_n_0\,
      Q => fifo_data_count(5),
      R => '0'
    );
mem_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 9) => B"11111",
      ADDRARDADDR(8 downto 4) => wr_ptr_reg(4 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 9) => B"11111",
      ADDRBWRADDR(8 downto 4) => rd_ptr(4 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => s00_axi_aclk,
      DIADI(15 downto 0) => Q(15 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 0) => rd_data(15 downto 0),
      DOPADOP(1 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => fifo_wr_pulse,
      ENBWREN => mem_reg_i_1_n_0,
      REGCEAREGCE => '0',
      REGCEB => fifo_valid,
      RSTRAMARSTRAM => '0',
      RSTRAMB => fifo_srst,
      RSTREGARSTREG => '0',
      RSTREGB => fifo_srst,
      WEA(1) => do_write0,
      WEA(0) => do_write0,
      WEBWE(3 downto 0) => B"0000"
    );
mem_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => do_read,
      I1 => fifo_rst_pulse,
      I2 => s00_axi_aresetn,
      O => mem_reg_i_1_n_0
    );
mem_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => fifo_rst_pulse,
      I1 => s00_axi_aresetn,
      O => fifo_srst
    );
mem_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => fifo_data_count(0),
      I1 => fifo_data_count(1),
      I2 => fifo_data_count(5),
      I3 => fifo_data_count(4),
      I4 => fifo_data_count(2),
      I5 => fifo_data_count(3),
      O => do_write0
    );
\rd_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_ptr(0),
      O => plusOp_0(0)
    );
\rd_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr(0),
      I1 => rd_ptr(1),
      O => plusOp_0(1)
    );
\rd_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => rd_ptr(2),
      I1 => rd_ptr(1),
      I2 => rd_ptr(0),
      O => plusOp_0(2)
    );
\rd_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => rd_ptr(3),
      I1 => rd_ptr(0),
      I2 => rd_ptr(1),
      I3 => rd_ptr(2),
      O => plusOp_0(3)
    );
\rd_ptr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => fifo_rd_pulse,
      I1 => fifo_data_count(5),
      I2 => fifo_data_count(4),
      I3 => \rd_ptr[4]_i_3_n_0\,
      I4 => fifo_data_count(1),
      I5 => fifo_data_count(0),
      O => do_read
    );
\rd_ptr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => rd_ptr(4),
      I1 => rd_ptr(2),
      I2 => rd_ptr(1),
      I3 => rd_ptr(0),
      I4 => rd_ptr(3),
      O => plusOp_0(4)
    );
\rd_ptr[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fifo_data_count(2),
      I1 => fifo_data_count(3),
      O => \rd_ptr[4]_i_3_n_0\
    );
\rd_ptr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => do_read,
      D => plusOp_0(0),
      Q => rd_ptr(0),
      R => fifo_srst
    );
\rd_ptr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => do_read,
      D => plusOp_0(1),
      Q => rd_ptr(1),
      R => fifo_srst
    );
\rd_ptr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => do_read,
      D => plusOp_0(2),
      Q => rd_ptr(2),
      R => fifo_srst
    );
\rd_ptr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => do_read,
      D => plusOp_0(3),
      Q => rd_ptr(3),
      R => fifo_srst
    );
\rd_ptr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => do_read,
      D => plusOp_0(4),
      Q => rd_ptr(4),
      R => fifo_srst
    );
rd_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CE00"
    )
        port map (
      I0 => rd_valid,
      I1 => fifo_valid,
      I2 => fifo_rd_pulse,
      I3 => s00_axi_aresetn,
      I4 => fifo_rst_pulse,
      O => rd_valid_reg
    );
\valid_pipe[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => do_read,
      I1 => s00_axi_aresetn,
      I2 => fifo_rst_pulse,
      O => \valid_pipe[0]_i_1_n_0\
    );
\valid_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \valid_pipe[0]_i_1_n_0\,
      Q => fifo_valid,
      R => '0'
    );
\wr_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_ptr_reg(0),
      O => plusOp(0)
    );
\wr_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr_reg(0),
      I1 => wr_ptr_reg(1),
      O => plusOp(1)
    );
\wr_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => wr_ptr_reg(2),
      I1 => wr_ptr_reg(1),
      I2 => wr_ptr_reg(0),
      O => plusOp(2)
    );
\wr_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => wr_ptr_reg(3),
      I1 => wr_ptr_reg(0),
      I2 => wr_ptr_reg(1),
      I3 => wr_ptr_reg(2),
      O => plusOp(3)
    );
\wr_ptr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fifo_wr_pulse,
      I1 => \axi_rdata[1]_i_2_n_0\,
      O => do_write
    );
\wr_ptr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => wr_ptr_reg(4),
      I1 => wr_ptr_reg(2),
      I2 => wr_ptr_reg(1),
      I3 => wr_ptr_reg(0),
      I4 => wr_ptr_reg(3),
      O => plusOp(4)
    );
\wr_ptr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => do_write,
      D => plusOp(0),
      Q => wr_ptr_reg(0),
      R => fifo_srst
    );
\wr_ptr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => do_write,
      D => plusOp(1),
      Q => wr_ptr_reg(1),
      R => fifo_srst
    );
\wr_ptr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => do_write,
      D => plusOp(2),
      Q => wr_ptr_reg(2),
      R => fifo_srst
    );
\wr_ptr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => do_write,
      D => plusOp(3),
      Q => wr_ptr_reg(3),
      R => fifo_srst
    );
\wr_ptr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => do_write,
      D => plusOp(4),
      Q => wr_ptr_reg(4),
      R => fifo_srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_fifo_axi_v1_0_S00_AXI is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 18 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_fifo_axi_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_fifo_axi_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal fifo_data_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \fifo_data_in[15]_i_1_n_0\ : STD_LOGIC;
  signal fifo_rd_pulse : STD_LOGIC;
  signal fifo_rd_pulse0 : STD_LOGIC;
  signal fifo_rst_pulse : STD_LOGIC;
  signal fifo_rst_pulse0 : STD_LOGIC;
  signal fifo_rst_pulse_i_2_n_0 : STD_LOGIC;
  signal fifo_srst0 : STD_LOGIC;
  signal fifo_wr_pulse : STD_LOGIC;
  signal rd_valid : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sc_fifo_inst_n_16 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal wr_index : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[20]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_rdata[24]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_rdata[30]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_rdata[4]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of fifo_rd_pulse_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of fifo_rst_pulse_i_1 : label is "soft_lutpair10";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF700F700F700"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => fifo_srst0
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(0),
      Q => sel0(0),
      R => fifo_srst0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(1),
      Q => sel0(1),
      R => fifo_srst0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(2),
      Q => sel0(2),
      R => fifo_srst0
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(3),
      Q => sel0(3),
      R => fifo_srst0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => fifo_srst0
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => wr_index(0),
      R => fifo_srst0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => wr_index(1),
      R => fifo_srst0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => wr_index(2),
      R => fifo_srst0
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(3),
      Q => wr_index(3),
      R => fifo_srst0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => fifo_srst0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => fifo_srst0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => fifo_srst0
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => sel0(2),
      O => reg_data_out(20)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => reg_data_out(24)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(3),
      O => reg_data_out(30)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => fifo_srst0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => fifo_srst0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => fifo_srst0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => fifo_srst0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => fifo_srst0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => fifo_srst0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => fifo_srst0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => fifo_srst0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(16),
      R => fifo_srst0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(17),
      R => fifo_srst0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => fifo_srst0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(18),
      R => fifo_srst0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => fifo_srst0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => fifo_srst0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => fifo_srst0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => fifo_srst0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => fifo_srst0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => fifo_srst0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => fifo_srst0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => fifo_srst0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => fifo_srst0
    );
\fifo_data_in[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => fifo_rst_pulse_i_2_n_0,
      I1 => wr_index(1),
      I2 => wr_index(0),
      O => \fifo_data_in[15]_i_1_n_0\
    );
\fifo_data_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \fifo_data_in[15]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => fifo_data_in(0),
      R => fifo_srst0
    );
\fifo_data_in_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \fifo_data_in[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => fifo_data_in(10),
      R => fifo_srst0
    );
\fifo_data_in_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \fifo_data_in[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => fifo_data_in(11),
      R => fifo_srst0
    );
\fifo_data_in_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \fifo_data_in[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => fifo_data_in(12),
      R => fifo_srst0
    );
\fifo_data_in_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \fifo_data_in[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => fifo_data_in(13),
      R => fifo_srst0
    );
\fifo_data_in_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \fifo_data_in[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => fifo_data_in(14),
      R => fifo_srst0
    );
\fifo_data_in_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \fifo_data_in[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => fifo_data_in(15),
      R => fifo_srst0
    );
\fifo_data_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \fifo_data_in[15]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => fifo_data_in(1),
      R => fifo_srst0
    );
\fifo_data_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \fifo_data_in[15]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => fifo_data_in(2),
      R => fifo_srst0
    );
\fifo_data_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \fifo_data_in[15]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => fifo_data_in(3),
      R => fifo_srst0
    );
\fifo_data_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \fifo_data_in[15]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => fifo_data_in(4),
      R => fifo_srst0
    );
\fifo_data_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \fifo_data_in[15]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => fifo_data_in(5),
      R => fifo_srst0
    );
\fifo_data_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \fifo_data_in[15]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => fifo_data_in(6),
      R => fifo_srst0
    );
\fifo_data_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \fifo_data_in[15]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => fifo_data_in(7),
      R => fifo_srst0
    );
\fifo_data_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \fifo_data_in[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => fifo_data_in(8),
      R => fifo_srst0
    );
\fifo_data_in_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \fifo_data_in[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => fifo_data_in(9),
      R => fifo_srst0
    );
fifo_rd_pulse_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => wr_index(1),
      I2 => fifo_rst_pulse_i_2_n_0,
      I3 => wr_index(0),
      O => fifo_rd_pulse0
    );
fifo_rd_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => fifo_rd_pulse0,
      Q => fifo_rd_pulse,
      R => fifo_srst0
    );
fifo_rst_pulse_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => wr_index(0),
      I2 => fifo_rst_pulse_i_2_n_0,
      I3 => wr_index(1),
      O => fifo_rst_pulse0
    );
fifo_rst_pulse_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => wr_index(2),
      I5 => wr_index(3),
      O => fifo_rst_pulse_i_2_n_0
    );
fifo_rst_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => fifo_rst_pulse0,
      Q => fifo_rst_pulse,
      R => fifo_srst0
    );
fifo_wr_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \fifo_data_in[15]_i_1_n_0\,
      Q => fifo_wr_pulse,
      R => fifo_srst0
    );
rd_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sc_fifo_inst_n_16,
      Q => rd_valid,
      R => '0'
    );
sc_fifo_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_fifo
     port map (
      D(15 downto 0) => reg_data_out(15 downto 0),
      Q(15 downto 0) => fifo_data_in(15 downto 0),
      \axi_rdata_reg[0]\(3 downto 0) => sel0(3 downto 0),
      \axi_rdata_reg[1]\ => \axi_rdata[4]_i_2_n_0\,
      fifo_rd_pulse => fifo_rd_pulse,
      fifo_rst_pulse => fifo_rst_pulse,
      fifo_wr_pulse => fifo_wr_pulse,
      rd_valid => rd_valid,
      rd_valid_reg => sc_fifo_inst_n_16,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_fifo_axi_v1_0 is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 18 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_fifo_axi_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_fifo_axi_v1_0 is
begin
sc_fifo_axi_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_fifo_axi_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(3 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(3 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(18 downto 0) => s00_axi_rdata(18 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(15 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mult_bd_sh_sc_fifo_axi_0_0,sc_fifo_axi_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "sc_fifo_axi_v1_0,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN mult_bd_sh_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN mult_bd_sh_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31) <= \<const0>\;
  s00_axi_rdata(30) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(29) <= \<const0>\;
  s00_axi_rdata(28) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(27) <= \<const0>\;
  s00_axi_rdata(26) <= \<const0>\;
  s00_axi_rdata(25) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(24) <= \^s00_axi_rdata\(24);
  s00_axi_rdata(23) <= \<const0>\;
  s00_axi_rdata(22) <= \<const0>\;
  s00_axi_rdata(21) <= \<const0>\;
  s00_axi_rdata(20) <= \^s00_axi_rdata\(19);
  s00_axi_rdata(19) <= \^s00_axi_rdata\(19);
  s00_axi_rdata(18) <= \^s00_axi_rdata\(19);
  s00_axi_rdata(17) <= \^s00_axi_rdata\(19);
  s00_axi_rdata(16) <= \^s00_axi_rdata\(19);
  s00_axi_rdata(15 downto 0) <= \^s00_axi_rdata\(15 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_fifo_axi_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(5 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(5 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(18) => \^s00_axi_rdata\(28),
      s00_axi_rdata(17) => \^s00_axi_rdata\(24),
      s00_axi_rdata(16) => \^s00_axi_rdata\(19),
      s00_axi_rdata(15 downto 0) => \^s00_axi_rdata\(15 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(15 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
