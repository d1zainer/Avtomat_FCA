
-- lib work
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fin_avt is
  port (
    clk : in STD_LOGIC;
    cnt : in STD_LOGIC;
    rst : in STD_LOGIC;
    light : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fin_avt : entity is true;
end fin_avt;

architecture STRUCTURE of fin_avt is
  signal VCC_1 : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal cnt_IBUF : STD_LOGIC;
  signal \n_0_light_OBUF[0]_inst_i_1\ : STD_LOGIC;
  signal \n_0_light_OBUF[1]_inst_i_1\ : STD_LOGIC;
  signal \n_0_light_OBUF[2]_inst_i_1\ : STD_LOGIC;
  signal next_st : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal present_st : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_IBUF : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \present_st_reg[0]\ : label is "FDC";
  attribute XILINX_LEGACY_PRIM of \present_st_reg[1]\ : label is "FDC";
  attribute XILINX_LEGACY_PRIM of \present_st_reg[2]\ : label is "FDC";
begin
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
    port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CAPACITANCE => "DONT_CARE",
      IBUF_DELAY_VALUE => "0",
      IFD_DELAY_VALUE => "AUTO"
    )
    port map (
      I => clk,
      O => clk_IBUF
    );
cnt_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CAPACITANCE => "DONT_CARE",
      IBUF_DELAY_VALUE => "0",
      IFD_DELAY_VALUE => "AUTO"
    )
    port map (
      I => cnt,
      O => cnt_IBUF
    );
\light_OBUF[0]_inst\: unisim.vcomponents.OBUF
    generic map(
      CAPACITANCE => "DONT_CARE"
    )
    port map (
      I => \n_0_light_OBUF[0]_inst_i_1\,
      O => light(0)
    );
\light_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => present_st(1),
      I1 => present_st(0),
      O => \n_0_light_OBUF[0]_inst_i_1\
    );
\light_OBUF[1]_inst\: unisim.vcomponents.OBUF
    generic map(
      CAPACITANCE => "DONT_CARE"
    )
    port map (
      I => \n_0_light_OBUF[1]_inst_i_1\,
      O => light(1)
    );
\light_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => present_st(1),
      I1 => present_st(2),
      I2 => present_st(0),
      O => \n_0_light_OBUF[1]_inst_i_1\
    );
\light_OBUF[2]_inst\: unisim.vcomponents.OBUF
    generic map(
      CAPACITANCE => "DONT_CARE"
    )
    port map (
      I => \n_0_light_OBUF[2]_inst_i_1\,
      O => light(2)
    );
\light_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => present_st(0),
      I1 => present_st(1),
      O => \n_0_light_OBUF[2]_inst_i_1\
    );
\present_st_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG,
      CE => VCC_1,
      CLR => rst_IBUF,
      D => next_st(0),
      Q => present_st(0)
    );
\present_st_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0266"
    )
    port map (
      I0 => cnt_IBUF,
      I1 => present_st(0),
      I2 => present_st(1),
      I3 => present_st(2),
      O => next_st(0)
    );
\present_st_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG,
      CE => VCC_1,
      CLR => rst_IBUF,
      D => next_st(1),
      Q => present_st(1)
    );
\present_st_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
    port map (
      I0 => present_st(1),
      I1 => present_st(0),
      I2 => cnt_IBUF,
      I3 => present_st(2),
      O => next_st(1)
    );
\present_st_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG,
      CE => VCC_1,
      CLR => rst_IBUF,
      D => next_st(2),
      Q => present_st(2)
    );
\present_st_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2004"
    )
    port map (
      I0 => cnt_IBUF,
      I1 => present_st(2),
      I2 => present_st(1),
      I3 => present_st(0),
      O => next_st(2)
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CAPACITANCE => "DONT_CARE",
      IBUF_DELAY_VALUE => "0",
      IFD_DELAY_VALUE => "AUTO"
    )
    port map (
      I => rst,
      O => rst_IBUF
    );
end STRUCTURE;
