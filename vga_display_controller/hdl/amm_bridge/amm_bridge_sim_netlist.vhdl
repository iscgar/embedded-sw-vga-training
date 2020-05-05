-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
-- Date        : Tue May  5 16:18:05 2020
-- Host        : EF65AC789B8C running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top amm_bridge -prefix
--               amm_bridge_ amm_bridge_sim_netlist.vhdl
-- Design      : amm_bridge
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_amm_axi_bridge_v1_0_4_read_top is
  port (
    mm2s_cmd_valid : out STD_LOGIC;
    avs_waitrequest_s0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 42 downto 0 );
    clk : in STD_LOGIC;
    mm2s_cmd_ready : in STD_LOGIC;
    avs_read_s0 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    avs_burstcount_s0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    avs_address_s0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end amm_bridge_amm_axi_bridge_v1_0_4_read_top;

architecture STRUCTURE of amm_bridge_amm_axi_bridge_v1_0_4_read_top is
  signal \burstcount_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal cmd_valid_i_1_n_0 : STD_LOGIC;
  signal \grant_vector[0]_i_1_n_0\ : STD_LOGIC;
  signal \grant_vector_reg_n_0_[0]\ : STD_LOGIC;
  signal master_reg : STD_LOGIC;
  signal \^mm2s_cmd_valid\ : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal state_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of avs_waitrequest_s0_INST_0 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of cmd_valid_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \grant_vector[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of state_i_1 : label is "soft_lutpair33";
begin
  mm2s_cmd_valid <= \^mm2s_cmd_valid\;
\USE_SINGLE_REG.sig_regfifo_dout_reg[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^mm2s_cmd_valid\,
      I1 => mm2s_cmd_ready,
      O => E(0)
    );
\address_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(0),
      Q => D(11)
    );
\address_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(10),
      Q => D(21)
    );
\address_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(11),
      Q => D(22)
    );
\address_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(12),
      Q => D(23)
    );
\address_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(13),
      Q => D(24)
    );
\address_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(14),
      Q => D(25)
    );
\address_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(15),
      Q => D(26)
    );
\address_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(16),
      Q => D(27)
    );
\address_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(17),
      Q => D(28)
    );
\address_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(18),
      Q => D(29)
    );
\address_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(19),
      Q => D(30)
    );
\address_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(1),
      Q => D(12)
    );
\address_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(20),
      Q => D(31)
    );
\address_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(21),
      Q => D(32)
    );
\address_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(22),
      Q => D(33)
    );
\address_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(23),
      Q => D(34)
    );
\address_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(24),
      Q => D(35)
    );
\address_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(25),
      Q => D(36)
    );
\address_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(26),
      Q => D(37)
    );
\address_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(27),
      Q => D(38)
    );
\address_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(28),
      Q => D(39)
    );
\address_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(29),
      Q => D(40)
    );
\address_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(2),
      Q => D(13)
    );
\address_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(30),
      Q => D(41)
    );
\address_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(31),
      Q => D(42)
    );
\address_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(3),
      Q => D(14)
    );
\address_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(4),
      Q => D(15)
    );
\address_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(5),
      Q => D(16)
    );
\address_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(6),
      Q => D(17)
    );
\address_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(7),
      Q => D(18)
    );
\address_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(8),
      Q => D(19)
    );
\address_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_address_s0(9),
      Q => D(20)
    );
avs_waitrequest_s0_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \grant_vector_reg_n_0_[0]\,
      I1 => avs_read_s0,
      I2 => mm2s_cmd_ready,
      O => avs_waitrequest_s0
    );
\burstcount_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => mm2s_cmd_ready,
      I2 => avs_read_s0,
      I3 => \grant_vector_reg_n_0_[0]\,
      O => master_reg
    );
\burstcount_reg[10]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \burstcount_reg[10]_i_2_n_0\
    );
\burstcount_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_burstcount_s0(0),
      Q => D(0)
    );
\burstcount_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_burstcount_s0(10),
      Q => D(10)
    );
\burstcount_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_burstcount_s0(1),
      Q => D(1)
    );
\burstcount_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_burstcount_s0(2),
      Q => D(2)
    );
\burstcount_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_burstcount_s0(3),
      Q => D(3)
    );
\burstcount_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_burstcount_s0(4),
      Q => D(4)
    );
\burstcount_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_burstcount_s0(5),
      Q => D(5)
    );
\burstcount_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_burstcount_s0(6),
      Q => D(6)
    );
\burstcount_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_burstcount_s0(7),
      Q => D(7)
    );
\burstcount_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_burstcount_s0(8),
      Q => D(8)
    );
\burstcount_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => master_reg,
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => avs_burstcount_s0(9),
      Q => D(9)
    );
cmd_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => avs_read_s0,
      I1 => \grant_vector_reg_n_0_[0]\,
      I2 => state_reg_n_0,
      I3 => mm2s_cmd_ready,
      I4 => \^mm2s_cmd_valid\,
      O => cmd_valid_i_1_n_0
    );
cmd_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => cmd_valid_i_1_n_0,
      Q => \^mm2s_cmd_valid\
    );
\grant_vector[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => avs_read_s0,
      I1 => mm2s_cmd_ready,
      I2 => state_reg_n_0,
      I3 => \grant_vector_reg_n_0_[0]\,
      O => \grant_vector[0]_i_1_n_0\
    );
\grant_vector_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => \grant_vector[0]_i_1_n_0\,
      Q => \grant_vector_reg_n_0_[0]\
    );
state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5CC"
    )
        port map (
      I0 => mm2s_cmd_ready,
      I1 => avs_read_s0,
      I2 => \grant_vector_reg_n_0_[0]\,
      I3 => state_reg_n_0,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \burstcount_reg[10]_i_2_n_0\,
      D => state_i_1_n_0,
      Q => state_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_axi_datamover_fifo is
  port (
    sig_init_done : out STD_LOGIC;
    sig_cmd2mstr_cmd_valid : out STD_LOGIC;
    mm2s_cmd_ready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 43 downto 0 );
    sig_init_done_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    mm2s_cmd_valid : in STD_LOGIC;
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 42 downto 0 )
  );
end amm_bridge_axi_datamover_fifo;

architecture STRUCTURE of amm_bridge_axi_datamover_fifo is
  signal \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1_n_0\ : STD_LOGIC;
  signal \^mm2s_cmd_ready\ : STD_LOGIC;
  signal \^sig_init_done\ : STD_LOGIC;
begin
  mm2s_cmd_ready <= \^mm2s_cmd_ready\;
  sig_init_done <= \^sig_init_done\;
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => Q(6),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(7),
      Q => Q(7),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => Q(8),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(9),
      Q => Q(9),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(10),
      Q => Q(10),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => '1',
      Q => Q(11),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(11),
      Q => Q(12),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(12),
      Q => Q(13),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(13),
      Q => Q(14),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(14),
      Q => Q(15),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(15),
      Q => Q(16),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(16),
      Q => Q(17),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(17),
      Q => Q(18),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(18),
      Q => Q(19),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(19),
      Q => Q(20),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(20),
      Q => Q(21),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(21),
      Q => Q(22),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(22),
      Q => Q(23),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(23),
      Q => Q(24),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(24),
      Q => Q(25),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(25),
      Q => Q(26),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(26),
      Q => Q(27),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(27),
      Q => Q(28),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(28),
      Q => Q(29),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(29),
      Q => Q(30),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(30),
      Q => Q(31),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(31),
      Q => Q(32),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(32),
      Q => Q(33),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(33),
      Q => Q(34),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(34),
      Q => Q(35),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(35),
      Q => Q(36),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(36),
      Q => Q(37),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(37),
      Q => Q(38),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(38),
      Q => Q(39),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(39),
      Q => Q(40),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(40),
      Q => Q(41),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(41),
      Q => Q(42),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(42),
      Q => Q(43),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => Q(5),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAFF"
    )
        port map (
      I0 => \^sig_init_done\,
      I1 => mm2s_cmd_valid,
      I2 => \^mm2s_cmd_ready\,
      I3 => \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0\,
      O => \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1_n_0\
    );
\USE_SINGLE_REG.sig_regfifo_empty_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1_n_0\,
      Q => \^mm2s_cmd_ready\,
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_full_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0\,
      Q => sig_cmd2mstr_cmd_valid,
      R => '0'
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_init_done_reg_0,
      Q => \^sig_init_done\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \amm_bridge_axi_datamover_fifo__parameterized0\ is
  port (
    sig_init_done_0 : out STD_LOGIC;
    read_error_valid : out STD_LOGIC;
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0\ : out STD_LOGIC;
    read_error : out STD_LOGIC;
    sig_rd_sts_tag_reg0 : out STD_LOGIC;
    sig_init_done_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rsc2stat_status_valid : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    sig_rsc2stat_status : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \amm_bridge_axi_datamover_fifo__parameterized0\ : entity is "axi_datamover_fifo";
end \amm_bridge_axi_datamover_fifo__parameterized0\;

architecture STRUCTURE of \amm_bridge_axi_datamover_fifo__parameterized0\ is
  signal \USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \^use_single_reg.sig_regfifo_empty_reg_reg_0\ : STD_LOGIC;
  signal \USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0_n_0\ : STD_LOGIC;
  signal mm2s_status : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal \^read_error_valid\ : STD_LOGIC;
  signal \^sig_init_done_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sig_rd_sts_interr_reg_i_1 : label is "soft_lutpair2";
begin
  \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0\ <= \^use_single_reg.sig_regfifo_empty_reg_reg_0\;
  read_error_valid <= \^read_error_valid\;
  sig_init_done_0 <= \^sig_init_done_0\;
\USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => sig_rsc2stat_status(0),
      I1 => sig_rsc2stat_status_valid,
      I2 => \^use_single_reg.sig_regfifo_empty_reg_reg_0\,
      I3 => mm2s_status(4),
      O => \USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1_n_0\
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => sig_rsc2stat_status(1),
      I1 => sig_rsc2stat_status_valid,
      I2 => \^use_single_reg.sig_regfifo_empty_reg_reg_0\,
      I3 => mm2s_status(5),
      O => \USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1_n_0\
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => sig_rsc2stat_status(2),
      I1 => sig_rsc2stat_status_valid,
      I2 => \^use_single_reg.sig_regfifo_empty_reg_reg_0\,
      I3 => mm2s_status(6),
      O => \USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1_n_0\
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1_n_0\,
      Q => mm2s_status(4),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1_n_0\,
      Q => mm2s_status(5),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1_n_0\,
      Q => mm2s_status(6),
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8FFF8"
    )
        port map (
      I0 => \^read_error_valid\,
      I1 => aresetn,
      I2 => \^sig_init_done_0\,
      I3 => \^use_single_reg.sig_regfifo_empty_reg_reg_0\,
      I4 => sig_rsc2stat_status_valid,
      O => \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0_n_0\
    );
\USE_SINGLE_REG.sig_regfifo_empty_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0_n_0\,
      Q => \^use_single_reg.sig_regfifo_empty_reg_reg_0\,
      R => SR(0)
    );
\USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA8080"
    )
        port map (
      I0 => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      I1 => \^use_single_reg.sig_regfifo_empty_reg_reg_0\,
      I2 => sig_rsc2stat_status_valid,
      I3 => aresetn,
      I4 => \^read_error_valid\,
      O => \USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0_n_0\
    );
\USE_SINGLE_REG.sig_regfifo_full_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0_n_0\,
      Q => \^read_error_valid\,
      R => '0'
    );
read_error_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => mm2s_status(6),
      I1 => mm2s_status(5),
      I2 => mm2s_status(4),
      O => read_error
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_init_done_reg_0,
      Q => \^sig_init_done_0\,
      R => '0'
    );
sig_rd_sts_interr_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^use_single_reg.sig_regfifo_empty_reg_reg_0\,
      I1 => sig_rsc2stat_status_valid,
      I2 => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      O => sig_rd_sts_tag_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_axi_datamover_pcc is
  port (
    sig_init_reg : out STD_LOGIC;
    \in\ : out STD_LOGIC_VECTOR ( 41 downto 0 );
    sig_mstr2data_cmd_valid : out STD_LOGIC;
    sig_mstr2addr_cmd_valid : out STD_LOGIC;
    sig_calc_error_reg_reg_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0\ : out STD_LOGIC;
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    sig_wr_fifo : in STD_LOGIC;
    sig_wr_fifo_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 43 downto 0 );
    sig_cmd2mstr_cmd_valid : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_inhibit_rdy_n : in STD_LOGIC;
    sig_cmd2data_valid_reg_0 : in STD_LOGIC;
    sig_inhibit_rdy_n_1 : in STD_LOGIC;
    sig_cmd2addr_valid_reg_0 : in STD_LOGIC
  );
end amm_bridge_axi_datamover_pcc;

architecture STRUCTURE of amm_bridge_axi_datamover_pcc is
  signal \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][17]_srl4_i_1_n_2\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][17]_srl4_i_1_n_3\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][17]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][17]_srl4_i_3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][17]_srl4_i_4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_2\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_3\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][21]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][21]_srl4_i_3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][21]_srl4_i_4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][21]_srl4_i_5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_2\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_3\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][22]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][22]_srl4_i_3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][22]_srl4_i_4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[3][22]_srl4_i_5_n_0\ : STD_LOGIC;
  signal \^in\ : STD_LOGIC_VECTOR ( 41 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in_0 : STD_LOGIC;
  signal sig_addr_aligned_im0 : STD_LOGIC;
  signal sig_addr_aligned_ireg1 : STD_LOGIC;
  signal sig_addr_aligned_ireg1_i_2_n_0 : STD_LOGIC;
  signal sig_addr_aligned_ireg1_i_3_n_0 : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[0]_i_3_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[0]_i_4_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[0]_i_5_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[0]_i_6_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[0]_i_7_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[12]_i_2_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[12]_i_3_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[12]_i_4_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[12]_i_5_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[4]_i_2_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[4]_i_3_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[4]_i_4_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[4]_i_5_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[8]_i_2_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[8]_i_3_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[8]_i_4_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[8]_i_5_n_0\ : STD_LOGIC;
  signal sig_addr_cntr_im0_msh_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sig_addr_cntr_im0_msh_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[10]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[11]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[12]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[2]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[5]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[6]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[9]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2_reg_n_0_[12]\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2_reg_n_0_[8]\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2_reg_n_0_[9]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0[15]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[0]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[10]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[11]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[12]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[13]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[14]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[1]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[2]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[3]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[4]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[5]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[6]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[7]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[8]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[9]\ : STD_LOGIC;
  signal sig_addr_cntr_lsh_kh : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sig_adjusted_addr_incr_im1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \sig_adjusted_addr_incr_ireg2[11]_i_2_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[11]_i_3_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[11]_i_4_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[11]_i_5_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[3]_i_2_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[3]_i_3_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[3]_i_4_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[3]_i_5_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_2_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_3_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_4_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_5_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[8]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[9]\ : STD_LOGIC;
  signal sig_brst_cnt_eq_one_im0 : STD_LOGIC;
  signal sig_brst_cnt_eq_one_ireg1 : STD_LOGIC;
  signal sig_brst_cnt_eq_zero_im0 : STD_LOGIC;
  signal sig_brst_cnt_eq_zero_ireg1 : STD_LOGIC;
  signal \sig_btt_cntr_im0[11]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[11]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[11]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[11]_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[11]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[11]_i_7_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[11]_i_8_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[11]_i_9_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_7_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_8_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[19]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[19]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[19]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[19]_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[19]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[19]_i_7_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[19]_i_8_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[19]_i_9_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[22]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[22]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[22]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[22]_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[22]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[3]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[3]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[3]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[3]_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[3]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[3]_i_7_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[3]_i_8_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[3]_i_9_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_7_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_8_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_9_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[22]_i_1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[22]_i_1_n_5\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[22]_i_1_n_6\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[22]_i_1_n_7\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[0]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[10]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[11]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[12]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[13]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[14]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[15]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[16]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[17]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[18]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[19]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[1]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[20]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[21]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[22]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[2]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[3]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[4]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[5]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[6]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[7]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[8]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[9]\ : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01 : STD_LOGIC;
  signal \sig_btt_eq_b2mbaa_im01_carry__0_i_1_n_0\ : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01_carry_i_1_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01_carry_i_2_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01_carry_i_3_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01_carry_i_4_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01_carry_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01_carry_n_1 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01_carry_n_2 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01_carry_n_3 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_ireg1 : STD_LOGIC;
  signal \sig_btt_is_zero__0\ : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01 : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa_im01_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa_im01_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa_im01_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa_im01_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa_im01_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa_im01_carry__0_n_2\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa_im01_carry__0_n_3\ : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_1_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_2_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_3_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_4_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_5_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_6_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_7_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_8_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_n_1 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_n_2 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_n_3 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_ireg1 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_ireg1_i_2_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_ireg1_i_3_n_0 : STD_LOGIC;
  signal sig_bytes_to_mbaa_im0 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal sig_bytes_to_mbaa_ireg1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \sig_bytes_to_mbaa_ireg1[12]_i_2_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[12]_i_3_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[12]_i_4_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[4]_i_2_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[4]_i_3_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[4]_i_4_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[4]_i_5_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[4]_i_6_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[8]_i_2_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[8]_i_3_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[8]_i_4_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[8]_i_5_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal sig_calc_error_pushed : STD_LOGIC;
  signal sig_calc_error_pushed_i_1_n_0 : STD_LOGIC;
  signal sig_calc_error_reg_i_1_n_0 : STD_LOGIC;
  signal sig_calc_error_reg_i_3_n_0 : STD_LOGIC;
  signal \^sig_calc_error_reg_reg_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sig_cmd2addr_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2data_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2dre_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2dre_valid_reg_n_0 : STD_LOGIC;
  signal sig_first_xfer_im0 : STD_LOGIC;
  signal sig_first_xfer_im0_i_1_n_0 : STD_LOGIC;
  signal \^sig_init_reg\ : STD_LOGIC;
  signal sig_input_burst_type_reg_i_1_n_0 : STD_LOGIC;
  signal sig_input_reg_empty : STD_LOGIC;
  signal sig_input_reg_empty_i_1_n_0 : STD_LOGIC;
  signal sig_ld_xfer_reg : STD_LOGIC;
  signal sig_ld_xfer_reg_i_1_n_0 : STD_LOGIC;
  signal sig_ld_xfer_reg_tmp : STD_LOGIC;
  signal sig_ld_xfer_reg_tmp_i_1_n_0 : STD_LOGIC;
  signal \^sig_mstr2addr_cmd_valid\ : STD_LOGIC;
  signal \^sig_mstr2data_cmd_valid\ : STD_LOGIC;
  signal sig_no_btt_residue_im0 : STD_LOGIC;
  signal sig_no_btt_residue_ireg1 : STD_LOGIC;
  signal sig_no_btt_residue_ireg1_i_2_n_0 : STD_LOGIC;
  signal sig_no_btt_residue_ireg1_i_3_n_0 : STD_LOGIC;
  signal sig_parent_done : STD_LOGIC;
  signal sig_parent_done_i_1_n_0 : STD_LOGIC;
  signal sig_pop_xfer_reg0_out : STD_LOGIC;
  signal sig_predict_addr_lsh_im2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_predict_addr_lsh_ireg3 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \sig_predict_addr_lsh_ireg3[11]_i_2_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[11]_i_3_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[11]_i_4_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[11]_i_5_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[15]_i_2_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[3]_i_2_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[3]_i_3_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[3]_i_4_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[3]_i_5_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[7]_i_2_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[7]_i_3_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[7]_i_4_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[7]_i_5_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg_n_0_[10]\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg_n_0_[11]\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg_n_0_[12]\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg_n_0_[13]\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg_n_0_[14]\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg_n_0_[7]\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg_n_0_[8]\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg_n_0_[9]\ : STD_LOGIC;
  signal sig_push_input_reg11_out : STD_LOGIC;
  signal sig_sm_halt_ns : STD_LOGIC;
  signal sig_sm_halt_reg : STD_LOGIC;
  signal sig_sm_ld_calc1_reg : STD_LOGIC;
  signal sig_sm_ld_calc1_reg_ns : STD_LOGIC;
  signal sig_sm_ld_calc2_reg : STD_LOGIC;
  signal sig_sm_ld_xfer_reg_ns : STD_LOGIC;
  signal sig_sm_pop_input_reg : STD_LOGIC;
  signal sig_sm_pop_input_reg_ns : STD_LOGIC;
  signal sig_xfer_reg_empty : STD_LOGIC;
  signal sig_xfer_reg_empty_i_1_n_0 : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[3][17]_srl4_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_INFERRED_GEN.data_reg[3][17]_srl4_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_INFERRED_GEN.data_reg[3][22]_srl4_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sig_addr_cntr_im0_msh_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_adjusted_addr_incr_ireg2_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_btt_cntr_im0_reg[22]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sig_btt_cntr_im0_reg[22]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_sig_btt_eq_b2mbaa_im01_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sig_btt_eq_b2mbaa_im01_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sig_btt_eq_b2mbaa_im01_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sig_btt_lt_b2mbaa_im01_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_btt_lt_b2mbaa_im01_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sig_bytes_to_mbaa_ireg1_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_sig_bytes_to_mbaa_ireg1_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[0]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[1]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[4]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[5]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[6]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[7]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][23]_srl4_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][24]_srl4_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][25]_srl4_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][26]_srl4_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][27]_srl4_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][28]_srl4_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][29]_srl4_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][30]_srl4_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][31]_srl4_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][32]_srl4_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][33]_srl4_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][34]_srl4_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][35]_srl4_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][36]_srl4_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][37]_srl4_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][38]_srl4_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][39]_srl4_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][3]_srl4_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][40]_srl4_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][41]_srl4_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][42]_srl4_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][43]_srl4_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][44]_srl4_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][45]_srl4_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][46]_srl4_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][47]_srl4_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][48]_srl4_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][49]_srl4_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][50]_srl4_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][51]_srl4_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][52]_srl4_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][53]_srl4_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][54]_srl4_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sig_addr_cntr_incr_ireg2[12]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sig_addr_cntr_incr_ireg2[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of sig_brst_cnt_eq_one_ireg1_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of sig_brst_cnt_eq_zero_ireg1_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of sig_btt_eq_b2mbaa_ireg1_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of sig_btt_lt_b2mbaa_ireg1_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of sig_calc_error_pushed_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sig_ld_xfer_reg_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of sig_sm_ld_calc1_reg_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sig_sm_pop_input_reg_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sig_xfer_reg_empty_i_1 : label is "soft_lutpair6";
begin
  \in\(41 downto 0) <= \^in\(41 downto 0);
  sig_calc_error_reg_reg_0(1 downto 0) <= \^sig_calc_error_reg_reg_0\(1 downto 0);
  sig_init_reg <= \^sig_init_reg\;
  sig_mstr2addr_cmd_valid <= \^sig_mstr2addr_cmd_valid\;
  sig_mstr2data_cmd_valid <= \^sig_mstr2data_cmd_valid\;
\FSM_onehot_sig_pcc_sm_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAFFFFBAAABAAA"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0]\,
      I1 => sig_calc_error_pushed,
      I2 => sig_parent_done,
      I3 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      I4 => sig_push_input_reg11_out,
      I5 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1]\,
      O => \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sig_pop_xfer_reg0_out,
      I1 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\,
      I2 => sig_sm_ld_xfer_reg_ns,
      O => \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0CCC0C0E0EFE0E"
    )
        port map (
      I0 => sig_cmd2dre_valid_reg_n_0,
      I1 => sig_wr_fifo_0,
      I2 => \^sig_mstr2data_cmd_valid\,
      I3 => sig_inhibit_rdy_n,
      I4 => sig_cmd2data_valid_reg_0,
      I5 => \^sig_mstr2addr_cmd_valid\,
      O => sig_pop_xfer_reg0_out
    );
\FSM_onehot_sig_pcc_sm_state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AA2022A0AA2020"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\,
      I1 => \^sig_mstr2addr_cmd_valid\,
      I2 => sig_wr_fifo,
      I3 => \^sig_mstr2data_cmd_valid\,
      I4 => sig_wr_fifo_0,
      I5 => sig_cmd2dre_valid_reg_n_0,
      O => \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => sig_calc_error_pushed,
      I1 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[7]\,
      O => \FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0]\,
      S => \^sig_init_reg\
    );
\FSM_onehot_sig_pcc_sm_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0\,
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1]\,
      R => \^sig_init_reg\
    );
\FSM_onehot_sig_pcc_sm_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_sm_ld_calc2_reg,
      Q => sig_sm_ld_xfer_reg_ns,
      R => \^sig_init_reg\
    );
\FSM_onehot_sig_pcc_sm_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0\,
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\,
      R => \^sig_init_reg\
    );
\FSM_onehot_sig_pcc_sm_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0\,
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      R => \^sig_init_reg\
    );
\FSM_onehot_sig_pcc_sm_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0\,
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[7]\,
      R => \^sig_init_reg\
    );
\INFERRED_GEN.data_reg[3][17]_srl4_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_0\,
      CO(3 downto 2) => \NLW_INFERRED_GEN.data_reg[3][17]_srl4_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \INFERRED_GEN.data_reg[3][17]_srl4_i_1_n_2\,
      CO(0) => \INFERRED_GEN.data_reg[3][17]_srl4_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[10]\,
      DI(0) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[9]\,
      O(3) => \NLW_INFERRED_GEN.data_reg[3][17]_srl4_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => \^in\(39 downto 37),
      S(3) => '0',
      S(2) => \INFERRED_GEN.data_reg[3][17]_srl4_i_2_n_0\,
      S(1) => \INFERRED_GEN.data_reg[3][17]_srl4_i_3_n_0\,
      S(0) => \INFERRED_GEN.data_reg[3][17]_srl4_i_4_n_0\
    );
\INFERRED_GEN.data_reg[3][17]_srl4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[11]\,
      O => \INFERRED_GEN.data_reg[3][17]_srl4_i_2_n_0\
    );
\INFERRED_GEN.data_reg[3][17]_srl4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[10]\,
      O => \INFERRED_GEN.data_reg[3][17]_srl4_i_3_n_0\
    );
\INFERRED_GEN.data_reg[3][17]_srl4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[9]\,
      O => \INFERRED_GEN.data_reg[3][17]_srl4_i_4_n_0\
    );
\INFERRED_GEN.data_reg[3][21]_srl4_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_0\,
      CO(3) => \INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_0\,
      CO(2) => \INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_1\,
      CO(1) => \INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_2\,
      CO(0) => \INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[8]\,
      DI(2) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[7]\,
      DI(1) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[6]\,
      DI(0) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[5]\,
      O(3 downto 0) => \^in\(36 downto 33),
      S(3) => \INFERRED_GEN.data_reg[3][21]_srl4_i_2_n_0\,
      S(2) => \INFERRED_GEN.data_reg[3][21]_srl4_i_3_n_0\,
      S(1) => \INFERRED_GEN.data_reg[3][21]_srl4_i_4_n_0\,
      S(0) => \INFERRED_GEN.data_reg[3][21]_srl4_i_5_n_0\
    );
\INFERRED_GEN.data_reg[3][21]_srl4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[8]\,
      O => \INFERRED_GEN.data_reg[3][21]_srl4_i_2_n_0\
    );
\INFERRED_GEN.data_reg[3][21]_srl4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[7]\,
      O => \INFERRED_GEN.data_reg[3][21]_srl4_i_3_n_0\
    );
\INFERRED_GEN.data_reg[3][21]_srl4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[6]\,
      O => \INFERRED_GEN.data_reg[3][21]_srl4_i_4_n_0\
    );
\INFERRED_GEN.data_reg[3][21]_srl4_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[5]\,
      O => \INFERRED_GEN.data_reg[3][21]_srl4_i_5_n_0\
    );
\INFERRED_GEN.data_reg[3][22]_srl4_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_0\,
      CO(2) => \INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_1\,
      CO(1) => \INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_2\,
      CO(0) => \INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_3\,
      CYINIT => \sig_adjusted_addr_incr_ireg2_reg_n_0_[0]\,
      DI(3) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[4]\,
      DI(2) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[3]\,
      DI(1) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[2]\,
      DI(0) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[1]\,
      O(3) => \^in\(32),
      O(2 downto 0) => \NLW_INFERRED_GEN.data_reg[3][22]_srl4_i_1_O_UNCONNECTED\(2 downto 0),
      S(3) => \INFERRED_GEN.data_reg[3][22]_srl4_i_2_n_0\,
      S(2) => \INFERRED_GEN.data_reg[3][22]_srl4_i_3_n_0\,
      S(1) => \INFERRED_GEN.data_reg[3][22]_srl4_i_4_n_0\,
      S(0) => \INFERRED_GEN.data_reg[3][22]_srl4_i_5_n_0\
    );
\INFERRED_GEN.data_reg[3][22]_srl4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[4]\,
      O => \INFERRED_GEN.data_reg[3][22]_srl4_i_2_n_0\
    );
\INFERRED_GEN.data_reg[3][22]_srl4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[3]\,
      O => \INFERRED_GEN.data_reg[3][22]_srl4_i_3_n_0\
    );
\INFERRED_GEN.data_reg[3][22]_srl4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[2]\,
      O => \INFERRED_GEN.data_reg[3][22]_srl4_i_4_n_0\
    );
\INFERRED_GEN.data_reg[3][22]_srl4_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[1]\,
      O => \INFERRED_GEN.data_reg[3][22]_srl4_i_5_n_0\
    );
\INFERRED_GEN.data_reg[3][23]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(15),
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(31),
      O => \^in\(31)
    );
\INFERRED_GEN.data_reg[3][24]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(14),
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(30),
      O => \^in\(30)
    );
\INFERRED_GEN.data_reg[3][25]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(13),
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(29),
      O => \^in\(29)
    );
\INFERRED_GEN.data_reg[3][26]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(12),
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(28),
      O => \^in\(28)
    );
\INFERRED_GEN.data_reg[3][27]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(11),
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(27),
      O => \^in\(27)
    );
\INFERRED_GEN.data_reg[3][28]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(10),
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(26),
      O => \^in\(26)
    );
\INFERRED_GEN.data_reg[3][29]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(9),
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(25),
      O => \^in\(25)
    );
\INFERRED_GEN.data_reg[3][30]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(8),
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(24),
      O => \^in\(24)
    );
\INFERRED_GEN.data_reg[3][31]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(7),
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(23),
      O => \^in\(23)
    );
\INFERRED_GEN.data_reg[3][32]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(6),
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(22),
      O => \^in\(22)
    );
\INFERRED_GEN.data_reg[3][33]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(5),
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(21),
      O => \^in\(21)
    );
\INFERRED_GEN.data_reg[3][34]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(4),
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(20),
      O => \^in\(20)
    );
\INFERRED_GEN.data_reg[3][35]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(3),
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(19),
      O => \^in\(19)
    );
\INFERRED_GEN.data_reg[3][36]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(2),
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(18),
      O => \^in\(18)
    );
\INFERRED_GEN.data_reg[3][37]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(1),
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(17),
      O => \^in\(17)
    );
\INFERRED_GEN.data_reg[3][38]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(0),
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(16),
      O => \^in\(16)
    );
\INFERRED_GEN.data_reg[3][39]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(15),
      O => \^in\(15)
    );
\INFERRED_GEN.data_reg[3][3]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^in\(41),
      I1 => \^sig_calc_error_reg_reg_0\(0),
      O => \^sig_calc_error_reg_reg_0\(1)
    );
\INFERRED_GEN.data_reg[3][40]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[14]\,
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(14),
      O => \^in\(14)
    );
\INFERRED_GEN.data_reg[3][41]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[13]\,
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(13),
      O => \^in\(13)
    );
\INFERRED_GEN.data_reg[3][42]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[12]\,
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(12),
      O => \^in\(12)
    );
\INFERRED_GEN.data_reg[3][43]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[11]\,
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(11),
      O => \^in\(11)
    );
\INFERRED_GEN.data_reg[3][44]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[10]\,
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(10),
      O => \^in\(10)
    );
\INFERRED_GEN.data_reg[3][45]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(9),
      O => \^in\(9)
    );
\INFERRED_GEN.data_reg[3][46]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(8),
      O => \^in\(8)
    );
\INFERRED_GEN.data_reg[3][47]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(7),
      O => \^in\(7)
    );
\INFERRED_GEN.data_reg[3][48]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(6),
      O => \^in\(6)
    );
\INFERRED_GEN.data_reg[3][49]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(5),
      O => \^in\(5)
    );
\INFERRED_GEN.data_reg[3][4]_srl4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7070707F7F7F7F7F"
    )
        port map (
      I0 => sig_addr_aligned_ireg1,
      I1 => sig_brst_cnt_eq_one_ireg1,
      I2 => sig_no_btt_residue_ireg1,
      I3 => sig_btt_eq_b2mbaa_ireg1,
      I4 => sig_btt_lt_b2mbaa_ireg1,
      I5 => sig_brst_cnt_eq_zero_ireg1,
      O => \^sig_calc_error_reg_reg_0\(0)
    );
\INFERRED_GEN.data_reg[3][50]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(4),
      O => \^in\(4)
    );
\INFERRED_GEN.data_reg[3][51]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(3),
      O => \^in\(3)
    );
\INFERRED_GEN.data_reg[3][52]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(2),
      O => \^in\(2)
    );
\INFERRED_GEN.data_reg[3][53]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(1),
      O => \^in\(1)
    );
\INFERRED_GEN.data_reg[3][54]_srl4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I1 => \^in\(40),
      I2 => sig_addr_cntr_lsh_kh(0),
      O => \^in\(0)
    );
\USE_SINGLE_REG.sig_regfifo_empty_reg_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => sig_cmd2mstr_cmd_valid,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_calc_error_pushed,
      O => \USE_SINGLE_REG.sig_regfifo_full_reg_reg\
    );
\USE_SINGLE_REG.sig_regfifo_full_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA0AA88888888"
    )
        port map (
      I0 => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      I1 => E(0),
      I2 => sig_calc_error_pushed,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => sig_cmd2mstr_cmd_valid,
      O => \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0\
    );
sig_addr_aligned_ireg1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => sig_addr_aligned_ireg1_i_2_n_0,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[11]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[10]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      I5 => sig_addr_aligned_ireg1_i_3_n_0,
      O => sig_addr_aligned_im0
    );
sig_addr_aligned_ireg1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      O => sig_addr_aligned_ireg1_i_2_n_0
    );
sig_addr_aligned_ireg1_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      O => sig_addr_aligned_ireg1_i_3_n_0
    );
sig_addr_aligned_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_addr_aligned_im0,
      Q => sig_addr_aligned_ireg1,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_im0_msh[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => sig_pop_xfer_reg0_out,
      I1 => p_1_in_0,
      I2 => sig_predict_addr_lsh_ireg3(15),
      I3 => sig_push_input_reg11_out,
      O => \sig_addr_cntr_im0_msh[0]_i_1_n_0\
    );
\sig_addr_cntr_im0_msh[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(28),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_addr_cntr_im0_msh_reg(0),
      O => \sig_addr_cntr_im0_msh[0]_i_3_n_0\
    );
\sig_addr_cntr_im0_msh[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(31),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_addr_cntr_im0_msh_reg(3),
      O => \sig_addr_cntr_im0_msh[0]_i_4_n_0\
    );
\sig_addr_cntr_im0_msh[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(30),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_addr_cntr_im0_msh_reg(2),
      O => \sig_addr_cntr_im0_msh[0]_i_5_n_0\
    );
\sig_addr_cntr_im0_msh[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(29),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_addr_cntr_im0_msh_reg(1),
      O => \sig_addr_cntr_im0_msh[0]_i_6_n_0\
    );
\sig_addr_cntr_im0_msh[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555C5555555555"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(0),
      I1 => Q(28),
      I2 => \^in\(41),
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => sig_cmd2mstr_cmd_valid,
      O => \sig_addr_cntr_im0_msh[0]_i_7_n_0\
    );
\sig_addr_cntr_im0_msh[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(43),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_addr_cntr_im0_msh_reg(15),
      O => \sig_addr_cntr_im0_msh[12]_i_2_n_0\
    );
\sig_addr_cntr_im0_msh[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(42),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_addr_cntr_im0_msh_reg(14),
      O => \sig_addr_cntr_im0_msh[12]_i_3_n_0\
    );
\sig_addr_cntr_im0_msh[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(41),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_addr_cntr_im0_msh_reg(13),
      O => \sig_addr_cntr_im0_msh[12]_i_4_n_0\
    );
\sig_addr_cntr_im0_msh[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(40),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_addr_cntr_im0_msh_reg(12),
      O => \sig_addr_cntr_im0_msh[12]_i_5_n_0\
    );
\sig_addr_cntr_im0_msh[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(35),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_addr_cntr_im0_msh_reg(7),
      O => \sig_addr_cntr_im0_msh[4]_i_2_n_0\
    );
\sig_addr_cntr_im0_msh[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(34),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_addr_cntr_im0_msh_reg(6),
      O => \sig_addr_cntr_im0_msh[4]_i_3_n_0\
    );
\sig_addr_cntr_im0_msh[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(33),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_addr_cntr_im0_msh_reg(5),
      O => \sig_addr_cntr_im0_msh[4]_i_4_n_0\
    );
\sig_addr_cntr_im0_msh[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(32),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_addr_cntr_im0_msh_reg(4),
      O => \sig_addr_cntr_im0_msh[4]_i_5_n_0\
    );
\sig_addr_cntr_im0_msh[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(39),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_addr_cntr_im0_msh_reg(11),
      O => \sig_addr_cntr_im0_msh[8]_i_2_n_0\
    );
\sig_addr_cntr_im0_msh[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(38),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_addr_cntr_im0_msh_reg(10),
      O => \sig_addr_cntr_im0_msh[8]_i_3_n_0\
    );
\sig_addr_cntr_im0_msh[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(37),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_addr_cntr_im0_msh_reg(9),
      O => \sig_addr_cntr_im0_msh[8]_i_4_n_0\
    );
\sig_addr_cntr_im0_msh[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(36),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_addr_cntr_im0_msh_reg(8),
      O => \sig_addr_cntr_im0_msh[8]_i_5_n_0\
    );
\sig_addr_cntr_im0_msh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_7\,
      Q => sig_addr_cntr_im0_msh_reg(0),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_im0_msh_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_0\,
      CO(2) => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_1\,
      CO(1) => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_2\,
      CO(0) => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \sig_addr_cntr_im0_msh[0]_i_3_n_0\,
      O(3) => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_4\,
      O(2) => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_5\,
      O(1) => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_6\,
      O(0) => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_7\,
      S(3) => \sig_addr_cntr_im0_msh[0]_i_4_n_0\,
      S(2) => \sig_addr_cntr_im0_msh[0]_i_5_n_0\,
      S(1) => \sig_addr_cntr_im0_msh[0]_i_6_n_0\,
      S(0) => \sig_addr_cntr_im0_msh[0]_i_7_n_0\
    );
\sig_addr_cntr_im0_msh_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_5\,
      Q => sig_addr_cntr_im0_msh_reg(10),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_im0_msh_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_4\,
      Q => sig_addr_cntr_im0_msh_reg(11),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_im0_msh_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_7\,
      Q => sig_addr_cntr_im0_msh_reg(12),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_im0_msh_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_0\,
      CO(3) => \NLW_sig_addr_cntr_im0_msh_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_1\,
      CO(1) => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_2\,
      CO(0) => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_4\,
      O(2) => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_5\,
      O(1) => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_6\,
      O(0) => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_7\,
      S(3) => \sig_addr_cntr_im0_msh[12]_i_2_n_0\,
      S(2) => \sig_addr_cntr_im0_msh[12]_i_3_n_0\,
      S(1) => \sig_addr_cntr_im0_msh[12]_i_4_n_0\,
      S(0) => \sig_addr_cntr_im0_msh[12]_i_5_n_0\
    );
\sig_addr_cntr_im0_msh_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_6\,
      Q => sig_addr_cntr_im0_msh_reg(13),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_im0_msh_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_5\,
      Q => sig_addr_cntr_im0_msh_reg(14),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_im0_msh_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_4\,
      Q => sig_addr_cntr_im0_msh_reg(15),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_im0_msh_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_6\,
      Q => sig_addr_cntr_im0_msh_reg(1),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_im0_msh_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_5\,
      Q => sig_addr_cntr_im0_msh_reg(2),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_im0_msh_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_4\,
      Q => sig_addr_cntr_im0_msh_reg(3),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_im0_msh_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_7\,
      Q => sig_addr_cntr_im0_msh_reg(4),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_im0_msh_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_0\,
      CO(3) => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_0\,
      CO(2) => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_1\,
      CO(1) => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_2\,
      CO(0) => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_4\,
      O(2) => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_5\,
      O(1) => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_6\,
      O(0) => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_7\,
      S(3) => \sig_addr_cntr_im0_msh[4]_i_2_n_0\,
      S(2) => \sig_addr_cntr_im0_msh[4]_i_3_n_0\,
      S(1) => \sig_addr_cntr_im0_msh[4]_i_4_n_0\,
      S(0) => \sig_addr_cntr_im0_msh[4]_i_5_n_0\
    );
\sig_addr_cntr_im0_msh_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_6\,
      Q => sig_addr_cntr_im0_msh_reg(5),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_im0_msh_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_5\,
      Q => sig_addr_cntr_im0_msh_reg(6),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_im0_msh_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_4\,
      Q => sig_addr_cntr_im0_msh_reg(7),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_im0_msh_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_7\,
      Q => sig_addr_cntr_im0_msh_reg(8),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_im0_msh_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_0\,
      CO(3) => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_0\,
      CO(2) => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_1\,
      CO(1) => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_2\,
      CO(0) => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_4\,
      O(2) => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_5\,
      O(1) => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_6\,
      O(0) => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_7\,
      S(3) => \sig_addr_cntr_im0_msh[8]_i_2_n_0\,
      S(2) => \sig_addr_cntr_im0_msh[8]_i_3_n_0\,
      S(1) => \sig_addr_cntr_im0_msh[8]_i_4_n_0\,
      S(0) => \sig_addr_cntr_im0_msh[8]_i_5_n_0\
    );
\sig_addr_cntr_im0_msh_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_6\,
      Q => sig_addr_cntr_im0_msh_reg(9),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_incr_ireg2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(0),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      O => \sig_addr_cntr_incr_ireg2[0]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(10),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      O => \sig_addr_cntr_incr_ireg2[10]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(11),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      O => \sig_addr_cntr_incr_ireg2[11]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => sig_first_xfer_im0,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_bytes_to_mbaa_ireg1(12),
      O => \sig_addr_cntr_incr_ireg2[12]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(1),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      O => \sig_addr_cntr_incr_ireg2[1]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(2),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      O => \sig_addr_cntr_incr_ireg2[2]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(3),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      O => \sig_addr_cntr_incr_ireg2[3]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(4),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      O => \sig_addr_cntr_incr_ireg2[4]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(5),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      O => \sig_addr_cntr_incr_ireg2[5]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(6),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      O => \sig_addr_cntr_incr_ireg2[6]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(7),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      O => \sig_addr_cntr_incr_ireg2[7]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(8),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      O => \sig_addr_cntr_incr_ireg2[8]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(9),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      O => \sig_addr_cntr_incr_ireg2[9]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[0]_i_1_n_0\,
      Q => \sig_addr_cntr_incr_ireg2_reg_n_0_[0]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[10]_i_1_n_0\,
      Q => \sig_addr_cntr_incr_ireg2_reg_n_0_[10]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[11]_i_1_n_0\,
      Q => \sig_addr_cntr_incr_ireg2_reg_n_0_[11]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[12]_i_1_n_0\,
      Q => \sig_addr_cntr_incr_ireg2_reg_n_0_[12]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[1]_i_1_n_0\,
      Q => \sig_addr_cntr_incr_ireg2_reg_n_0_[1]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[2]_i_1_n_0\,
      Q => \sig_addr_cntr_incr_ireg2_reg_n_0_[2]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[3]_i_1_n_0\,
      Q => \sig_addr_cntr_incr_ireg2_reg_n_0_[3]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[4]_i_1_n_0\,
      Q => \sig_addr_cntr_incr_ireg2_reg_n_0_[4]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[5]_i_1_n_0\,
      Q => \sig_addr_cntr_incr_ireg2_reg_n_0_[5]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[6]_i_1_n_0\,
      Q => \sig_addr_cntr_incr_ireg2_reg_n_0_[6]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[7]_i_1_n_0\,
      Q => \sig_addr_cntr_incr_ireg2_reg_n_0_[7]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[8]_i_1_n_0\,
      Q => \sig_addr_cntr_incr_ireg2_reg_n_0_[8]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[9]_i_1_n_0\,
      Q => \sig_addr_cntr_incr_ireg2_reg_n_0_[9]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_im0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(12),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_predict_addr_lsh_ireg3_reg_n_0_[0]\,
      O => p_1_in(0)
    );
\sig_addr_cntr_lsh_im0[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(22),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_predict_addr_lsh_ireg3_reg_n_0_[10]\,
      O => p_1_in(10)
    );
\sig_addr_cntr_lsh_im0[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(23),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_predict_addr_lsh_ireg3_reg_n_0_[11]\,
      O => p_1_in(11)
    );
\sig_addr_cntr_lsh_im0[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(24),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_predict_addr_lsh_ireg3_reg_n_0_[12]\,
      O => p_1_in(12)
    );
\sig_addr_cntr_lsh_im0[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(25),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_predict_addr_lsh_ireg3_reg_n_0_[13]\,
      O => p_1_in(13)
    );
\sig_addr_cntr_lsh_im0[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(26),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_predict_addr_lsh_ireg3_reg_n_0_[14]\,
      O => p_1_in(14)
    );
\sig_addr_cntr_lsh_im0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFBABBFAFFBABA"
    )
        port map (
      I0 => sig_push_input_reg11_out,
      I1 => \^sig_mstr2addr_cmd_valid\,
      I2 => sig_wr_fifo,
      I3 => \^sig_mstr2data_cmd_valid\,
      I4 => sig_wr_fifo_0,
      I5 => sig_cmd2dre_valid_reg_n_0,
      O => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\
    );
\sig_addr_cntr_lsh_im0[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(27),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => sig_predict_addr_lsh_ireg3(15),
      O => p_1_in(15)
    );
\sig_addr_cntr_lsh_im0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(13),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_predict_addr_lsh_ireg3_reg_n_0_[1]\,
      O => p_1_in(1)
    );
\sig_addr_cntr_lsh_im0[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(14),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_predict_addr_lsh_ireg3_reg_n_0_[2]\,
      O => p_1_in(2)
    );
\sig_addr_cntr_lsh_im0[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(15),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_predict_addr_lsh_ireg3_reg_n_0_[3]\,
      O => p_1_in(3)
    );
\sig_addr_cntr_lsh_im0[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(16),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_predict_addr_lsh_ireg3_reg_n_0_[4]\,
      O => p_1_in(4)
    );
\sig_addr_cntr_lsh_im0[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(17),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_predict_addr_lsh_ireg3_reg_n_0_[5]\,
      O => p_1_in(5)
    );
\sig_addr_cntr_lsh_im0[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(18),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_predict_addr_lsh_ireg3_reg_n_0_[6]\,
      O => p_1_in(6)
    );
\sig_addr_cntr_lsh_im0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(19),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_predict_addr_lsh_ireg3_reg_n_0_[7]\,
      O => p_1_in(7)
    );
\sig_addr_cntr_lsh_im0[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(20),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_predict_addr_lsh_ireg3_reg_n_0_[8]\,
      O => p_1_in(8)
    );
\sig_addr_cntr_lsh_im0[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q(21),
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_predict_addr_lsh_ireg3_reg_n_0_[9]\,
      O => p_1_in(9)
    );
\sig_addr_cntr_lsh_im0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => p_1_in(0),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_im0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => p_1_in(10),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[10]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_im0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => p_1_in(11),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[11]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_im0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => p_1_in(12),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[12]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_im0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => p_1_in(13),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[13]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_im0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => p_1_in(14),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[14]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_im0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => p_1_in(15),
      Q => p_1_in_0,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_im0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => p_1_in(1),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_im0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => p_1_in(2),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_im0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => p_1_in(3),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_im0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => p_1_in(4),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_im0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => p_1_in(5),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_im0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => p_1_in(6),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_im0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => p_1_in(7),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_im0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => p_1_in(8),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_im0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => p_1_in(9),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => sig_cmd2mstr_cmd_valid,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => \^in\(41),
      O => sig_push_input_reg11_out
    );
\sig_addr_cntr_lsh_kh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(12),
      Q => sig_addr_cntr_lsh_kh(0),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(22),
      Q => sig_addr_cntr_lsh_kh(10),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(23),
      Q => sig_addr_cntr_lsh_kh(11),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(24),
      Q => sig_addr_cntr_lsh_kh(12),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(25),
      Q => sig_addr_cntr_lsh_kh(13),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(26),
      Q => sig_addr_cntr_lsh_kh(14),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(27),
      Q => sig_addr_cntr_lsh_kh(15),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(28),
      Q => sig_addr_cntr_lsh_kh(16),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(29),
      Q => sig_addr_cntr_lsh_kh(17),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(30),
      Q => sig_addr_cntr_lsh_kh(18),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(31),
      Q => sig_addr_cntr_lsh_kh(19),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(13),
      Q => sig_addr_cntr_lsh_kh(1),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(32),
      Q => sig_addr_cntr_lsh_kh(20),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(33),
      Q => sig_addr_cntr_lsh_kh(21),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(34),
      Q => sig_addr_cntr_lsh_kh(22),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(35),
      Q => sig_addr_cntr_lsh_kh(23),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(36),
      Q => sig_addr_cntr_lsh_kh(24),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(37),
      Q => sig_addr_cntr_lsh_kh(25),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(38),
      Q => sig_addr_cntr_lsh_kh(26),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(39),
      Q => sig_addr_cntr_lsh_kh(27),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(40),
      Q => sig_addr_cntr_lsh_kh(28),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(41),
      Q => sig_addr_cntr_lsh_kh(29),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(14),
      Q => sig_addr_cntr_lsh_kh(2),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(42),
      Q => sig_addr_cntr_lsh_kh(30),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(43),
      Q => sig_addr_cntr_lsh_kh(31),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(15),
      Q => sig_addr_cntr_lsh_kh(3),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(16),
      Q => sig_addr_cntr_lsh_kh(4),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(17),
      Q => sig_addr_cntr_lsh_kh(5),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(18),
      Q => sig_addr_cntr_lsh_kh(6),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(19),
      Q => sig_addr_cntr_lsh_kh(7),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(20),
      Q => sig_addr_cntr_lsh_kh(8),
      R => \^sig_init_reg\
    );
\sig_addr_cntr_lsh_kh_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_input_reg11_out,
      D => Q(21),
      Q => sig_addr_cntr_lsh_kh(9),
      R => \^sig_init_reg\
    );
\sig_adjusted_addr_incr_ireg2[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(11),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      O => \sig_adjusted_addr_incr_ireg2[11]_i_2_n_0\
    );
\sig_adjusted_addr_incr_ireg2[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(10),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      O => \sig_adjusted_addr_incr_ireg2[11]_i_3_n_0\
    );
\sig_adjusted_addr_incr_ireg2[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(9),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      O => \sig_adjusted_addr_incr_ireg2[11]_i_4_n_0\
    );
\sig_adjusted_addr_incr_ireg2[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(8),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      O => \sig_adjusted_addr_incr_ireg2[11]_i_5_n_0\
    );
\sig_adjusted_addr_incr_ireg2[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4777B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(3),
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      O => \sig_adjusted_addr_incr_ireg2[3]_i_2_n_0\
    );
\sig_adjusted_addr_incr_ireg2[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4777B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(2),
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      O => \sig_adjusted_addr_incr_ireg2[3]_i_3_n_0\
    );
\sig_adjusted_addr_incr_ireg2[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4777B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(1),
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      O => \sig_adjusted_addr_incr_ireg2[3]_i_4_n_0\
    );
\sig_adjusted_addr_incr_ireg2[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4777B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(0),
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      O => \sig_adjusted_addr_incr_ireg2[3]_i_5_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(7),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      O => \sig_adjusted_addr_incr_ireg2[7]_i_2_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(6),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      O => \sig_adjusted_addr_incr_ireg2[7]_i_3_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(5),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      O => \sig_adjusted_addr_incr_ireg2[7]_i_4_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(4),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      O => \sig_adjusted_addr_incr_ireg2[7]_i_5_n_0\
    );
\sig_adjusted_addr_incr_ireg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(0),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[0]\,
      R => \^sig_init_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(10),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[10]\,
      R => \^sig_init_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(11),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[11]\,
      R => \^sig_init_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0\,
      CO(3) => \NLW_sig_adjusted_addr_incr_ireg2_reg[11]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_1\,
      CO(1) => \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_2\,
      CO(0) => \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sig_adjusted_addr_incr_im1(11 downto 8),
      S(3) => \sig_adjusted_addr_incr_ireg2[11]_i_2_n_0\,
      S(2) => \sig_adjusted_addr_incr_ireg2[11]_i_3_n_0\,
      S(1) => \sig_adjusted_addr_incr_ireg2[11]_i_4_n_0\,
      S(0) => \sig_adjusted_addr_incr_ireg2[11]_i_5_n_0\
    );
\sig_adjusted_addr_incr_ireg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(1),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[1]\,
      R => \^sig_init_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(2),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[2]\,
      R => \^sig_init_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(3),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[3]\,
      R => \^sig_init_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_0\,
      CO(2) => \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_1\,
      CO(1) => \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_2\,
      CO(0) => \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      DI(2) => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      DI(1) => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      DI(0) => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      O(3 downto 0) => sig_adjusted_addr_incr_im1(3 downto 0),
      S(3) => \sig_adjusted_addr_incr_ireg2[3]_i_2_n_0\,
      S(2) => \sig_adjusted_addr_incr_ireg2[3]_i_3_n_0\,
      S(1) => \sig_adjusted_addr_incr_ireg2[3]_i_4_n_0\,
      S(0) => \sig_adjusted_addr_incr_ireg2[3]_i_5_n_0\
    );
\sig_adjusted_addr_incr_ireg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(4),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[4]\,
      R => \^sig_init_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(5),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[5]\,
      R => \^sig_init_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(6),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[6]\,
      R => \^sig_init_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(7),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[7]\,
      R => \^sig_init_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_0\,
      CO(3) => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0\,
      CO(2) => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_1\,
      CO(1) => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_2\,
      CO(0) => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sig_adjusted_addr_incr_im1(7 downto 4),
      S(3) => \sig_adjusted_addr_incr_ireg2[7]_i_2_n_0\,
      S(2) => \sig_adjusted_addr_incr_ireg2[7]_i_3_n_0\,
      S(1) => \sig_adjusted_addr_incr_ireg2[7]_i_4_n_0\,
      S(0) => \sig_adjusted_addr_incr_ireg2[7]_i_5_n_0\
    );
\sig_adjusted_addr_incr_ireg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(8),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[8]\,
      R => \^sig_init_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(9),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[9]\,
      R => \^sig_init_reg\
    );
sig_brst_cnt_eq_one_ireg1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa_ireg1_i_2_n_0,
      I1 => \sig_btt_cntr_im0_reg_n_0_[12]\,
      O => sig_brst_cnt_eq_one_im0
    );
sig_brst_cnt_eq_one_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_brst_cnt_eq_one_im0,
      Q => sig_brst_cnt_eq_one_ireg1,
      R => \^sig_init_reg\
    );
sig_brst_cnt_eq_zero_ireg1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa_ireg1_i_2_n_0,
      I1 => \sig_btt_cntr_im0_reg_n_0_[12]\,
      O => sig_brst_cnt_eq_zero_im0
    );
sig_brst_cnt_eq_zero_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_brst_cnt_eq_zero_im0,
      Q => sig_brst_cnt_eq_zero_ireg1,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455555"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[11]\,
      I1 => \^in\(41),
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      I4 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[11]_i_2_n_0\
    );
\sig_btt_cntr_im0[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455555"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[10]\,
      I1 => \^in\(41),
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      I4 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[11]_i_3_n_0\
    );
\sig_btt_cntr_im0[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455555"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[9]\,
      I1 => \^in\(41),
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      I4 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[11]_i_4_n_0\
    );
\sig_btt_cntr_im0[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455555"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[8]\,
      I1 => \^in\(41),
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      I4 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[11]_i_5_n_0\
    );
\sig_btt_cntr_im0[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[11]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      I2 => sig_push_input_reg11_out,
      I3 => Q(7),
      O => \sig_btt_cntr_im0[11]_i_6_n_0\
    );
\sig_btt_cntr_im0[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[10]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      I2 => sig_push_input_reg11_out,
      I3 => Q(6),
      O => \sig_btt_cntr_im0[11]_i_7_n_0\
    );
\sig_btt_cntr_im0[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[9]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I2 => sig_push_input_reg11_out,
      I3 => Q(5),
      O => \sig_btt_cntr_im0[11]_i_8_n_0\
    );
\sig_btt_cntr_im0[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[8]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      I2 => sig_push_input_reg11_out,
      I3 => Q(4),
      O => \sig_btt_cntr_im0[11]_i_9_n_0\
    );
\sig_btt_cntr_im0[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \^in\(41),
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[15]_i_2_n_0\
    );
\sig_btt_cntr_im0[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \^in\(41),
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[15]_i_3_n_0\
    );
\sig_btt_cntr_im0[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455555"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[12]\,
      I1 => \^in\(41),
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      I4 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[15]_i_4_n_0\
    );
\sig_btt_cntr_im0[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFDF"
    )
        port map (
      I0 => sig_cmd2mstr_cmd_valid,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => \^in\(41),
      I4 => \sig_btt_cntr_im0_reg_n_0_[15]\,
      O => \sig_btt_cntr_im0[15]_i_5_n_0\
    );
\sig_btt_cntr_im0[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5575555555455555"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[14]\,
      I1 => \^in\(41),
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      I4 => sig_cmd2mstr_cmd_valid,
      I5 => Q(10),
      O => \sig_btt_cntr_im0[15]_i_6_n_0\
    );
\sig_btt_cntr_im0[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5575555555455555"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[13]\,
      I1 => \^in\(41),
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      I4 => sig_cmd2mstr_cmd_valid,
      I5 => Q(9),
      O => \sig_btt_cntr_im0[15]_i_7_n_0\
    );
\sig_btt_cntr_im0[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[12]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[12]\,
      I2 => sig_push_input_reg11_out,
      I3 => Q(8),
      O => \sig_btt_cntr_im0[15]_i_8_n_0\
    );
\sig_btt_cntr_im0[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \^in\(41),
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[19]_i_2_n_0\
    );
\sig_btt_cntr_im0[19]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \^in\(41),
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[19]_i_3_n_0\
    );
\sig_btt_cntr_im0[19]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \^in\(41),
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[19]_i_4_n_0\
    );
\sig_btt_cntr_im0[19]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \^in\(41),
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[19]_i_5_n_0\
    );
\sig_btt_cntr_im0[19]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFDF"
    )
        port map (
      I0 => sig_cmd2mstr_cmd_valid,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => \^in\(41),
      I4 => \sig_btt_cntr_im0_reg_n_0_[19]\,
      O => \sig_btt_cntr_im0[19]_i_6_n_0\
    );
\sig_btt_cntr_im0[19]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFDF"
    )
        port map (
      I0 => sig_cmd2mstr_cmd_valid,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => \^in\(41),
      I4 => \sig_btt_cntr_im0_reg_n_0_[18]\,
      O => \sig_btt_cntr_im0[19]_i_7_n_0\
    );
\sig_btt_cntr_im0[19]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFDF"
    )
        port map (
      I0 => sig_cmd2mstr_cmd_valid,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => \^in\(41),
      I4 => \sig_btt_cntr_im0_reg_n_0_[17]\,
      O => \sig_btt_cntr_im0[19]_i_8_n_0\
    );
\sig_btt_cntr_im0[19]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFDF"
    )
        port map (
      I0 => sig_cmd2mstr_cmd_valid,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => \^in\(41),
      I4 => \sig_btt_cntr_im0_reg_n_0_[16]\,
      O => \sig_btt_cntr_im0[19]_i_9_n_0\
    );
\sig_btt_cntr_im0[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \^in\(41),
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[22]_i_2_n_0\
    );
\sig_btt_cntr_im0[22]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \^in\(41),
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[22]_i_3_n_0\
    );
\sig_btt_cntr_im0[22]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFDF"
    )
        port map (
      I0 => sig_cmd2mstr_cmd_valid,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => \^in\(41),
      I4 => \sig_btt_cntr_im0_reg_n_0_[22]\,
      O => \sig_btt_cntr_im0[22]_i_4_n_0\
    );
\sig_btt_cntr_im0[22]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFDF"
    )
        port map (
      I0 => sig_cmd2mstr_cmd_valid,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => \^in\(41),
      I4 => \sig_btt_cntr_im0_reg_n_0_[21]\,
      O => \sig_btt_cntr_im0[22]_i_5_n_0\
    );
\sig_btt_cntr_im0[22]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFDF"
    )
        port map (
      I0 => sig_cmd2mstr_cmd_valid,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => \^in\(41),
      I4 => \sig_btt_cntr_im0_reg_n_0_[20]\,
      O => \sig_btt_cntr_im0[22]_i_6_n_0\
    );
\sig_btt_cntr_im0[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455555"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[3]\,
      I1 => \^in\(41),
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      I4 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[3]_i_2_n_0\
    );
\sig_btt_cntr_im0[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455555"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[2]\,
      I1 => \^in\(41),
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      I4 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[3]_i_3_n_0\
    );
\sig_btt_cntr_im0[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455555"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[1]\,
      I1 => \^in\(41),
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      I4 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[3]_i_4_n_0\
    );
\sig_btt_cntr_im0[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455555"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[0]\,
      I1 => \^in\(41),
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      I4 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[3]_i_5_n_0\
    );
\sig_btt_cntr_im0[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA2AA55555155"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[3]\,
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      O => \sig_btt_cntr_im0[3]_i_6_n_0\
    );
\sig_btt_cntr_im0[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA2AA55555155"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[2]\,
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      O => \sig_btt_cntr_im0[3]_i_7_n_0\
    );
\sig_btt_cntr_im0[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA2AA55555155"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[1]\,
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      O => \sig_btt_cntr_im0[3]_i_8_n_0\
    );
\sig_btt_cntr_im0[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA2AA55555155"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[0]\,
      I1 => sig_cmd2mstr_cmd_valid,
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => \^in\(41),
      I5 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      O => \sig_btt_cntr_im0[3]_i_9_n_0\
    );
\sig_btt_cntr_im0[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455555"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[7]\,
      I1 => \^in\(41),
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      I4 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[7]_i_2_n_0\
    );
\sig_btt_cntr_im0[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455555"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[6]\,
      I1 => \^in\(41),
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      I4 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[7]_i_3_n_0\
    );
\sig_btt_cntr_im0[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455555"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[5]\,
      I1 => \^in\(41),
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      I4 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[7]_i_4_n_0\
    );
\sig_btt_cntr_im0[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455555"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[4]\,
      I1 => \^in\(41),
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      I4 => sig_cmd2mstr_cmd_valid,
      O => \sig_btt_cntr_im0[7]_i_5_n_0\
    );
\sig_btt_cntr_im0[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[7]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I2 => sig_push_input_reg11_out,
      I3 => Q(3),
      O => \sig_btt_cntr_im0[7]_i_6_n_0\
    );
\sig_btt_cntr_im0[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[6]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      I2 => sig_push_input_reg11_out,
      I3 => Q(2),
      O => \sig_btt_cntr_im0[7]_i_7_n_0\
    );
\sig_btt_cntr_im0[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[5]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I2 => sig_push_input_reg11_out,
      I3 => Q(1),
      O => \sig_btt_cntr_im0[7]_i_8_n_0\
    );
\sig_btt_cntr_im0[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2_reg_n_0_[4]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      I2 => sig_push_input_reg11_out,
      I3 => Q(0),
      O => \sig_btt_cntr_im0[7]_i_9_n_0\
    );
\sig_btt_cntr_im0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[3]_i_1_n_7\,
      Q => \sig_btt_cntr_im0_reg_n_0_[0]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[11]_i_1_n_5\,
      Q => \sig_btt_cntr_im0_reg_n_0_[10]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[11]_i_1_n_4\,
      Q => \sig_btt_cntr_im0_reg_n_0_[11]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_btt_cntr_im0_reg[7]_i_1_n_0\,
      CO(3) => \sig_btt_cntr_im0_reg[11]_i_1_n_0\,
      CO(2) => \sig_btt_cntr_im0_reg[11]_i_1_n_1\,
      CO(1) => \sig_btt_cntr_im0_reg[11]_i_1_n_2\,
      CO(0) => \sig_btt_cntr_im0_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sig_btt_cntr_im0[11]_i_2_n_0\,
      DI(2) => \sig_btt_cntr_im0[11]_i_3_n_0\,
      DI(1) => \sig_btt_cntr_im0[11]_i_4_n_0\,
      DI(0) => \sig_btt_cntr_im0[11]_i_5_n_0\,
      O(3) => \sig_btt_cntr_im0_reg[11]_i_1_n_4\,
      O(2) => \sig_btt_cntr_im0_reg[11]_i_1_n_5\,
      O(1) => \sig_btt_cntr_im0_reg[11]_i_1_n_6\,
      O(0) => \sig_btt_cntr_im0_reg[11]_i_1_n_7\,
      S(3) => \sig_btt_cntr_im0[11]_i_6_n_0\,
      S(2) => \sig_btt_cntr_im0[11]_i_7_n_0\,
      S(1) => \sig_btt_cntr_im0[11]_i_8_n_0\,
      S(0) => \sig_btt_cntr_im0[11]_i_9_n_0\
    );
\sig_btt_cntr_im0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[15]_i_1_n_7\,
      Q => \sig_btt_cntr_im0_reg_n_0_[12]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[15]_i_1_n_6\,
      Q => \sig_btt_cntr_im0_reg_n_0_[13]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[15]_i_1_n_5\,
      Q => \sig_btt_cntr_im0_reg_n_0_[14]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[15]_i_1_n_4\,
      Q => \sig_btt_cntr_im0_reg_n_0_[15]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_btt_cntr_im0_reg[11]_i_1_n_0\,
      CO(3) => \sig_btt_cntr_im0_reg[15]_i_1_n_0\,
      CO(2) => \sig_btt_cntr_im0_reg[15]_i_1_n_1\,
      CO(1) => \sig_btt_cntr_im0_reg[15]_i_1_n_2\,
      CO(0) => \sig_btt_cntr_im0_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sig_btt_cntr_im0[15]_i_2_n_0\,
      DI(2) => \sig_btt_cntr_im0[15]_i_3_n_0\,
      DI(1) => \sig_btt_cntr_im0[15]_i_3_n_0\,
      DI(0) => \sig_btt_cntr_im0[15]_i_4_n_0\,
      O(3) => \sig_btt_cntr_im0_reg[15]_i_1_n_4\,
      O(2) => \sig_btt_cntr_im0_reg[15]_i_1_n_5\,
      O(1) => \sig_btt_cntr_im0_reg[15]_i_1_n_6\,
      O(0) => \sig_btt_cntr_im0_reg[15]_i_1_n_7\,
      S(3) => \sig_btt_cntr_im0[15]_i_5_n_0\,
      S(2) => \sig_btt_cntr_im0[15]_i_6_n_0\,
      S(1) => \sig_btt_cntr_im0[15]_i_7_n_0\,
      S(0) => \sig_btt_cntr_im0[15]_i_8_n_0\
    );
\sig_btt_cntr_im0_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[19]_i_1_n_7\,
      Q => \sig_btt_cntr_im0_reg_n_0_[16]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[19]_i_1_n_6\,
      Q => \sig_btt_cntr_im0_reg_n_0_[17]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[19]_i_1_n_5\,
      Q => \sig_btt_cntr_im0_reg_n_0_[18]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[19]_i_1_n_4\,
      Q => \sig_btt_cntr_im0_reg_n_0_[19]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_btt_cntr_im0_reg[15]_i_1_n_0\,
      CO(3) => \sig_btt_cntr_im0_reg[19]_i_1_n_0\,
      CO(2) => \sig_btt_cntr_im0_reg[19]_i_1_n_1\,
      CO(1) => \sig_btt_cntr_im0_reg[19]_i_1_n_2\,
      CO(0) => \sig_btt_cntr_im0_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sig_btt_cntr_im0[19]_i_2_n_0\,
      DI(2) => \sig_btt_cntr_im0[19]_i_3_n_0\,
      DI(1) => \sig_btt_cntr_im0[19]_i_4_n_0\,
      DI(0) => \sig_btt_cntr_im0[19]_i_5_n_0\,
      O(3) => \sig_btt_cntr_im0_reg[19]_i_1_n_4\,
      O(2) => \sig_btt_cntr_im0_reg[19]_i_1_n_5\,
      O(1) => \sig_btt_cntr_im0_reg[19]_i_1_n_6\,
      O(0) => \sig_btt_cntr_im0_reg[19]_i_1_n_7\,
      S(3) => \sig_btt_cntr_im0[19]_i_6_n_0\,
      S(2) => \sig_btt_cntr_im0[19]_i_7_n_0\,
      S(1) => \sig_btt_cntr_im0[19]_i_8_n_0\,
      S(0) => \sig_btt_cntr_im0[19]_i_9_n_0\
    );
\sig_btt_cntr_im0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[3]_i_1_n_6\,
      Q => \sig_btt_cntr_im0_reg_n_0_[1]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[22]_i_1_n_7\,
      Q => \sig_btt_cntr_im0_reg_n_0_[20]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[22]_i_1_n_6\,
      Q => \sig_btt_cntr_im0_reg_n_0_[21]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[22]_i_1_n_5\,
      Q => \sig_btt_cntr_im0_reg_n_0_[22]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[22]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_btt_cntr_im0_reg[19]_i_1_n_0\,
      CO(3 downto 2) => \NLW_sig_btt_cntr_im0_reg[22]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sig_btt_cntr_im0_reg[22]_i_1_n_2\,
      CO(0) => \sig_btt_cntr_im0_reg[22]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \sig_btt_cntr_im0[22]_i_2_n_0\,
      DI(0) => \sig_btt_cntr_im0[22]_i_3_n_0\,
      O(3) => \NLW_sig_btt_cntr_im0_reg[22]_i_1_O_UNCONNECTED\(3),
      O(2) => \sig_btt_cntr_im0_reg[22]_i_1_n_5\,
      O(1) => \sig_btt_cntr_im0_reg[22]_i_1_n_6\,
      O(0) => \sig_btt_cntr_im0_reg[22]_i_1_n_7\,
      S(3) => '0',
      S(2) => \sig_btt_cntr_im0[22]_i_4_n_0\,
      S(1) => \sig_btt_cntr_im0[22]_i_5_n_0\,
      S(0) => \sig_btt_cntr_im0[22]_i_6_n_0\
    );
\sig_btt_cntr_im0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[3]_i_1_n_5\,
      Q => \sig_btt_cntr_im0_reg_n_0_[2]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[3]_i_1_n_4\,
      Q => \sig_btt_cntr_im0_reg_n_0_[3]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_btt_cntr_im0_reg[3]_i_1_n_0\,
      CO(2) => \sig_btt_cntr_im0_reg[3]_i_1_n_1\,
      CO(1) => \sig_btt_cntr_im0_reg[3]_i_1_n_2\,
      CO(0) => \sig_btt_cntr_im0_reg[3]_i_1_n_3\,
      CYINIT => \sig_btt_cntr_im0[15]_i_3_n_0\,
      DI(3) => \sig_btt_cntr_im0[3]_i_2_n_0\,
      DI(2) => \sig_btt_cntr_im0[3]_i_3_n_0\,
      DI(1) => \sig_btt_cntr_im0[3]_i_4_n_0\,
      DI(0) => \sig_btt_cntr_im0[3]_i_5_n_0\,
      O(3) => \sig_btt_cntr_im0_reg[3]_i_1_n_4\,
      O(2) => \sig_btt_cntr_im0_reg[3]_i_1_n_5\,
      O(1) => \sig_btt_cntr_im0_reg[3]_i_1_n_6\,
      O(0) => \sig_btt_cntr_im0_reg[3]_i_1_n_7\,
      S(3) => \sig_btt_cntr_im0[3]_i_6_n_0\,
      S(2) => \sig_btt_cntr_im0[3]_i_7_n_0\,
      S(1) => \sig_btt_cntr_im0[3]_i_8_n_0\,
      S(0) => \sig_btt_cntr_im0[3]_i_9_n_0\
    );
\sig_btt_cntr_im0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[7]_i_1_n_7\,
      Q => \sig_btt_cntr_im0_reg_n_0_[4]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[7]_i_1_n_6\,
      Q => \sig_btt_cntr_im0_reg_n_0_[5]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[7]_i_1_n_5\,
      Q => \sig_btt_cntr_im0_reg_n_0_[6]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[7]_i_1_n_4\,
      Q => \sig_btt_cntr_im0_reg_n_0_[7]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_btt_cntr_im0_reg[3]_i_1_n_0\,
      CO(3) => \sig_btt_cntr_im0_reg[7]_i_1_n_0\,
      CO(2) => \sig_btt_cntr_im0_reg[7]_i_1_n_1\,
      CO(1) => \sig_btt_cntr_im0_reg[7]_i_1_n_2\,
      CO(0) => \sig_btt_cntr_im0_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sig_btt_cntr_im0[7]_i_2_n_0\,
      DI(2) => \sig_btt_cntr_im0[7]_i_3_n_0\,
      DI(1) => \sig_btt_cntr_im0[7]_i_4_n_0\,
      DI(0) => \sig_btt_cntr_im0[7]_i_5_n_0\,
      O(3) => \sig_btt_cntr_im0_reg[7]_i_1_n_4\,
      O(2) => \sig_btt_cntr_im0_reg[7]_i_1_n_5\,
      O(1) => \sig_btt_cntr_im0_reg[7]_i_1_n_6\,
      O(0) => \sig_btt_cntr_im0_reg[7]_i_1_n_7\,
      S(3) => \sig_btt_cntr_im0[7]_i_6_n_0\,
      S(2) => \sig_btt_cntr_im0[7]_i_7_n_0\,
      S(1) => \sig_btt_cntr_im0[7]_i_8_n_0\,
      S(0) => \sig_btt_cntr_im0[7]_i_9_n_0\
    );
\sig_btt_cntr_im0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[11]_i_1_n_7\,
      Q => \sig_btt_cntr_im0_reg_n_0_[8]\,
      R => \^sig_init_reg\
    );
\sig_btt_cntr_im0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[11]_i_1_n_6\,
      Q => \sig_btt_cntr_im0_reg_n_0_[9]\,
      R => \^sig_init_reg\
    );
sig_btt_eq_b2mbaa_im01_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sig_btt_eq_b2mbaa_im01_carry_n_0,
      CO(2) => sig_btt_eq_b2mbaa_im01_carry_n_1,
      CO(1) => sig_btt_eq_b2mbaa_im01_carry_n_2,
      CO(0) => sig_btt_eq_b2mbaa_im01_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_sig_btt_eq_b2mbaa_im01_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sig_btt_eq_b2mbaa_im01_carry_i_1_n_0,
      S(2) => sig_btt_eq_b2mbaa_im01_carry_i_2_n_0,
      S(1) => sig_btt_eq_b2mbaa_im01_carry_i_3_n_0,
      S(0) => sig_btt_eq_b2mbaa_im01_carry_i_4_n_0
    );
\sig_btt_eq_b2mbaa_im01_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sig_btt_eq_b2mbaa_im01_carry_n_0,
      CO(3 downto 1) => \NLW_sig_btt_eq_b2mbaa_im01_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => sig_btt_eq_b2mbaa_im01,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_sig_btt_eq_b2mbaa_im01_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \sig_btt_eq_b2mbaa_im01_carry__0_i_1_n_0\
    );
\sig_btt_eq_b2mbaa_im01_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(12),
      O => \sig_btt_eq_b2mbaa_im01_carry__0_i_1_n_0\
    );
sig_btt_eq_b2mbaa_im01_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      I1 => sig_bytes_to_mbaa_im0(11),
      I2 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      I3 => sig_bytes_to_mbaa_im0(10),
      I4 => sig_bytes_to_mbaa_im0(9),
      I5 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      O => sig_btt_eq_b2mbaa_im01_carry_i_1_n_0
    );
sig_btt_eq_b2mbaa_im01_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I1 => sig_bytes_to_mbaa_im0(7),
      I2 => sig_bytes_to_mbaa_im0(6),
      I3 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      I4 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      I5 => sig_bytes_to_mbaa_im0(8),
      O => sig_btt_eq_b2mbaa_im01_carry_i_2_n_0
    );
sig_btt_eq_b2mbaa_im01_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I1 => sig_bytes_to_mbaa_im0(5),
      I2 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      I3 => sig_bytes_to_mbaa_im0(4),
      I4 => sig_bytes_to_mbaa_im0(3),
      I5 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      O => sig_btt_eq_b2mbaa_im01_carry_i_3_n_0
    );
sig_btt_eq_b2mbaa_im01_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(2),
      I1 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I3 => sig_bytes_to_mbaa_im0(1),
      I4 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I5 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      O => sig_btt_eq_b2mbaa_im01_carry_i_4_n_0
    );
sig_btt_eq_b2mbaa_ireg1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[12]\,
      I1 => sig_btt_eq_b2mbaa_im01,
      I2 => sig_btt_lt_b2mbaa_ireg1_i_2_n_0,
      O => sig_btt_eq_b2mbaa_im0
    );
sig_btt_eq_b2mbaa_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_btt_eq_b2mbaa_im0,
      Q => sig_btt_eq_b2mbaa_ireg1,
      R => \^sig_init_reg\
    );
sig_btt_lt_b2mbaa_im01_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sig_btt_lt_b2mbaa_im01_carry_n_0,
      CO(2) => sig_btt_lt_b2mbaa_im01_carry_n_1,
      CO(1) => sig_btt_lt_b2mbaa_im01_carry_n_2,
      CO(0) => sig_btt_lt_b2mbaa_im01_carry_n_3,
      CYINIT => '0',
      DI(3) => sig_btt_lt_b2mbaa_im01_carry_i_1_n_0,
      DI(2) => sig_btt_lt_b2mbaa_im01_carry_i_2_n_0,
      DI(1) => sig_btt_lt_b2mbaa_im01_carry_i_3_n_0,
      DI(0) => sig_btt_lt_b2mbaa_im01_carry_i_4_n_0,
      O(3 downto 0) => NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sig_btt_lt_b2mbaa_im01_carry_i_5_n_0,
      S(2) => sig_btt_lt_b2mbaa_im01_carry_i_6_n_0,
      S(1) => sig_btt_lt_b2mbaa_im01_carry_i_7_n_0,
      S(0) => sig_btt_lt_b2mbaa_im01_carry_i_8_n_0
    );
\sig_btt_lt_b2mbaa_im01_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sig_btt_lt_b2mbaa_im01_carry_n_0,
      CO(3) => \NLW_sig_btt_lt_b2mbaa_im01_carry__0_CO_UNCONNECTED\(3),
      CO(2) => sig_btt_lt_b2mbaa_im01,
      CO(1) => \sig_btt_lt_b2mbaa_im01_carry__0_n_2\,
      CO(0) => \sig_btt_lt_b2mbaa_im01_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => sig_bytes_to_mbaa_im0(12),
      DI(1) => \sig_btt_lt_b2mbaa_im01_carry__0_i_1_n_0\,
      DI(0) => \sig_btt_lt_b2mbaa_im01_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_sig_btt_lt_b2mbaa_im01_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \sig_btt_lt_b2mbaa_im01_carry__0_i_3_n_0\,
      S(1) => \sig_btt_lt_b2mbaa_im01_carry__0_i_4_n_0\,
      S(0) => \sig_btt_lt_b2mbaa_im01_carry__0_i_5_n_0\
    );
\sig_btt_lt_b2mbaa_im01_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(10),
      I1 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      I3 => sig_bytes_to_mbaa_im0(11),
      O => \sig_btt_lt_b2mbaa_im01_carry__0_i_1_n_0\
    );
\sig_btt_lt_b2mbaa_im01_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(8),
      I1 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I3 => sig_bytes_to_mbaa_im0(9),
      O => \sig_btt_lt_b2mbaa_im01_carry__0_i_2_n_0\
    );
\sig_btt_lt_b2mbaa_im01_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(12),
      O => \sig_btt_lt_b2mbaa_im01_carry__0_i_3_n_0\
    );
\sig_btt_lt_b2mbaa_im01_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(10),
      I1 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      I2 => sig_bytes_to_mbaa_im0(11),
      I3 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      O => \sig_btt_lt_b2mbaa_im01_carry__0_i_4_n_0\
    );
\sig_btt_lt_b2mbaa_im01_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(9),
      I1 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      I3 => sig_bytes_to_mbaa_im0(8),
      O => \sig_btt_lt_b2mbaa_im01_carry__0_i_5_n_0\
    );
sig_btt_lt_b2mbaa_im01_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(6),
      I1 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I3 => sig_bytes_to_mbaa_im0(7),
      O => sig_btt_lt_b2mbaa_im01_carry_i_1_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(4),
      I1 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I3 => sig_bytes_to_mbaa_im0(5),
      O => sig_btt_lt_b2mbaa_im01_carry_i_2_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(2),
      I1 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I3 => sig_bytes_to_mbaa_im0(3),
      O => sig_btt_lt_b2mbaa_im01_carry_i_3_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I3 => sig_bytes_to_mbaa_im0(1),
      O => sig_btt_lt_b2mbaa_im01_carry_i_4_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      I1 => sig_bytes_to_mbaa_im0(6),
      I2 => sig_bytes_to_mbaa_im0(7),
      I3 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_5_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(4),
      I1 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      I2 => sig_bytes_to_mbaa_im0(5),
      I3 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_6_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(3),
      I1 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I3 => sig_bytes_to_mbaa_im0(2),
      O => sig_btt_lt_b2mbaa_im01_carry_i_7_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I2 => sig_bytes_to_mbaa_im0(1),
      I3 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_8_n_0
    );
sig_btt_lt_b2mbaa_ireg1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[12]\,
      I1 => sig_btt_lt_b2mbaa_im01,
      I2 => sig_btt_lt_b2mbaa_ireg1_i_2_n_0,
      O => sig_btt_lt_b2mbaa_im0
    );
sig_btt_lt_b2mbaa_ireg1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa_ireg1_i_3_n_0,
      I1 => \sig_btt_cntr_im0_reg_n_0_[15]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[16]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[13]\,
      I4 => \sig_btt_cntr_im0_reg_n_0_[14]\,
      O => sig_btt_lt_b2mbaa_ireg1_i_2_n_0
    );
sig_btt_lt_b2mbaa_ireg1_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[17]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[18]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[19]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[20]\,
      I4 => \sig_btt_cntr_im0_reg_n_0_[22]\,
      I5 => \sig_btt_cntr_im0_reg_n_0_[21]\,
      O => sig_btt_lt_b2mbaa_ireg1_i_3_n_0
    );
sig_btt_lt_b2mbaa_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_btt_lt_b2mbaa_im0,
      Q => sig_btt_lt_b2mbaa_ireg1,
      R => \^sig_init_reg\
    );
\sig_bytes_to_mbaa_ireg1[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[11]\,
      O => \sig_bytes_to_mbaa_ireg1[12]_i_2_n_0\
    );
\sig_bytes_to_mbaa_ireg1[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[10]\,
      O => \sig_bytes_to_mbaa_ireg1[12]_i_3_n_0\
    );
\sig_bytes_to_mbaa_ireg1[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      O => \sig_bytes_to_mbaa_ireg1[12]_i_4_n_0\
    );
\sig_bytes_to_mbaa_ireg1[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      O => \sig_bytes_to_mbaa_ireg1[4]_i_2_n_0\
    );
\sig_bytes_to_mbaa_ireg1[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      O => \sig_bytes_to_mbaa_ireg1[4]_i_3_n_0\
    );
\sig_bytes_to_mbaa_ireg1[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      O => \sig_bytes_to_mbaa_ireg1[4]_i_4_n_0\
    );
\sig_bytes_to_mbaa_ireg1[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      O => \sig_bytes_to_mbaa_ireg1[4]_i_5_n_0\
    );
\sig_bytes_to_mbaa_ireg1[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      O => \sig_bytes_to_mbaa_ireg1[4]_i_6_n_0\
    );
\sig_bytes_to_mbaa_ireg1[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      O => \sig_bytes_to_mbaa_ireg1[8]_i_2_n_0\
    );
\sig_bytes_to_mbaa_ireg1[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      O => \sig_bytes_to_mbaa_ireg1[8]_i_3_n_0\
    );
\sig_bytes_to_mbaa_ireg1[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      O => \sig_bytes_to_mbaa_ireg1[8]_i_4_n_0\
    );
\sig_bytes_to_mbaa_ireg1[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      O => \sig_bytes_to_mbaa_ireg1[8]_i_5_n_0\
    );
\sig_bytes_to_mbaa_ireg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      Q => sig_bytes_to_mbaa_ireg1(0),
      R => \^sig_init_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(10),
      Q => sig_bytes_to_mbaa_ireg1(10),
      R => \^sig_init_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(11),
      Q => sig_bytes_to_mbaa_ireg1(11),
      R => \^sig_init_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(12),
      Q => sig_bytes_to_mbaa_ireg1(12),
      R => \^sig_init_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_0\,
      CO(3) => sig_bytes_to_mbaa_im0(12),
      CO(2) => \NLW_sig_bytes_to_mbaa_ireg1_reg[12]_i_1_CO_UNCONNECTED\(2),
      CO(1) => \sig_bytes_to_mbaa_ireg1_reg[12]_i_1_n_2\,
      CO(0) => \sig_bytes_to_mbaa_ireg1_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sig_bytes_to_mbaa_ireg1_reg[12]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => sig_bytes_to_mbaa_im0(11 downto 9),
      S(3) => '1',
      S(2) => \sig_bytes_to_mbaa_ireg1[12]_i_2_n_0\,
      S(1) => \sig_bytes_to_mbaa_ireg1[12]_i_3_n_0\,
      S(0) => \sig_bytes_to_mbaa_ireg1[12]_i_4_n_0\
    );
\sig_bytes_to_mbaa_ireg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(1),
      Q => sig_bytes_to_mbaa_ireg1(1),
      R => \^sig_init_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(2),
      Q => sig_bytes_to_mbaa_ireg1(2),
      R => \^sig_init_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(3),
      Q => sig_bytes_to_mbaa_ireg1(3),
      R => \^sig_init_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(4),
      Q => sig_bytes_to_mbaa_ireg1(4),
      R => \^sig_init_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_0\,
      CO(2) => \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_1\,
      CO(1) => \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_2\,
      CO(0) => \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_3\,
      CYINIT => \sig_bytes_to_mbaa_ireg1[4]_i_2_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sig_bytes_to_mbaa_im0(4 downto 1),
      S(3) => \sig_bytes_to_mbaa_ireg1[4]_i_3_n_0\,
      S(2) => \sig_bytes_to_mbaa_ireg1[4]_i_4_n_0\,
      S(1) => \sig_bytes_to_mbaa_ireg1[4]_i_5_n_0\,
      S(0) => \sig_bytes_to_mbaa_ireg1[4]_i_6_n_0\
    );
\sig_bytes_to_mbaa_ireg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(5),
      Q => sig_bytes_to_mbaa_ireg1(5),
      R => \^sig_init_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(6),
      Q => sig_bytes_to_mbaa_ireg1(6),
      R => \^sig_init_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(7),
      Q => sig_bytes_to_mbaa_ireg1(7),
      R => \^sig_init_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(8),
      Q => sig_bytes_to_mbaa_ireg1(8),
      R => \^sig_init_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_0\,
      CO(3) => \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_0\,
      CO(2) => \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_1\,
      CO(1) => \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_2\,
      CO(0) => \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sig_bytes_to_mbaa_im0(8 downto 5),
      S(3) => \sig_bytes_to_mbaa_ireg1[8]_i_2_n_0\,
      S(2) => \sig_bytes_to_mbaa_ireg1[8]_i_3_n_0\,
      S(1) => \sig_bytes_to_mbaa_ireg1[8]_i_4_n_0\,
      S(0) => \sig_bytes_to_mbaa_ireg1[8]_i_5_n_0\
    );
\sig_bytes_to_mbaa_ireg1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_bytes_to_mbaa_im0(9),
      Q => sig_bytes_to_mbaa_ireg1(9),
      R => \^sig_init_reg\
    );
sig_calc_error_pushed_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \^in\(41),
      I1 => sig_xfer_reg_empty,
      I2 => sig_ld_xfer_reg,
      I3 => sig_calc_error_pushed,
      O => sig_calc_error_pushed_i_1_n_0
    );
sig_calc_error_pushed_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_calc_error_pushed_i_1_n_0,
      Q => sig_calc_error_pushed,
      R => \^sig_init_reg\
    );
sig_calc_error_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0800"
    )
        port map (
      I0 => \sig_btt_is_zero__0\,
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2mstr_cmd_valid,
      I4 => \^in\(41),
      O => sig_calc_error_reg_i_1_n_0
    );
sig_calc_error_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => Q(9),
      I1 => Q(7),
      I2 => sig_calc_error_reg_i_3_n_0,
      I3 => Q(6),
      I4 => Q(8),
      I5 => Q(10),
      O => \sig_btt_is_zero__0\
    );
sig_calc_error_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(5),
      O => sig_calc_error_reg_i_3_n_0
    );
sig_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_calc_error_reg_i_1_n_0,
      Q => \^in\(41),
      R => \^sig_init_reg\
    );
sig_cmd2addr_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55440544"
    )
        port map (
      I0 => \^sig_init_reg\,
      I1 => sig_sm_ld_xfer_reg_ns,
      I2 => sig_inhibit_rdy_n_1,
      I3 => \^sig_mstr2addr_cmd_valid\,
      I4 => sig_cmd2addr_valid_reg_0,
      O => sig_cmd2addr_valid_i_1_n_0
    );
sig_cmd2addr_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_cmd2addr_valid_i_1_n_0,
      Q => \^sig_mstr2addr_cmd_valid\,
      R => '0'
    );
sig_cmd2data_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54540454"
    )
        port map (
      I0 => \^sig_init_reg\,
      I1 => sig_sm_ld_xfer_reg_ns,
      I2 => \^sig_mstr2data_cmd_valid\,
      I3 => sig_inhibit_rdy_n,
      I4 => sig_cmd2data_valid_reg_0,
      O => sig_cmd2data_valid_i_1_n_0
    );
sig_cmd2data_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_cmd2data_valid_i_1_n_0,
      Q => \^sig_mstr2data_cmd_valid\,
      R => '0'
    );
sig_cmd2dre_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^sig_init_reg\,
      I1 => sig_cmd2dre_valid_reg_n_0,
      I2 => sig_sm_ld_xfer_reg_ns,
      I3 => sig_first_xfer_im0,
      O => sig_cmd2dre_valid_i_1_n_0
    );
sig_cmd2dre_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_cmd2dre_valid_i_1_n_0,
      Q => sig_cmd2dre_valid_reg_n_0,
      R => '0'
    );
sig_first_xfer_im0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => \^sig_init_reg\,
      I1 => sig_push_input_reg11_out,
      I2 => sig_first_xfer_im0,
      I3 => sig_pop_xfer_reg0_out,
      O => sig_first_xfer_im0_i_1_n_0
    );
sig_first_xfer_im0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_first_xfer_im0_i_1_n_0,
      Q => sig_first_xfer_im0,
      R => '0'
    );
sig_input_burst_type_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \^in\(40),
      I1 => sig_push_input_reg11_out,
      I2 => Q(11),
      I3 => \^sig_init_reg\,
      I4 => sig_calc_error_pushed,
      I5 => sig_sm_pop_input_reg,
      O => sig_input_burst_type_reg_i_1_n_0
    );
sig_input_burst_type_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_input_burst_type_reg_i_1_n_0,
      Q => \^in\(40),
      R => '0'
    );
sig_input_reg_empty_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF2"
    )
        port map (
      I0 => sig_input_reg_empty,
      I1 => sig_push_input_reg11_out,
      I2 => \^sig_init_reg\,
      I3 => sig_calc_error_pushed,
      I4 => sig_sm_pop_input_reg,
      O => sig_input_reg_empty_i_1_n_0
    );
sig_input_reg_empty_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_input_reg_empty_i_1_n_0,
      Q => sig_input_reg_empty,
      R => '0'
    );
sig_ld_xfer_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0544"
    )
        port map (
      I0 => \^sig_init_reg\,
      I1 => sig_sm_ld_xfer_reg_ns,
      I2 => sig_xfer_reg_empty,
      I3 => sig_ld_xfer_reg,
      O => sig_ld_xfer_reg_i_1_n_0
    );
sig_ld_xfer_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_ld_xfer_reg_i_1_n_0,
      Q => sig_ld_xfer_reg,
      R => '0'
    );
sig_ld_xfer_reg_tmp_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => \^sig_init_reg\,
      I1 => sig_sm_ld_xfer_reg_ns,
      I2 => sig_ld_xfer_reg_tmp,
      I3 => sig_pop_xfer_reg0_out,
      O => sig_ld_xfer_reg_tmp_i_1_n_0
    );
sig_ld_xfer_reg_tmp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_ld_xfer_reg_tmp_i_1_n_0,
      Q => sig_ld_xfer_reg_tmp,
      R => '0'
    );
sig_mmap_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => SR(0),
      Q => \^sig_init_reg\,
      R => '0'
    );
sig_no_btt_residue_ireg1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => sig_no_btt_residue_ireg1_i_2_n_0,
      I1 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I4 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      I5 => sig_no_btt_residue_ireg1_i_3_n_0,
      O => sig_no_btt_residue_im0
    );
sig_no_btt_residue_ireg1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      O => sig_no_btt_residue_ireg1_i_2_n_0
    );
sig_no_btt_residue_ireg1_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      O => sig_no_btt_residue_ireg1_i_3_n_0
    );
sig_no_btt_residue_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_no_btt_residue_im0,
      Q => sig_no_btt_residue_ireg1,
      R => \^sig_init_reg\
    );
sig_parent_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001510"
    )
        port map (
      I0 => \^sig_init_reg\,
      I1 => \^sig_calc_error_reg_reg_0\(0),
      I2 => sig_ld_xfer_reg_tmp,
      I3 => sig_parent_done,
      I4 => sig_push_input_reg11_out,
      O => sig_parent_done_i_1_n_0
    );
sig_parent_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_parent_done_i_1_n_0,
      Q => sig_parent_done,
      R => '0'
    );
\sig_predict_addr_lsh_ireg3[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[11]\,
      I1 => \sig_addr_cntr_incr_ireg2_reg_n_0_[11]\,
      O => \sig_predict_addr_lsh_ireg3[11]_i_2_n_0\
    );
\sig_predict_addr_lsh_ireg3[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[10]\,
      I1 => \sig_addr_cntr_incr_ireg2_reg_n_0_[10]\,
      O => \sig_predict_addr_lsh_ireg3[11]_i_3_n_0\
    );
\sig_predict_addr_lsh_ireg3[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      I1 => \sig_addr_cntr_incr_ireg2_reg_n_0_[9]\,
      O => \sig_predict_addr_lsh_ireg3[11]_i_4_n_0\
    );
\sig_predict_addr_lsh_ireg3[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      I1 => \sig_addr_cntr_incr_ireg2_reg_n_0_[8]\,
      O => \sig_predict_addr_lsh_ireg3[11]_i_5_n_0\
    );
\sig_predict_addr_lsh_ireg3[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[12]\,
      I1 => \sig_addr_cntr_incr_ireg2_reg_n_0_[12]\,
      O => \sig_predict_addr_lsh_ireg3[15]_i_2_n_0\
    );
\sig_predict_addr_lsh_ireg3[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      I1 => \sig_addr_cntr_incr_ireg2_reg_n_0_[3]\,
      O => \sig_predict_addr_lsh_ireg3[3]_i_2_n_0\
    );
\sig_predict_addr_lsh_ireg3[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I1 => \sig_addr_cntr_incr_ireg2_reg_n_0_[2]\,
      O => \sig_predict_addr_lsh_ireg3[3]_i_3_n_0\
    );
\sig_predict_addr_lsh_ireg3[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I1 => \sig_addr_cntr_incr_ireg2_reg_n_0_[1]\,
      O => \sig_predict_addr_lsh_ireg3[3]_i_4_n_0\
    );
\sig_predict_addr_lsh_ireg3[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I1 => \sig_addr_cntr_incr_ireg2_reg_n_0_[0]\,
      O => \sig_predict_addr_lsh_ireg3[3]_i_5_n_0\
    );
\sig_predict_addr_lsh_ireg3[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      I1 => \sig_addr_cntr_incr_ireg2_reg_n_0_[7]\,
      O => \sig_predict_addr_lsh_ireg3[7]_i_2_n_0\
    );
\sig_predict_addr_lsh_ireg3[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      I1 => \sig_addr_cntr_incr_ireg2_reg_n_0_[6]\,
      O => \sig_predict_addr_lsh_ireg3[7]_i_3_n_0\
    );
\sig_predict_addr_lsh_ireg3[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I1 => \sig_addr_cntr_incr_ireg2_reg_n_0_[5]\,
      O => \sig_predict_addr_lsh_ireg3[7]_i_4_n_0\
    );
\sig_predict_addr_lsh_ireg3[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      I1 => \sig_addr_cntr_incr_ireg2_reg_n_0_[4]\,
      O => \sig_predict_addr_lsh_ireg3[7]_i_5_n_0\
    );
\sig_predict_addr_lsh_ireg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(0),
      Q => \sig_predict_addr_lsh_ireg3_reg_n_0_[0]\,
      R => \^sig_init_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(10),
      Q => \sig_predict_addr_lsh_ireg3_reg_n_0_[10]\,
      R => \^sig_init_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(11),
      Q => \sig_predict_addr_lsh_ireg3_reg_n_0_[11]\,
      R => \^sig_init_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0\,
      CO(3) => \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_0\,
      CO(2) => \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_1\,
      CO(1) => \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_2\,
      CO(0) => \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sig_addr_cntr_lsh_im0_reg_n_0_[11]\,
      DI(2) => \sig_addr_cntr_lsh_im0_reg_n_0_[10]\,
      DI(1) => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      DI(0) => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      O(3 downto 0) => sig_predict_addr_lsh_im2(11 downto 8),
      S(3) => \sig_predict_addr_lsh_ireg3[11]_i_2_n_0\,
      S(2) => \sig_predict_addr_lsh_ireg3[11]_i_3_n_0\,
      S(1) => \sig_predict_addr_lsh_ireg3[11]_i_4_n_0\,
      S(0) => \sig_predict_addr_lsh_ireg3[11]_i_5_n_0\
    );
\sig_predict_addr_lsh_ireg3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(12),
      Q => \sig_predict_addr_lsh_ireg3_reg_n_0_[12]\,
      R => \^sig_init_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(13),
      Q => \sig_predict_addr_lsh_ireg3_reg_n_0_[13]\,
      R => \^sig_init_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(14),
      Q => \sig_predict_addr_lsh_ireg3_reg_n_0_[14]\,
      R => \^sig_init_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(15),
      Q => sig_predict_addr_lsh_ireg3(15),
      R => \^sig_init_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_0\,
      CO(3) => \NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_1\,
      CO(1) => \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_2\,
      CO(0) => \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \sig_addr_cntr_lsh_im0_reg_n_0_[14]\,
      DI(1) => \sig_addr_cntr_lsh_im0_reg_n_0_[13]\,
      DI(0) => \sig_addr_cntr_lsh_im0_reg_n_0_[12]\,
      O(3 downto 0) => sig_predict_addr_lsh_im2(15 downto 12),
      S(3) => p_1_in_0,
      S(2) => \sig_addr_cntr_lsh_im0_reg_n_0_[14]\,
      S(1) => \sig_addr_cntr_lsh_im0_reg_n_0_[13]\,
      S(0) => \sig_predict_addr_lsh_ireg3[15]_i_2_n_0\
    );
\sig_predict_addr_lsh_ireg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(1),
      Q => \sig_predict_addr_lsh_ireg3_reg_n_0_[1]\,
      R => \^sig_init_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(2),
      Q => \sig_predict_addr_lsh_ireg3_reg_n_0_[2]\,
      R => \^sig_init_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(3),
      Q => \sig_predict_addr_lsh_ireg3_reg_n_0_[3]\,
      R => \^sig_init_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_0\,
      CO(2) => \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_1\,
      CO(1) => \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_2\,
      CO(0) => \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      DI(2) => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      DI(1) => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      DI(0) => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      O(3 downto 0) => sig_predict_addr_lsh_im2(3 downto 0),
      S(3) => \sig_predict_addr_lsh_ireg3[3]_i_2_n_0\,
      S(2) => \sig_predict_addr_lsh_ireg3[3]_i_3_n_0\,
      S(1) => \sig_predict_addr_lsh_ireg3[3]_i_4_n_0\,
      S(0) => \sig_predict_addr_lsh_ireg3[3]_i_5_n_0\
    );
\sig_predict_addr_lsh_ireg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(4),
      Q => \sig_predict_addr_lsh_ireg3_reg_n_0_[4]\,
      R => \^sig_init_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(5),
      Q => \sig_predict_addr_lsh_ireg3_reg_n_0_[5]\,
      R => \^sig_init_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(6),
      Q => \sig_predict_addr_lsh_ireg3_reg_n_0_[6]\,
      R => \^sig_init_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(7),
      Q => \sig_predict_addr_lsh_ireg3_reg_n_0_[7]\,
      R => \^sig_init_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_0\,
      CO(3) => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0\,
      CO(2) => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_1\,
      CO(1) => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_2\,
      CO(0) => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      DI(2) => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      DI(1) => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      DI(0) => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      O(3 downto 0) => sig_predict_addr_lsh_im2(7 downto 4),
      S(3) => \sig_predict_addr_lsh_ireg3[7]_i_2_n_0\,
      S(2) => \sig_predict_addr_lsh_ireg3[7]_i_3_n_0\,
      S(1) => \sig_predict_addr_lsh_ireg3[7]_i_4_n_0\,
      S(0) => \sig_predict_addr_lsh_ireg3[7]_i_5_n_0\
    );
\sig_predict_addr_lsh_ireg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(8),
      Q => \sig_predict_addr_lsh_ireg3_reg_n_0_[8]\,
      R => \^sig_init_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(9),
      Q => \sig_predict_addr_lsh_ireg3_reg_n_0_[9]\,
      R => \^sig_init_reg\
    );
sig_sm_halt_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      I2 => sig_calc_error_pushed,
      I3 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0]\,
      O => sig_sm_halt_ns
    );
sig_sm_halt_reg_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_sm_halt_ns,
      Q => sig_sm_halt_reg,
      S => \^sig_init_reg\
    );
sig_sm_ld_calc1_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF020202"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      I1 => sig_parent_done,
      I2 => sig_calc_error_pushed,
      I3 => sig_push_input_reg11_out,
      I4 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1]\,
      O => sig_sm_ld_calc1_reg_ns
    );
sig_sm_ld_calc1_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_sm_ld_calc1_reg_ns,
      Q => sig_sm_ld_calc1_reg,
      R => \^sig_init_reg\
    );
sig_sm_ld_calc2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_sm_ld_calc1_reg,
      Q => sig_sm_ld_calc2_reg,
      R => \^sig_init_reg\
    );
sig_sm_pop_input_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sig_calc_error_pushed,
      I1 => sig_parent_done,
      I2 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      O => sig_sm_pop_input_reg_ns
    );
sig_sm_pop_input_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_sm_pop_input_reg_ns,
      Q => sig_sm_pop_input_reg,
      R => \^sig_init_reg\
    );
sig_xfer_reg_empty_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFEE"
    )
        port map (
      I0 => \^sig_init_reg\,
      I1 => sig_pop_xfer_reg0_out,
      I2 => sig_ld_xfer_reg,
      I3 => sig_xfer_reg_empty,
      O => sig_xfer_reg_empty_i_1_n_0
    );
sig_xfer_reg_empty_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_xfer_reg_empty_i_1_n_0,
      Q => sig_xfer_reg_empty,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_axi_datamover_rd_status_cntl is
  port (
    sig_rsc2stat_status : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_rsc2stat_status_valid : out STD_LOGIC;
    sig_rsc2data_ready : out STD_LOGIC;
    sig_rd_sts_tag_reg0 : in STD_LOGIC;
    sig_push_rd_sts_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    sig_rd_sts_decerr_reg0 : in STD_LOGIC;
    sig_data2rsc_calc_err : in STD_LOGIC;
    sig_data2rsc_slverr : in STD_LOGIC
  );
end amm_bridge_axi_datamover_rd_status_cntl;

architecture STRUCTURE of amm_bridge_axi_datamover_rd_status_cntl is
  signal sig_rd_sts_interr_reg0 : STD_LOGIC;
  signal sig_rd_sts_slverr_reg0 : STD_LOGIC;
  signal \^sig_rsc2stat_status\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  sig_rsc2stat_status(2 downto 0) <= \^sig_rsc2stat_status\(2 downto 0);
sig_rd_sts_decerr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_decerr_reg0,
      Q => \^sig_rsc2stat_status\(1),
      R => sig_rd_sts_tag_reg0
    );
sig_rd_sts_interr_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_rsc2stat_status\(0),
      I1 => sig_data2rsc_calc_err,
      O => sig_rd_sts_interr_reg0
    );
sig_rd_sts_interr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_interr_reg0,
      Q => \^sig_rsc2stat_status\(0),
      R => sig_rd_sts_tag_reg0
    );
sig_rd_sts_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_rd_sts_reg,
      D => '0',
      Q => sig_rsc2data_ready,
      S => sig_rd_sts_tag_reg0
    );
sig_rd_sts_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_rd_sts_reg,
      D => '1',
      Q => sig_rsc2stat_status_valid,
      R => sig_rd_sts_tag_reg0
    );
sig_rd_sts_slverr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_rsc2stat_status\(2),
      I1 => sig_data2rsc_slverr,
      O => sig_rd_sts_slverr_reg0
    );
sig_rd_sts_slverr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_slverr_reg0,
      Q => \^sig_rsc2stat_status\(2),
      R => sig_rd_sts_tag_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_axi_datamover_reset is
  port (
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : out STD_LOGIC;
    \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_0\ : out STD_LOGIC;
    \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_1\ : out STD_LOGIC;
    \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_2\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC;
    clk : in STD_LOGIC;
    sig_init_done : in STD_LOGIC;
    sig_init_reg : in STD_LOGIC;
    sig_init_reg2 : in STD_LOGIC;
    sig_init_done_0 : in STD_LOGIC;
    sig_init_done_1 : in STD_LOGIC
  );
end amm_bridge_axi_datamover_reset;

architecture STRUCTURE of amm_bridge_axi_datamover_reset is
  signal \^sig_cmd_stat_rst_user_reg_n_cdc_from_reg\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of sig_init_done_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sig_init_done_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sig_init_done_i_1__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of sig_mmap_reset_reg_i_1 : label is "soft_lutpair32";
begin
  sig_cmd_stat_rst_user_reg_n_cdc_from_reg <= \^sig_cmd_stat_rst_user_reg_n_cdc_from_reg\;
\sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => aresetn,
      Q => \^sig_cmd_stat_rst_user_reg_n_cdc_from_reg\,
      R => '0'
    );
sig_init_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^sig_cmd_stat_rst_user_reg_n_cdc_from_reg\,
      I1 => sig_init_done,
      I2 => sig_init_reg,
      I3 => sig_init_reg2,
      O => \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_0\
    );
\sig_init_done_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^sig_cmd_stat_rst_user_reg_n_cdc_from_reg\,
      I1 => sig_init_done_0,
      I2 => sig_init_reg,
      I3 => sig_init_reg2,
      O => \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_1\
    );
\sig_init_done_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^sig_cmd_stat_rst_user_reg_n_cdc_from_reg\,
      I1 => sig_init_done_1,
      I2 => sig_init_reg,
      I3 => sig_init_reg2,
      O => \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_2\
    );
sig_mmap_reset_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sig_cmd_stat_rst_user_reg_n_cdc_from_reg\,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_cntr_incr_decr_addn_f is
  port (
    fifo_full_p1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_dqual_reg_empty_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_clr_dqual_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0\ : out STD_LOGIC;
    \sig_addr_posted_cntr_eq_0__1\ : out STD_LOGIC;
    FIFO_Full_reg : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]_0\ : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]_1\ : in STD_LOGIC;
    sig_mstr2data_cmd_valid : in STD_LOGIC;
    sig_last_dbeat_reg : in STD_LOGIC;
    \sig_dbeat_cntr_reg[5]\ : in STD_LOGIC;
    sig_last_dbeat_reg_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    sig_dqual_reg_full : in STD_LOGIC;
    sig_next_calc_error_reg : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \sig_dbeat_cntr_reg[4]\ : in STD_LOGIC;
    sig_ld_new_cmd_reg : in STD_LOGIC;
    sig_dqual_reg_empty : in STD_LOGIC;
    sig_addr_posted_cntr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_data2rsc_valid : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    sig_rsc2stat_status_valid : in STD_LOGIC;
    sig_stat2rsc_status_ready : in STD_LOGIC;
    sig_last_dbeat : in STD_LOGIC;
    sig_next_sequential_reg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
end amm_bridge_cntr_incr_decr_addn_f;

architecture STRUCTURE of amm_bridge_cntr_incr_decr_addn_f is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^sig_addr_posted_cntr_eq_0__1\ : STD_LOGIC;
  signal \sig_addr_posted_cntr_max__1\ : STD_LOGIC;
  signal \^sig_dqual_reg_empty_reg\ : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg_i_3_n_0 : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg_i_4_n_0 : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg_i_5_n_0 : STD_LOGIC;
  signal sig_rd_empty : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FIFO_Full_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[1]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of avs_readdatavalid_s0_INST_0_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of sig_next_cmd_cmplt_reg_i_6 : label is "soft_lutpair26";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \sig_addr_posted_cntr_eq_0__1\ <= \^sig_addr_posted_cntr_eq_0__1\;
  sig_dqual_reg_empty_reg <= \^sig_dqual_reg_empty_reg\;
\FIFO_Full_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"21020000"
    )
        port map (
      I0 => \^q\(0),
      I1 => sig_rd_empty,
      I2 => \^sig_dqual_reg_empty_reg\,
      I3 => FIFO_Full_reg,
      I4 => \^q\(1),
      O => fifo_full_p1
    );
\INFERRED_GEN.cnt_i[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAA65559AAA9AAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \INFERRED_GEN.cnt_i_reg[0]_0\,
      I2 => \INFERRED_GEN.cnt_i_reg[0]_1\,
      I3 => sig_mstr2data_cmd_valid,
      I4 => sig_rd_empty,
      I5 => \^sig_dqual_reg_empty_reg\,
      O => addr_i_p1(0)
    );
\INFERRED_GEN.cnt_i[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66A6AA9A"
    )
        port map (
      I0 => \^q\(1),
      I1 => FIFO_Full_reg,
      I2 => \^sig_dqual_reg_empty_reg\,
      I3 => sig_rd_empty,
      I4 => \^q\(0),
      O => addr_i_p1(1)
    );
\INFERRED_GEN.cnt_i[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F017F80"
    )
        port map (
      I0 => \^q\(0),
      I1 => FIFO_Full_reg,
      I2 => \^q\(1),
      I3 => sig_rd_empty,
      I4 => \^sig_dqual_reg_empty_reg\,
      O => addr_i_p1(2)
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \^q\(0),
      S => SR(0)
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => addr_i_p1(1),
      Q => \^q\(1),
      S => SR(0)
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => addr_i_p1(2),
      Q => sig_rd_empty,
      S => SR(0)
    );
avs_readdatavalid_s0_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sig_addr_posted_cntr(0),
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_addr_posted_cntr(2),
      O => \^sig_addr_posted_cntr_eq_0__1\
    );
\sig_dbeat_cntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_last_dbeat_reg_0(0),
      I1 => sig_last_dbeat_reg_0(1),
      I2 => \^sig_dqual_reg_empty_reg\,
      I3 => \out\(0),
      O => D(0)
    );
\sig_dbeat_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA900A9"
    )
        port map (
      I0 => sig_last_dbeat_reg_0(2),
      I1 => sig_last_dbeat_reg_0(1),
      I2 => sig_last_dbeat_reg_0(0),
      I3 => \^sig_dqual_reg_empty_reg\,
      I4 => \out\(1),
      O => D(1)
    );
\sig_dbeat_cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA90000AAA9"
    )
        port map (
      I0 => sig_last_dbeat_reg_0(3),
      I1 => sig_last_dbeat_reg_0(0),
      I2 => sig_last_dbeat_reg_0(1),
      I3 => sig_last_dbeat_reg_0(2),
      I4 => \^sig_dqual_reg_empty_reg\,
      I5 => \out\(2),
      O => D(2)
    );
\sig_dbeat_cntr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_last_dbeat_reg_0(4),
      I1 => \sig_dbeat_cntr_reg[4]\,
      I2 => \^sig_dqual_reg_empty_reg\,
      I3 => \out\(3),
      O => D(3)
    );
\sig_dbeat_cntr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg[5]\,
      I1 => sig_last_dbeat_reg_0(5),
      I2 => \^sig_dqual_reg_empty_reg\,
      I3 => \out\(4),
      O => D(4)
    );
\sig_dbeat_cntr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC900C9"
    )
        port map (
      I0 => sig_last_dbeat_reg_0(5),
      I1 => sig_last_dbeat_reg_0(6),
      I2 => \sig_dbeat_cntr_reg[5]\,
      I3 => \^sig_dqual_reg_empty_reg\,
      I4 => \out\(5),
      O => D(5)
    );
\sig_dbeat_cntr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA8"
    )
        port map (
      I0 => sig_last_dbeat_reg,
      I1 => \sig_dbeat_cntr_reg[5]\,
      I2 => sig_last_dbeat_reg_0(7),
      I3 => sig_last_dbeat_reg_0(5),
      I4 => sig_last_dbeat_reg_0(6),
      I5 => \^sig_dqual_reg_empty_reg\,
      O => E(0)
    );
sig_ld_new_cmd_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      I1 => sig_ld_new_cmd_reg,
      I2 => \^sig_dqual_reg_empty_reg\,
      O => \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0\
    );
sig_next_cmd_cmplt_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00400000FFFFFFFF"
    )
        port map (
      I0 => \^sig_dqual_reg_empty_reg\,
      I1 => m_axi_rlast,
      I2 => sig_dqual_reg_full,
      I3 => sig_next_calc_error_reg,
      I4 => sig_last_dbeat_reg,
      I5 => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      O => sig_clr_dqual_reg
    );
sig_next_cmd_cmplt_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF200000"
    )
        port map (
      I0 => sig_next_cmd_cmplt_reg_i_3_n_0,
      I1 => \^sig_addr_posted_cntr_eq_0__1\,
      I2 => sig_next_cmd_cmplt_reg_i_4_n_0,
      I3 => sig_dqual_reg_empty,
      I4 => sig_next_cmd_cmplt_reg_i_5_n_0,
      I5 => \sig_addr_posted_cntr_max__1\,
      O => \^sig_dqual_reg_empty_reg\
    );
sig_next_cmd_cmplt_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sig_last_dbeat,
      I1 => sig_next_sequential_reg,
      O => sig_next_cmd_cmplt_reg_i_3_n_0
    );
sig_next_cmd_cmplt_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => sig_data2rsc_valid,
      I1 => m_axi_rvalid,
      I2 => sig_next_calc_error_reg,
      I3 => sig_dqual_reg_full,
      O => sig_next_cmd_cmplt_reg_i_4_n_0
    );
sig_next_cmd_cmplt_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1101"
    )
        port map (
      I0 => sig_next_calc_error_reg,
      I1 => sig_rd_empty,
      I2 => sig_rsc2stat_status_valid,
      I3 => sig_stat2rsc_status_ready,
      O => sig_next_cmd_cmplt_reg_i_5_n_0
    );
sig_next_cmd_cmplt_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sig_addr_posted_cntr(2),
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_addr_posted_cntr(0),
      O => \sig_addr_posted_cntr_max__1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_cntr_incr_decr_addn_f_0 is
  port (
    fifo_full_p1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_push_addr_reg1_out : out STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]_0\ : out STD_LOGIC;
    sig_addr_reg_empty : in STD_LOGIC;
    FIFO_Full_reg : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]_0\ : in STD_LOGIC;
    sig_mstr2addr_cmd_valid : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]_1\ : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of amm_bridge_cntr_incr_decr_addn_f_0 : entity is "cntr_incr_decr_addn_f";
end amm_bridge_cntr_incr_decr_addn_f_0;

architecture STRUCTURE of amm_bridge_cntr_incr_decr_addn_f_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^sig_push_addr_reg1_out\ : STD_LOGIC;
  signal sig_rd_empty : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FIFO_Full_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sig_next_addr_reg[31]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of sig_posted_to_axi_2_i_1 : label is "soft_lutpair1";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  sig_push_addr_reg1_out <= \^sig_push_addr_reg1_out\;
FIFO_Full_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"21020000"
    )
        port map (
      I0 => \^q\(0),
      I1 => sig_rd_empty,
      I2 => sig_addr_reg_empty,
      I3 => FIFO_Full_reg,
      I4 => \^q\(1),
      O => fifo_full_p1
    );
\INFERRED_GEN.cnt_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6A6A6A659A6A6A6"
    )
        port map (
      I0 => \^q\(0),
      I1 => sig_addr_reg_empty,
      I2 => sig_rd_empty,
      I3 => \INFERRED_GEN.cnt_i_reg[0]_0\,
      I4 => sig_mstr2addr_cmd_valid,
      I5 => \INFERRED_GEN.cnt_i_reg[0]_1\,
      O => addr_i_p1(0)
    );
\INFERRED_GEN.cnt_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA9AAA6555AAAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \INFERRED_GEN.cnt_i_reg[0]_1\,
      I2 => sig_mstr2addr_cmd_valid,
      I3 => \INFERRED_GEN.cnt_i_reg[0]_0\,
      I4 => \^sig_push_addr_reg1_out\,
      I5 => \^q\(0),
      O => addr_i_p1(1)
    );
\INFERRED_GEN.cnt_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F017F80"
    )
        port map (
      I0 => \^q\(0),
      I1 => FIFO_Full_reg,
      I2 => \^q\(1),
      I3 => sig_rd_empty,
      I4 => sig_addr_reg_empty,
      O => addr_i_p1(2)
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \^q\(0),
      S => SR(0)
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => addr_i_p1(1),
      Q => \^q\(1),
      S => SR(0)
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => addr_i_p1(2),
      Q => sig_rd_empty,
      S => SR(0)
    );
\sig_next_addr_reg[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_addr_reg_empty,
      I1 => sig_rd_empty,
      O => \^sig_push_addr_reg1_out\
    );
sig_posted_to_axi_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sig_rd_empty,
      I1 => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      I2 => sig_addr_reg_empty,
      O => \INFERRED_GEN.cnt_i_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_dynshreg_f is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_calc_error_reg_reg : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 42 downto 0 );
    sig_calc_error_reg_reg_0 : in STD_LOGIC;
    sig_mstr2addr_cmd_valid : in STD_LOGIC;
    sig_calc_error_reg_reg_1 : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 41 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC
  );
end amm_bridge_dynshreg_f;

architecture STRUCTURE of amm_bridge_dynshreg_f is
  signal \^fifo_full_reg\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 42 downto 0 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][11]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \INFERRED_GEN.data_reg[3][11]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][11]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][12]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][12]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][12]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][15]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][15]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][15]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][16]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][16]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][16]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][17]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][17]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][17]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][18]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][18]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][18]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][19]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][19]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][19]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][20]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][20]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][20]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][21]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][21]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][21]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][22]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][22]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][22]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][23]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][23]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][23]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][24]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][24]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][24]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][25]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][25]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][25]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][26]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][26]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][26]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][27]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][27]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][27]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][28]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][28]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][28]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][29]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][29]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][29]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][30]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][30]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][30]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][31]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][31]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][31]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][32]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][32]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][32]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][33]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][33]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][33]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][34]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][34]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][34]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][35]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][35]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][35]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][36]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][36]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][36]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][37]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][37]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][37]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][38]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][38]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][38]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][39]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][39]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][39]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][40]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][40]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][40]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][41]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][41]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][41]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][42]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][42]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][42]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][43]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][43]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][43]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][44]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][44]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][44]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][45]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][45]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][45]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][46]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][46]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][46]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][47]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][47]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][47]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][48]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][48]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][48]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][49]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][49]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][49]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][50]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][50]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][50]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][51]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][51]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][51]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][52]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][52]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][52]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][53]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][53]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][53]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][54]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][54]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][54]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][8]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][8]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][8]_srl4 ";
begin
  FIFO_Full_reg <= \^fifo_full_reg\;
  \out\(42 downto 0) <= \^out\(42 downto 0);
\INFERRED_GEN.data_reg[3][11]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(40),
      Q => \^out\(41)
    );
\INFERRED_GEN.data_reg[3][12]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => '1',
      Q => \^out\(40)
    );
\INFERRED_GEN.data_reg[3][15]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(39),
      Q => \^out\(39)
    );
\INFERRED_GEN.data_reg[3][16]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(38),
      Q => \^out\(38)
    );
\INFERRED_GEN.data_reg[3][17]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(37),
      Q => \^out\(37)
    );
\INFERRED_GEN.data_reg[3][18]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(36),
      Q => \^out\(36)
    );
\INFERRED_GEN.data_reg[3][19]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(35),
      Q => \^out\(35)
    );
\INFERRED_GEN.data_reg[3][20]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(34),
      Q => \^out\(34)
    );
\INFERRED_GEN.data_reg[3][21]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(33),
      Q => \^out\(33)
    );
\INFERRED_GEN.data_reg[3][22]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(32),
      Q => \^out\(32)
    );
\INFERRED_GEN.data_reg[3][23]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(31),
      Q => \^out\(31)
    );
\INFERRED_GEN.data_reg[3][24]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(30),
      Q => \^out\(30)
    );
\INFERRED_GEN.data_reg[3][25]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(29),
      Q => \^out\(29)
    );
\INFERRED_GEN.data_reg[3][26]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(28),
      Q => \^out\(28)
    );
\INFERRED_GEN.data_reg[3][27]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(27),
      Q => \^out\(27)
    );
\INFERRED_GEN.data_reg[3][28]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(26),
      Q => \^out\(26)
    );
\INFERRED_GEN.data_reg[3][29]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(25),
      Q => \^out\(25)
    );
\INFERRED_GEN.data_reg[3][30]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(24),
      Q => \^out\(24)
    );
\INFERRED_GEN.data_reg[3][31]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(23),
      Q => \^out\(23)
    );
\INFERRED_GEN.data_reg[3][32]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(22),
      Q => \^out\(22)
    );
\INFERRED_GEN.data_reg[3][33]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(21),
      Q => \^out\(21)
    );
\INFERRED_GEN.data_reg[3][34]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(20),
      Q => \^out\(20)
    );
\INFERRED_GEN.data_reg[3][35]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(19),
      Q => \^out\(19)
    );
\INFERRED_GEN.data_reg[3][36]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(18),
      Q => \^out\(18)
    );
\INFERRED_GEN.data_reg[3][37]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(17),
      Q => \^out\(17)
    );
\INFERRED_GEN.data_reg[3][38]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(16),
      Q => \^out\(16)
    );
\INFERRED_GEN.data_reg[3][39]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(15),
      Q => \^out\(15)
    );
\INFERRED_GEN.data_reg[3][40]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(14),
      Q => \^out\(14)
    );
\INFERRED_GEN.data_reg[3][41]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(13),
      Q => \^out\(13)
    );
\INFERRED_GEN.data_reg[3][42]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(12),
      Q => \^out\(12)
    );
\INFERRED_GEN.data_reg[3][43]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(11),
      Q => \^out\(11)
    );
\INFERRED_GEN.data_reg[3][44]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(10),
      Q => \^out\(10)
    );
\INFERRED_GEN.data_reg[3][45]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(9),
      Q => \^out\(9)
    );
\INFERRED_GEN.data_reg[3][46]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(8),
      Q => \^out\(8)
    );
\INFERRED_GEN.data_reg[3][47]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(7),
      Q => \^out\(7)
    );
\INFERRED_GEN.data_reg[3][48]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(6),
      Q => \^out\(6)
    );
\INFERRED_GEN.data_reg[3][49]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(5),
      Q => \^out\(5)
    );
\INFERRED_GEN.data_reg[3][50]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(4),
      Q => \^out\(4)
    );
\INFERRED_GEN.data_reg[3][51]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(3),
      Q => \^out\(3)
    );
\INFERRED_GEN.data_reg[3][52]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(2),
      Q => \^out\(2)
    );
\INFERRED_GEN.data_reg[3][53]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(1),
      Q => \^out\(1)
    );
\INFERRED_GEN.data_reg[3][54]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(0),
      Q => \^out\(0)
    );
\INFERRED_GEN.data_reg[3][54]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sig_calc_error_reg_reg_0,
      I1 => sig_mstr2addr_cmd_valid,
      I2 => sig_calc_error_reg_reg_1,
      O => \^fifo_full_reg\
    );
\INFERRED_GEN.data_reg[3][8]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(41),
      Q => \^out\(42)
    );
sig_addr_valid_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(42),
      O => sig_calc_error_reg_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \amm_bridge_dynshreg_f__parameterized0\ is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_dqual_reg_empty_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sig_next_calc_error_reg_reg : in STD_LOGIC;
    sig_next_calc_error_reg_reg_0 : in STD_LOGIC;
    sig_mstr2data_cmd_valid : in STD_LOGIC;
    \sig_dbeat_cntr_reg[0]\ : in STD_LOGIC;
    sig_last_dbeat_reg : in STD_LOGIC;
    sig_last_dbeat_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_dbeat_cntr_reg[7]\ : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    sig_next_calc_error_reg_reg_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \amm_bridge_dynshreg_f__parameterized0\ : entity is "dynshreg_f";
end \amm_bridge_dynshreg_f__parameterized0\;

architecture STRUCTURE of \amm_bridge_dynshreg_f__parameterized0\ is
  signal \^fifo_full_reg\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal sig_cmd_fifo_data_out : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal sig_last_dbeat_i_2_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_4_n_0 : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][2]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \INFERRED_GEN.data_reg[3][2]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][2]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][39]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][39]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][39]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][3]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][3]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][3]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][40]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][40]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][40]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][41]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][41]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][41]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][42]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][42]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][42]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][43]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][43]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][43]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][44]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][44]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][44]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][45]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][45]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][45]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][46]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][46]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][46]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][4]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][4]_srl4\ : label is "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][4]_srl4 ";
begin
  FIFO_Full_reg <= \^fifo_full_reg\;
  \out\(8 downto 0) <= \^out\(8 downto 0);
\INFERRED_GEN.data_reg[3][2]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => sig_next_calc_error_reg_reg_1(0),
      A1 => sig_next_calc_error_reg_reg_1(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(10),
      Q => \^out\(8)
    );
\INFERRED_GEN.data_reg[3][39]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => sig_next_calc_error_reg_reg_1(0),
      A1 => sig_next_calc_error_reg_reg_1(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(7),
      Q => sig_cmd_fifo_data_out(15)
    );
\INFERRED_GEN.data_reg[3][3]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => sig_next_calc_error_reg_reg_1(0),
      A1 => sig_next_calc_error_reg_reg_1(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(9),
      Q => \^out\(7)
    );
\INFERRED_GEN.data_reg[3][40]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => sig_next_calc_error_reg_reg_1(0),
      A1 => sig_next_calc_error_reg_reg_1(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(6),
      Q => \^out\(5)
    );
\INFERRED_GEN.data_reg[3][41]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => sig_next_calc_error_reg_reg_1(0),
      A1 => sig_next_calc_error_reg_reg_1(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(5),
      Q => \^out\(4)
    );
\INFERRED_GEN.data_reg[3][42]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => sig_next_calc_error_reg_reg_1(0),
      A1 => sig_next_calc_error_reg_reg_1(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(4),
      Q => \^out\(3)
    );
\INFERRED_GEN.data_reg[3][43]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => sig_next_calc_error_reg_reg_1(0),
      A1 => sig_next_calc_error_reg_reg_1(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(3),
      Q => \^out\(2)
    );
\INFERRED_GEN.data_reg[3][44]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => sig_next_calc_error_reg_reg_1(0),
      A1 => sig_next_calc_error_reg_reg_1(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(2),
      Q => \^out\(1)
    );
\INFERRED_GEN.data_reg[3][45]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => sig_next_calc_error_reg_reg_1(0),
      A1 => sig_next_calc_error_reg_reg_1(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(1),
      Q => \^out\(0)
    );
\INFERRED_GEN.data_reg[3][46]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => sig_next_calc_error_reg_reg_1(0),
      A1 => sig_next_calc_error_reg_reg_1(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(0),
      Q => sig_cmd_fifo_data_out(8)
    );
\INFERRED_GEN.data_reg[3][46]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sig_next_calc_error_reg_reg,
      I1 => sig_next_calc_error_reg_reg_0,
      I2 => sig_mstr2data_cmd_valid,
      O => \^fifo_full_reg\
    );
\INFERRED_GEN.data_reg[3][4]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => sig_next_calc_error_reg_reg_1(0),
      A1 => sig_next_calc_error_reg_reg_1(1),
      A2 => '0',
      A3 => '0',
      CE => \^fifo_full_reg\,
      CLK => clk,
      D => \in\(8),
      Q => \^out\(6)
    );
\sig_dbeat_cntr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => sig_cmd_fifo_data_out(8),
      I1 => \sig_dbeat_cntr_reg[0]\,
      I2 => Q(0),
      O => D(0)
    );
\sig_dbeat_cntr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => sig_cmd_fifo_data_out(15),
      I1 => \sig_dbeat_cntr_reg[0]\,
      I2 => Q(1),
      I3 => Q(2),
      I4 => \sig_dbeat_cntr_reg[7]\,
      I5 => Q(3),
      O => D(1)
    );
sig_last_dbeat_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => sig_last_dbeat_i_2_n_0,
      I1 => \sig_dbeat_cntr_reg[0]\,
      I2 => sig_last_dbeat_reg,
      I3 => sig_last_dbeat_reg_0,
      O => sig_dqual_reg_empty_reg
    );
sig_last_dbeat_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \^out\(3),
      I1 => \^out\(4),
      I2 => \^out\(5),
      I3 => sig_cmd_fifo_data_out(15),
      I4 => sig_last_dbeat_i_4_n_0,
      O => sig_last_dbeat_i_2_n_0
    );
sig_last_dbeat_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^out\(0),
      I1 => sig_cmd_fifo_data_out(8),
      I2 => \^out\(2),
      I3 => \^out\(1),
      O => sig_last_dbeat_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_amm_axi_bridge_v1_0_4_read_multi is
  port (
    mm2s_cmd_valid : out STD_LOGIC;
    avs_waitrequest_s0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 42 downto 0 );
    clk : in STD_LOGIC;
    mm2s_cmd_ready : in STD_LOGIC;
    avs_read_s0 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    avs_burstcount_s0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    avs_address_s0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end amm_bridge_amm_axi_bridge_v1_0_4_read_multi;

architecture STRUCTURE of amm_bridge_amm_axi_bridge_v1_0_4_read_multi is
begin
read_single_top_1: entity work.amm_bridge_amm_axi_bridge_v1_0_4_read_top
     port map (
      D(42 downto 0) => D(42 downto 0),
      E(0) => E(0),
      aresetn => aresetn,
      avs_address_s0(31 downto 0) => avs_address_s0(31 downto 0),
      avs_burstcount_s0(10 downto 0) => avs_burstcount_s0(10 downto 0),
      avs_read_s0 => avs_read_s0,
      avs_waitrequest_s0 => avs_waitrequest_s0,
      clk => clk,
      mm2s_cmd_ready => mm2s_cmd_ready,
      mm2s_cmd_valid => mm2s_cmd_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_axi_datamover_cmd_status is
  port (
    sig_init_done : out STD_LOGIC;
    sig_cmd2mstr_cmd_valid : out STD_LOGIC;
    mm2s_cmd_ready : out STD_LOGIC;
    sig_init_done_0 : out STD_LOGIC;
    read_error_valid : out STD_LOGIC;
    sig_stat2rsc_status_ready : out STD_LOGIC;
    read_error : out STD_LOGIC;
    sig_rd_sts_tag_reg0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 43 downto 0 );
    sig_init_done_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_init_done_reg_0 : in STD_LOGIC;
    sig_rsc2stat_status_valid : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    mm2s_cmd_valid : in STD_LOGIC;
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 42 downto 0 );
    sig_rsc2stat_status : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end amm_bridge_axi_datamover_cmd_status;

architecture STRUCTURE of amm_bridge_axi_datamover_cmd_status is
begin
\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO\: entity work.\amm_bridge_axi_datamover_fifo__parameterized0\
     port map (
      SR(0) => SR(0),
      \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0\ => sig_stat2rsc_status_ready,
      aresetn => aresetn,
      clk => clk,
      read_error => read_error,
      read_error_valid => read_error_valid,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      sig_init_done_0 => sig_init_done_0,
      sig_init_done_reg_0 => sig_init_done_reg_0,
      sig_rd_sts_tag_reg0 => sig_rd_sts_tag_reg0,
      sig_rsc2stat_status(2 downto 0) => sig_rsc2stat_status(2 downto 0),
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid
    );
I_CMD_FIFO: entity work.amm_bridge_axi_datamover_fifo
     port map (
      D(42 downto 0) => D(42 downto 0),
      E(0) => E(0),
      Q(43 downto 0) => Q(43 downto 0),
      SR(0) => SR(0),
      \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0\ => \USE_SINGLE_REG.sig_regfifo_empty_reg_reg\,
      \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0\ => \USE_SINGLE_REG.sig_regfifo_full_reg_reg\,
      clk => clk,
      mm2s_cmd_ready => mm2s_cmd_ready,
      mm2s_cmd_valid => mm2s_cmd_valid,
      sig_cmd2mstr_cmd_valid => sig_cmd2mstr_cmd_valid,
      sig_init_done => sig_init_done,
      sig_init_done_reg_0 => sig_init_done_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_srl_fifo_rbu_f is
  port (
    FIFO_Full_reg_0 : out STD_LOGIC;
    sel : out STD_LOGIC;
    sig_push_addr_reg1_out : out STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]\ : out STD_LOGIC;
    sig_calc_error_reg_reg : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 42 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    sig_addr_reg_empty : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]\ : in STD_LOGIC;
    sig_mstr2addr_cmd_valid : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 41 downto 0 )
  );
end amm_bridge_srl_fifo_rbu_f;

architecture STRUCTURE of amm_bridge_srl_fifo_rbu_f is
  signal CNTR_INCR_DECR_ADDN_F_I_n_1 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal \^fifo_full_reg_0\ : STD_LOGIC;
  signal fifo_full_p1 : STD_LOGIC;
  signal \^sel\ : STD_LOGIC;
begin
  FIFO_Full_reg_0 <= \^fifo_full_reg_0\;
  sel <= \^sel\;
CNTR_INCR_DECR_ADDN_F_I: entity work.amm_bridge_cntr_incr_decr_addn_f_0
     port map (
      FIFO_Full_reg => \^sel\,
      \INFERRED_GEN.cnt_i_reg[0]_0\ => \INFERRED_GEN.cnt_i_reg[0]\,
      \INFERRED_GEN.cnt_i_reg[0]_1\ => \^fifo_full_reg_0\,
      \INFERRED_GEN.cnt_i_reg[2]_0\ => \INFERRED_GEN.cnt_i_reg[2]\,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      SR(0) => SR(0),
      clk => clk,
      fifo_full_p1 => fifo_full_p1,
      sig_addr_reg_empty => sig_addr_reg_empty,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid,
      sig_push_addr_reg1_out => sig_push_addr_reg1_out
    );
DYNSHREG_F_I: entity work.amm_bridge_dynshreg_f
     port map (
      FIFO_Full_reg => \^sel\,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      clk => clk,
      \in\(41 downto 0) => \in\(41 downto 0),
      \out\(42 downto 0) => \out\(42 downto 0),
      sig_calc_error_reg_reg => sig_calc_error_reg_reg,
      sig_calc_error_reg_reg_0 => \^fifo_full_reg_0\,
      sig_calc_error_reg_reg_1 => \INFERRED_GEN.cnt_i_reg[0]\,
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fifo_full_p1,
      Q => \^fifo_full_reg_0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \amm_bridge_srl_fifo_rbu_f__parameterized0\ is
  port (
    FIFO_Full_reg_0 : out STD_LOGIC;
    sig_dqual_reg_empty_reg : out STD_LOGIC;
    sel : out STD_LOGIC;
    sig_dqual_reg_empty_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_clr_dqual_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0\ : out STD_LOGIC;
    \sig_addr_posted_cntr_eq_0__1\ : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]\ : in STD_LOGIC;
    sig_mstr2data_cmd_valid : in STD_LOGIC;
    sig_last_dbeat_reg : in STD_LOGIC;
    sig_last_dbeat_reg_0 : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    sig_dqual_reg_full : in STD_LOGIC;
    sig_next_calc_error_reg : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : in STD_LOGIC;
    \sig_dbeat_cntr_reg[4]\ : in STD_LOGIC;
    sig_ld_new_cmd_reg : in STD_LOGIC;
    sig_dqual_reg_empty : in STD_LOGIC;
    sig_addr_posted_cntr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_data2rsc_valid : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    sig_rsc2stat_status_valid : in STD_LOGIC;
    sig_stat2rsc_status_ready : in STD_LOGIC;
    sig_last_dbeat : in STD_LOGIC;
    sig_next_sequential_reg : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \amm_bridge_srl_fifo_rbu_f__parameterized0\ : entity is "srl_fifo_rbu_f";
end \amm_bridge_srl_fifo_rbu_f__parameterized0\;

architecture STRUCTURE of \amm_bridge_srl_fifo_rbu_f__parameterized0\ is
  signal CNTR_INCR_DECR_ADDN_F_I_n_1 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal \^fifo_full_reg_0\ : STD_LOGIC;
  signal fifo_full_p1 : STD_LOGIC;
  signal \^sel\ : STD_LOGIC;
  signal sig_cmd_fifo_data_out : STD_LOGIC_VECTOR ( 14 downto 9 );
  signal \^sig_dqual_reg_empty_reg\ : STD_LOGIC;
begin
  FIFO_Full_reg_0 <= \^fifo_full_reg_0\;
  sel <= \^sel\;
  sig_dqual_reg_empty_reg <= \^sig_dqual_reg_empty_reg\;
CNTR_INCR_DECR_ADDN_F_I: entity work.amm_bridge_cntr_incr_decr_addn_f
     port map (
      D(5 downto 0) => D(6 downto 1),
      E(0) => E(0),
      FIFO_Full_reg => \^sel\,
      \INFERRED_GEN.cnt_i_reg[0]_0\ => \^fifo_full_reg_0\,
      \INFERRED_GEN.cnt_i_reg[0]_1\ => \INFERRED_GEN.cnt_i_reg[0]\,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      SR(0) => SR(0),
      clk => clk,
      fifo_full_p1 => fifo_full_p1,
      m_axi_rlast => m_axi_rlast,
      m_axi_rvalid => m_axi_rvalid,
      \out\(5 downto 0) => sig_cmd_fifo_data_out(14 downto 9),
      sig_addr_posted_cntr(2 downto 0) => sig_addr_posted_cntr(2 downto 0),
      \sig_addr_posted_cntr_eq_0__1\ => \sig_addr_posted_cntr_eq_0__1\,
      sig_clr_dqual_reg => sig_clr_dqual_reg,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0\ => \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0\,
      sig_data2rsc_valid => sig_data2rsc_valid,
      \sig_dbeat_cntr_reg[4]\ => \sig_dbeat_cntr_reg[4]\,
      \sig_dbeat_cntr_reg[5]\ => \sig_dbeat_cntr_reg[7]\,
      sig_dqual_reg_empty => sig_dqual_reg_empty,
      sig_dqual_reg_empty_reg => \^sig_dqual_reg_empty_reg\,
      sig_dqual_reg_full => sig_dqual_reg_full,
      sig_last_dbeat => sig_last_dbeat,
      sig_last_dbeat_reg => sig_last_dbeat_reg_0,
      sig_last_dbeat_reg_0(7 downto 0) => Q(7 downto 0),
      sig_ld_new_cmd_reg => sig_ld_new_cmd_reg,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_next_calc_error_reg => sig_next_calc_error_reg,
      sig_next_sequential_reg => sig_next_sequential_reg,
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid,
      sig_stat2rsc_status_ready => sig_stat2rsc_status_ready
    );
DYNSHREG_F_I: entity work.\amm_bridge_dynshreg_f__parameterized0\
     port map (
      D(1) => D(7),
      D(0) => D(0),
      FIFO_Full_reg => \^sel\,
      Q(3 downto 1) => Q(7 downto 5),
      Q(0) => Q(0),
      clk => clk,
      \in\(10 downto 0) => \in\(10 downto 0),
      \out\(8 downto 6) => \out\(2 downto 0),
      \out\(5 downto 0) => sig_cmd_fifo_data_out(14 downto 9),
      \sig_dbeat_cntr_reg[0]\ => \^sig_dqual_reg_empty_reg\,
      \sig_dbeat_cntr_reg[7]\ => \sig_dbeat_cntr_reg[7]\,
      sig_dqual_reg_empty_reg => sig_dqual_reg_empty_reg_0,
      sig_last_dbeat_reg => sig_last_dbeat_reg,
      sig_last_dbeat_reg_0 => sig_last_dbeat_reg_0,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_next_calc_error_reg_reg => \^fifo_full_reg_0\,
      sig_next_calc_error_reg_reg_0 => \INFERRED_GEN.cnt_i_reg[0]\,
      sig_next_calc_error_reg_reg_1(1) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      sig_next_calc_error_reg_reg_1(0) => CNTR_INCR_DECR_ADDN_F_I_n_2
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fifo_full_p1,
      Q => \^fifo_full_reg_0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_srl_fifo_f is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    FIFO_Full_reg_0 : out STD_LOGIC;
    sig_push_addr_reg1_out : out STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]\ : out STD_LOGIC;
    sig_calc_error_reg_reg : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 42 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    sig_addr_reg_empty : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]\ : in STD_LOGIC;
    sig_mstr2addr_cmd_valid : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 41 downto 0 )
  );
end amm_bridge_srl_fifo_f;

architecture STRUCTURE of amm_bridge_srl_fifo_f is
begin
I_SRL_FIFO_RBU_F: entity work.amm_bridge_srl_fifo_rbu_f
     port map (
      FIFO_Full_reg_0 => FIFO_Full_reg,
      \INFERRED_GEN.cnt_i_reg[0]\ => \INFERRED_GEN.cnt_i_reg[0]\,
      \INFERRED_GEN.cnt_i_reg[2]\ => \INFERRED_GEN.cnt_i_reg[2]\,
      SR(0) => SR(0),
      clk => clk,
      \in\(41 downto 0) => \in\(41 downto 0),
      \out\(42 downto 0) => \out\(42 downto 0),
      sel => FIFO_Full_reg_0,
      sig_addr_reg_empty => sig_addr_reg_empty,
      sig_calc_error_reg_reg => sig_calc_error_reg_reg,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid,
      sig_push_addr_reg1_out => sig_push_addr_reg1_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \amm_bridge_srl_fifo_f__parameterized0\ is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_dqual_reg_empty_reg : out STD_LOGIC;
    FIFO_Full_reg_0 : out STD_LOGIC;
    sig_dqual_reg_empty_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_clr_dqual_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0\ : out STD_LOGIC;
    \sig_addr_posted_cntr_eq_0__1\ : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]\ : in STD_LOGIC;
    sig_mstr2data_cmd_valid : in STD_LOGIC;
    sig_last_dbeat_reg : in STD_LOGIC;
    sig_last_dbeat_reg_0 : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    sig_dqual_reg_full : in STD_LOGIC;
    sig_next_calc_error_reg : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : in STD_LOGIC;
    \sig_dbeat_cntr_reg[4]\ : in STD_LOGIC;
    sig_ld_new_cmd_reg : in STD_LOGIC;
    sig_dqual_reg_empty : in STD_LOGIC;
    sig_addr_posted_cntr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_data2rsc_valid : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    sig_rsc2stat_status_valid : in STD_LOGIC;
    sig_stat2rsc_status_ready : in STD_LOGIC;
    sig_last_dbeat : in STD_LOGIC;
    sig_next_sequential_reg : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \amm_bridge_srl_fifo_f__parameterized0\ : entity is "srl_fifo_f";
end \amm_bridge_srl_fifo_f__parameterized0\;

architecture STRUCTURE of \amm_bridge_srl_fifo_f__parameterized0\ is
begin
I_SRL_FIFO_RBU_F: entity work.\amm_bridge_srl_fifo_rbu_f__parameterized0\
     port map (
      D(7 downto 0) => D(7 downto 0),
      E(0) => E(0),
      FIFO_Full_reg_0 => FIFO_Full_reg,
      \INFERRED_GEN.cnt_i_reg[0]\ => \INFERRED_GEN.cnt_i_reg[0]\,
      Q(7 downto 0) => Q(7 downto 0),
      SR(0) => SR(0),
      clk => clk,
      \in\(10 downto 0) => \in\(10 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rvalid => m_axi_rvalid,
      \out\(2 downto 0) => \out\(2 downto 0),
      sel => FIFO_Full_reg_0,
      sig_addr_posted_cntr(2 downto 0) => sig_addr_posted_cntr(2 downto 0),
      \sig_addr_posted_cntr_eq_0__1\ => \sig_addr_posted_cntr_eq_0__1\,
      sig_clr_dqual_reg => sig_clr_dqual_reg,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0\ => \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0\,
      sig_data2rsc_valid => sig_data2rsc_valid,
      \sig_dbeat_cntr_reg[4]\ => \sig_dbeat_cntr_reg[4]\,
      \sig_dbeat_cntr_reg[7]\ => \sig_dbeat_cntr_reg[7]\,
      sig_dqual_reg_empty => sig_dqual_reg_empty,
      sig_dqual_reg_empty_reg => sig_dqual_reg_empty_reg,
      sig_dqual_reg_empty_reg_0 => sig_dqual_reg_empty_reg_0,
      sig_dqual_reg_full => sig_dqual_reg_full,
      sig_last_dbeat => sig_last_dbeat,
      sig_last_dbeat_reg => sig_last_dbeat_reg,
      sig_last_dbeat_reg_0 => sig_last_dbeat_reg_0,
      sig_ld_new_cmd_reg => sig_ld_new_cmd_reg,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_next_calc_error_reg => sig_next_calc_error_reg,
      sig_next_sequential_reg => sig_next_sequential_reg,
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid,
      sig_stat2rsc_status_ready => sig_stat2rsc_status_ready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \amm_bridge_axi_datamover_fifo__parameterized1\ is
  port (
    sig_init_reg2 : out STD_LOGIC;
    FIFO_Full_reg : out STD_LOGIC;
    sig_inhibit_rdy_n_reg_0 : out STD_LOGIC;
    sel : out STD_LOGIC;
    sig_push_addr_reg1_out : out STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]\ : out STD_LOGIC;
    sig_calc_error_reg_reg : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 42 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_init_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : in STD_LOGIC;
    sig_addr_reg_empty : in STD_LOGIC;
    sig_mstr2addr_cmd_valid : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 41 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \amm_bridge_axi_datamover_fifo__parameterized1\ : entity is "axi_datamover_fifo";
end \amm_bridge_axi_datamover_fifo__parameterized1\;

architecture STRUCTURE of \amm_bridge_axi_datamover_fifo__parameterized1\ is
  signal \sig_inhibit_rdy_n_i_1__0_n_0\ : STD_LOGIC;
  signal \^sig_inhibit_rdy_n_reg_0\ : STD_LOGIC;
  signal sig_init_done : STD_LOGIC;
  signal \sig_init_done_i_1__2_n_0\ : STD_LOGIC;
  signal \^sig_init_reg2\ : STD_LOGIC;
begin
  sig_inhibit_rdy_n_reg_0 <= \^sig_inhibit_rdy_n_reg_0\;
  sig_init_reg2 <= \^sig_init_reg2\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.amm_bridge_srl_fifo_f
     port map (
      FIFO_Full_reg => FIFO_Full_reg,
      FIFO_Full_reg_0 => sel,
      \INFERRED_GEN.cnt_i_reg[0]\ => \^sig_inhibit_rdy_n_reg_0\,
      \INFERRED_GEN.cnt_i_reg[2]\ => \INFERRED_GEN.cnt_i_reg[2]\,
      SR(0) => SR(0),
      clk => clk,
      \in\(41 downto 0) => \in\(41 downto 0),
      \out\(42 downto 0) => \out\(42 downto 0),
      sig_addr_reg_empty => sig_addr_reg_empty,
      sig_calc_error_reg_reg => sig_calc_error_reg_reg,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid,
      sig_push_addr_reg1_out => sig_push_addr_reg1_out
    );
\sig_inhibit_rdy_n_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_init_done,
      I1 => \^sig_inhibit_rdy_n_reg_0\,
      O => \sig_inhibit_rdy_n_i_1__0_n_0\
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \sig_inhibit_rdy_n_i_1__0_n_0\,
      Q => \^sig_inhibit_rdy_n_reg_0\,
      R => SR(0)
    );
\sig_init_done_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      I1 => sig_init_done,
      I2 => sig_init_reg,
      I3 => \^sig_init_reg2\,
      O => \sig_init_done_i_1__2_n_0\
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \sig_init_done_i_1__2_n_0\,
      Q => sig_init_done,
      R => '0'
    );
sig_init_reg2_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_init_reg,
      Q => \^sig_init_reg2\,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \amm_bridge_axi_datamover_fifo__parameterized2\ is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_init_done : out STD_LOGIC;
    sig_inhibit_rdy_n_reg_0 : out STD_LOGIC;
    sig_push_dqual_reg : out STD_LOGIC;
    sel : out STD_LOGIC;
    sig_dqual_reg_empty_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_clr_dqual_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \out\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0\ : out STD_LOGIC;
    \sig_addr_posted_cntr_eq_0__1\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    sig_init_done_reg_0 : in STD_LOGIC;
    sig_mstr2data_cmd_valid : in STD_LOGIC;
    sig_last_dbeat_reg : in STD_LOGIC;
    sig_last_dbeat_reg_0 : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    sig_dqual_reg_full : in STD_LOGIC;
    sig_next_calc_error_reg : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : in STD_LOGIC;
    \sig_dbeat_cntr_reg[4]\ : in STD_LOGIC;
    sig_ld_new_cmd_reg : in STD_LOGIC;
    sig_dqual_reg_empty : in STD_LOGIC;
    sig_addr_posted_cntr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_data2rsc_valid : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    sig_rsc2stat_status_valid : in STD_LOGIC;
    sig_stat2rsc_status_ready : in STD_LOGIC;
    sig_last_dbeat : in STD_LOGIC;
    sig_next_sequential_reg : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \amm_bridge_axi_datamover_fifo__parameterized2\ : entity is "axi_datamover_fifo";
end \amm_bridge_axi_datamover_fifo__parameterized2\;

architecture STRUCTURE of \amm_bridge_axi_datamover_fifo__parameterized2\ is
  signal sig_inhibit_rdy_n_i_1_n_0 : STD_LOGIC;
  signal \^sig_inhibit_rdy_n_reg_0\ : STD_LOGIC;
  signal \^sig_init_done\ : STD_LOGIC;
begin
  sig_inhibit_rdy_n_reg_0 <= \^sig_inhibit_rdy_n_reg_0\;
  sig_init_done <= \^sig_init_done\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.\amm_bridge_srl_fifo_f__parameterized0\
     port map (
      D(7 downto 0) => D(7 downto 0),
      E(0) => E(0),
      FIFO_Full_reg => FIFO_Full_reg,
      FIFO_Full_reg_0 => sel,
      \INFERRED_GEN.cnt_i_reg[0]\ => \^sig_inhibit_rdy_n_reg_0\,
      Q(7 downto 0) => Q(7 downto 0),
      SR(0) => SR(0),
      clk => clk,
      \in\(10 downto 0) => \in\(10 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rvalid => m_axi_rvalid,
      \out\(2 downto 0) => \out\(2 downto 0),
      sig_addr_posted_cntr(2 downto 0) => sig_addr_posted_cntr(2 downto 0),
      \sig_addr_posted_cntr_eq_0__1\ => \sig_addr_posted_cntr_eq_0__1\,
      sig_clr_dqual_reg => sig_clr_dqual_reg,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0\ => \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0\,
      sig_data2rsc_valid => sig_data2rsc_valid,
      \sig_dbeat_cntr_reg[4]\ => \sig_dbeat_cntr_reg[4]\,
      \sig_dbeat_cntr_reg[7]\ => \sig_dbeat_cntr_reg[7]\,
      sig_dqual_reg_empty => sig_dqual_reg_empty,
      sig_dqual_reg_empty_reg => sig_push_dqual_reg,
      sig_dqual_reg_empty_reg_0 => sig_dqual_reg_empty_reg,
      sig_dqual_reg_full => sig_dqual_reg_full,
      sig_last_dbeat => sig_last_dbeat,
      sig_last_dbeat_reg => sig_last_dbeat_reg,
      sig_last_dbeat_reg_0 => sig_last_dbeat_reg_0,
      sig_ld_new_cmd_reg => sig_ld_new_cmd_reg,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_next_calc_error_reg => sig_next_calc_error_reg,
      sig_next_sequential_reg => sig_next_sequential_reg,
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid,
      sig_stat2rsc_status_ready => sig_stat2rsc_status_ready
    );
sig_inhibit_rdy_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_init_done\,
      I1 => \^sig_inhibit_rdy_n_reg_0\,
      O => sig_inhibit_rdy_n_i_1_n_0
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_inhibit_rdy_n_i_1_n_0,
      Q => \^sig_inhibit_rdy_n_reg_0\,
      R => SR(0)
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_init_done_reg_0,
      Q => \^sig_init_done\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_axi_datamover_addr_cntl is
  port (
    \out\ : out STD_LOGIC;
    sig_init_reg2 : out STD_LOGIC;
    FIFO_Full_reg : out STD_LOGIC;
    m_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    sig_inhibit_rdy_n : out STD_LOGIC;
    sig_wr_fifo : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_init_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : in STD_LOGIC;
    sig_mstr2addr_cmd_valid : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 41 downto 0 )
  );
end amm_bridge_axi_datamover_addr_cntl;

architecture STRUCTURE of amm_bridge_axi_datamover_addr_cntl is
  signal \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_5\ : STD_LOGIC;
  signal \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_6\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 50 downto 4 );
  signal sig_addr2rsc_calc_error : STD_LOGIC;
  signal sig_addr_reg_empty : STD_LOGIC;
  signal sig_addr_reg_full : STD_LOGIC;
  signal sig_next_addr_reg0 : STD_LOGIC;
  signal sig_posted_to_axi : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_posted_to_axi : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_posted_to_axi : signal is "no";
  signal sig_posted_to_axi_2 : STD_LOGIC;
  attribute RTL_KEEP of sig_posted_to_axi_2 : signal is "true";
  attribute equivalent_register_removal of sig_posted_to_axi_2 : signal is "no";
  signal sig_push_addr_reg1_out : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of sig_posted_to_axi_2_reg : label is "yes";
  attribute equivalent_register_removal of sig_posted_to_axi_2_reg : label is "no";
  attribute KEEP of sig_posted_to_axi_reg : label is "yes";
  attribute equivalent_register_removal of sig_posted_to_axi_reg : label is "no";
begin
  \out\ <= sig_posted_to_axi;
\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO\: entity work.\amm_bridge_axi_datamover_fifo__parameterized1\
     port map (
      FIFO_Full_reg => FIFO_Full_reg,
      \INFERRED_GEN.cnt_i_reg[2]\ => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_5\,
      SR(0) => SR(0),
      clk => clk,
      \in\(41 downto 0) => \in\(41 downto 0),
      \out\(42) => p_1_out(50),
      \out\(41 downto 40) => p_1_out(47 downto 46),
      \out\(39 downto 0) => p_1_out(43 downto 4),
      sel => sig_wr_fifo,
      sig_addr_reg_empty => sig_addr_reg_empty,
      sig_calc_error_reg_reg => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_6\,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      sig_inhibit_rdy_n_reg_0 => sig_inhibit_rdy_n,
      sig_init_reg => sig_init_reg,
      sig_init_reg2 => sig_init_reg2,
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid,
      sig_push_addr_reg1_out => sig_push_addr_reg1_out
    );
sig_addr_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => '0',
      Q => sig_addr_reg_empty,
      S => sig_next_addr_reg0
    );
sig_addr_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => '1',
      Q => sig_addr_reg_full,
      R => sig_next_addr_reg0
    );
sig_addr_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_6\,
      Q => m_axi_arvalid,
      R => sig_next_addr_reg0
    );
sig_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(50),
      Q => sig_addr2rsc_calc_error,
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FF"
    )
        port map (
      I0 => m_axi_arready,
      I1 => sig_addr_reg_full,
      I2 => sig_addr2rsc_calc_error,
      I3 => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      O => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(4),
      Q => m_axi_araddr(0),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(14),
      Q => m_axi_araddr(10),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(15),
      Q => m_axi_araddr(11),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(16),
      Q => m_axi_araddr(12),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(17),
      Q => m_axi_araddr(13),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(18),
      Q => m_axi_araddr(14),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(19),
      Q => m_axi_araddr(15),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(20),
      Q => m_axi_araddr(16),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(21),
      Q => m_axi_araddr(17),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(22),
      Q => m_axi_araddr(18),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(23),
      Q => m_axi_araddr(19),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(5),
      Q => m_axi_araddr(1),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(24),
      Q => m_axi_araddr(20),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(25),
      Q => m_axi_araddr(21),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(26),
      Q => m_axi_araddr(22),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(27),
      Q => m_axi_araddr(23),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(28),
      Q => m_axi_araddr(24),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(29),
      Q => m_axi_araddr(25),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(30),
      Q => m_axi_araddr(26),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(31),
      Q => m_axi_araddr(27),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(32),
      Q => m_axi_araddr(28),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(33),
      Q => m_axi_araddr(29),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(6),
      Q => m_axi_araddr(2),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(34),
      Q => m_axi_araddr(30),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(35),
      Q => m_axi_araddr(31),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(7),
      Q => m_axi_araddr(3),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(8),
      Q => m_axi_araddr(4),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(9),
      Q => m_axi_araddr(5),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(10),
      Q => m_axi_araddr(6),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(11),
      Q => m_axi_araddr(7),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(12),
      Q => m_axi_araddr(8),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(13),
      Q => m_axi_araddr(9),
      R => sig_next_addr_reg0
    );
\sig_next_burst_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(47),
      Q => m_axi_arburst(0),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(36),
      Q => m_axi_arlen(0),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(37),
      Q => m_axi_arlen(1),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(38),
      Q => m_axi_arlen(2),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(39),
      Q => m_axi_arlen(3),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(40),
      Q => m_axi_arlen(4),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(41),
      Q => m_axi_arlen(5),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(42),
      Q => m_axi_arlen(6),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(43),
      Q => m_axi_arlen(7),
      R => sig_next_addr_reg0
    );
\sig_next_size_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_addr_reg1_out,
      D => p_1_out(46),
      Q => m_axi_arsize(0),
      R => sig_next_addr_reg0
    );
sig_posted_to_axi_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_5\,
      Q => sig_posted_to_axi_2,
      R => '0'
    );
sig_posted_to_axi_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_5\,
      Q => sig_posted_to_axi,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_axi_datamover_rddata_cntl is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_data2rsc_calc_err : out STD_LOGIC;
    sig_data2rsc_slverr : out STD_LOGIC;
    sig_init_done : out STD_LOGIC;
    sig_inhibit_rdy_n : out STD_LOGIC;
    sig_rd_sts_decerr_reg0 : out STD_LOGIC;
    sig_wr_fifo : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    sig_dqual_reg_full_reg_0 : out STD_LOGIC;
    sig_push_rd_sts_reg : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    sig_init_done_reg : in STD_LOGIC;
    sig_rsc2stat_status : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_mstr2data_cmd_valid : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    sig_rsc2stat_status_valid : in STD_LOGIC;
    sig_stat2rsc_status_ready : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_rsc2data_ready : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \out\ : in STD_LOGIC
  );
end amm_bridge_axi_datamover_rddata_cntl;

architecture STRUCTURE of amm_bridge_axi_datamover_rddata_cntl is
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_10\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_11\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_12\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_13\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_14\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_15\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_19\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_8\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_9\ : STD_LOGIC;
  signal sig_addr_posted_cntr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sig_addr_posted_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[2]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr_eq_0__1\ : STD_LOGIC;
  signal sig_clr_dqual_reg : STD_LOGIC;
  signal sig_cmd_cmplt_last_dbeat : STD_LOGIC;
  signal sig_cmd_fifo_data_out : STD_LOGIC_VECTOR ( 52 downto 50 );
  signal sig_coelsc_decerr_reg0 : STD_LOGIC;
  signal sig_coelsc_interr_reg0 : STD_LOGIC;
  signal sig_coelsc_slverr_reg0 : STD_LOGIC;
  signal sig_coelsc_tag_reg0 : STD_LOGIC;
  signal \^sig_data2rsc_calc_err\ : STD_LOGIC;
  signal sig_data2rsc_decerr : STD_LOGIC;
  signal \^sig_data2rsc_slverr\ : STD_LOGIC;
  signal sig_data2rsc_valid : STD_LOGIC;
  signal sig_dbeat_cntr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sig_dbeat_cntr[4]_i_2_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_3_n_0\ : STD_LOGIC;
  signal sig_dqual_reg_empty : STD_LOGIC;
  signal sig_dqual_reg_full : STD_LOGIC;
  signal \^sig_dqual_reg_full_reg_0\ : STD_LOGIC;
  signal sig_last_dbeat : STD_LOGIC;
  signal sig_last_dbeat_i_3_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_5_n_0 : STD_LOGIC;
  signal sig_last_mmap_dbeat : STD_LOGIC;
  signal sig_last_mmap_dbeat_reg : STD_LOGIC;
  signal sig_ld_new_cmd_reg : STD_LOGIC;
  signal sig_next_calc_error_reg : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg : STD_LOGIC;
  signal sig_next_sequential_reg : STD_LOGIC;
  signal sig_push_coelsc_reg : STD_LOGIC;
  signal sig_push_dqual_reg : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sig_addr_posted_cntr[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sig_addr_posted_cntr[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of sig_coelsc_decerr_reg_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of sig_coelsc_interr_reg_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of sig_coelsc_reg_full_i_3 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of sig_coelsc_slverr_reg_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[4]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[7]_i_3\ : label is "soft_lutpair27";
begin
  sig_data2rsc_calc_err <= \^sig_data2rsc_calc_err\;
  sig_data2rsc_slverr <= \^sig_data2rsc_slverr\;
  sig_dqual_reg_full_reg_0 <= \^sig_dqual_reg_full_reg_0\;
\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO\: entity work.\amm_bridge_axi_datamover_fifo__parameterized2\
     port map (
      D(7) => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_8\,
      D(6) => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_9\,
      D(5) => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_10\,
      D(4) => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_11\,
      D(3) => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_12\,
      D(2) => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_13\,
      D(1) => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_14\,
      D(0) => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_15\,
      E(0) => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6\,
      FIFO_Full_reg => FIFO_Full_reg,
      Q(7 downto 0) => sig_dbeat_cntr(7 downto 0),
      SR(0) => SR(0),
      clk => clk,
      \in\(10 downto 0) => \in\(10 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rvalid => m_axi_rvalid,
      \out\(2 downto 0) => sig_cmd_fifo_data_out(52 downto 50),
      sel => sig_wr_fifo,
      sig_addr_posted_cntr(2 downto 0) => sig_addr_posted_cntr(2 downto 0),
      \sig_addr_posted_cntr_eq_0__1\ => \sig_addr_posted_cntr_eq_0__1\,
      sig_clr_dqual_reg => sig_clr_dqual_reg,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0\ => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_19\,
      sig_data2rsc_valid => sig_data2rsc_valid,
      \sig_dbeat_cntr_reg[4]\ => \sig_dbeat_cntr[4]_i_2_n_0\,
      \sig_dbeat_cntr_reg[7]\ => \sig_dbeat_cntr[7]_i_3_n_0\,
      sig_dqual_reg_empty => sig_dqual_reg_empty,
      sig_dqual_reg_empty_reg => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5\,
      sig_dqual_reg_full => sig_dqual_reg_full,
      sig_inhibit_rdy_n_reg_0 => sig_inhibit_rdy_n,
      sig_init_done => sig_init_done,
      sig_init_done_reg_0 => sig_init_done_reg,
      sig_last_dbeat => sig_last_dbeat,
      sig_last_dbeat_reg => sig_last_dbeat_i_3_n_0,
      sig_last_dbeat_reg_0 => \^sig_dqual_reg_full_reg_0\,
      sig_ld_new_cmd_reg => sig_ld_new_cmd_reg,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_next_calc_error_reg => sig_next_calc_error_reg,
      sig_next_sequential_reg => sig_next_sequential_reg,
      sig_push_dqual_reg => sig_push_dqual_reg,
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid,
      sig_stat2rsc_status_ready => sig_stat2rsc_status_ready
    );
avs_readdatavalid_s0_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => sig_dqual_reg_full,
      I1 => sig_next_calc_error_reg,
      I2 => m_axi_rvalid,
      I3 => sig_data2rsc_valid,
      I4 => \sig_addr_posted_cntr_eq_0__1\,
      O => \^sig_dqual_reg_full_reg_0\
    );
m_axi_rready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040404040400"
    )
        port map (
      I0 => sig_data2rsc_valid,
      I1 => sig_dqual_reg_full,
      I2 => sig_next_calc_error_reg,
      I3 => sig_addr_posted_cntr(2),
      I4 => sig_addr_posted_cntr(1),
      I5 => sig_addr_posted_cntr(0),
      O => m_axi_rready
    );
\sig_addr_posted_cntr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D9996664"
    )
        port map (
      I0 => sig_last_mmap_dbeat_reg,
      I1 => \out\,
      I2 => sig_addr_posted_cntr(1),
      I3 => sig_addr_posted_cntr(2),
      I4 => sig_addr_posted_cntr(0),
      O => \sig_addr_posted_cntr[0]_i_1_n_0\
    );
\sig_addr_posted_cntr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC2BCCC"
    )
        port map (
      I0 => sig_addr_posted_cntr(2),
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_addr_posted_cntr(0),
      I3 => \out\,
      I4 => sig_last_mmap_dbeat_reg,
      O => \sig_addr_posted_cntr[1]_i_1_n_0\
    );
\sig_addr_posted_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8EAAA"
    )
        port map (
      I0 => sig_addr_posted_cntr(2),
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_addr_posted_cntr(0),
      I3 => \out\,
      I4 => sig_last_mmap_dbeat_reg,
      O => \sig_addr_posted_cntr[2]_i_1_n_0\
    );
\sig_addr_posted_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \sig_addr_posted_cntr[0]_i_1_n_0\,
      Q => sig_addr_posted_cntr(0),
      R => SR(0)
    );
\sig_addr_posted_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \sig_addr_posted_cntr[1]_i_1_n_0\,
      Q => sig_addr_posted_cntr(1),
      R => SR(0)
    );
\sig_addr_posted_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \sig_addr_posted_cntr[2]_i_1_n_0\,
      Q => sig_addr_posted_cntr(2),
      R => SR(0)
    );
sig_coelsc_decerr_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => m_axi_rresp(1),
      I2 => m_axi_rvalid,
      I3 => sig_data2rsc_decerr,
      O => sig_coelsc_decerr_reg0
    );
sig_coelsc_decerr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_decerr_reg0,
      Q => sig_data2rsc_decerr,
      R => sig_coelsc_tag_reg0
    );
sig_coelsc_interr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_next_calc_error_reg,
      I1 => \^sig_data2rsc_calc_err\,
      O => sig_coelsc_interr_reg0
    );
sig_coelsc_interr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_interr_reg0,
      Q => \^sig_data2rsc_calc_err\,
      R => sig_coelsc_tag_reg0
    );
sig_coelsc_reg_full_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7000FFFF"
    )
        port map (
      I0 => sig_ld_new_cmd_reg,
      I1 => sig_next_calc_error_reg,
      I2 => sig_rsc2data_ready,
      I3 => sig_data2rsc_valid,
      I4 => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      O => sig_coelsc_tag_reg0
    );
sig_coelsc_reg_full_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => sig_data2rsc_valid,
      I1 => \^sig_dqual_reg_full_reg_0\,
      I2 => sig_next_calc_error_reg,
      I3 => sig_ld_new_cmd_reg,
      O => sig_push_coelsc_reg
    );
sig_coelsc_reg_full_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => sig_next_cmd_cmplt_reg,
      I1 => m_axi_rlast,
      I2 => sig_next_calc_error_reg,
      O => sig_cmd_cmplt_last_dbeat
    );
sig_coelsc_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_coelsc_reg,
      D => sig_cmd_cmplt_last_dbeat,
      Q => sig_data2rsc_valid,
      R => sig_coelsc_tag_reg0
    );
sig_coelsc_slverr_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => m_axi_rresp(1),
      I2 => m_axi_rvalid,
      I3 => \^sig_data2rsc_slverr\,
      O => sig_coelsc_slverr_reg0
    );
sig_coelsc_slverr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_slverr_reg0,
      Q => \^sig_data2rsc_slverr\,
      R => sig_coelsc_tag_reg0
    );
\sig_dbeat_cntr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_dbeat_cntr(2),
      I1 => sig_dbeat_cntr(1),
      I2 => sig_dbeat_cntr(0),
      I3 => sig_dbeat_cntr(3),
      O => \sig_dbeat_cntr[4]_i_2_n_0\
    );
\sig_dbeat_cntr[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sig_dbeat_cntr(3),
      I1 => sig_dbeat_cntr(0),
      I2 => sig_dbeat_cntr(1),
      I3 => sig_dbeat_cntr(2),
      I4 => sig_dbeat_cntr(4),
      O => \sig_dbeat_cntr[7]_i_3_n_0\
    );
\sig_dbeat_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6\,
      D => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_15\,
      Q => sig_dbeat_cntr(0),
      R => SR(0)
    );
\sig_dbeat_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6\,
      D => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_14\,
      Q => sig_dbeat_cntr(1),
      R => SR(0)
    );
\sig_dbeat_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6\,
      D => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_13\,
      Q => sig_dbeat_cntr(2),
      R => SR(0)
    );
\sig_dbeat_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6\,
      D => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_12\,
      Q => sig_dbeat_cntr(3),
      R => SR(0)
    );
\sig_dbeat_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6\,
      D => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_11\,
      Q => sig_dbeat_cntr(4),
      R => SR(0)
    );
\sig_dbeat_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6\,
      D => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_10\,
      Q => sig_dbeat_cntr(5),
      R => SR(0)
    );
\sig_dbeat_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6\,
      D => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_9\,
      Q => sig_dbeat_cntr(6),
      R => SR(0)
    );
\sig_dbeat_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6\,
      D => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_8\,
      Q => sig_dbeat_cntr(7),
      R => SR(0)
    );
sig_dqual_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_dqual_reg,
      D => '0',
      Q => sig_dqual_reg_empty,
      S => sig_clr_dqual_reg
    );
sig_dqual_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_dqual_reg,
      D => sig_push_dqual_reg,
      Q => sig_dqual_reg_full,
      R => sig_clr_dqual_reg
    );
sig_last_dbeat_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => sig_dbeat_cntr(3),
      I1 => sig_dbeat_cntr(4),
      I2 => sig_dbeat_cntr(2),
      I3 => sig_dbeat_cntr(1),
      I4 => sig_dbeat_cntr(0),
      I5 => sig_last_dbeat_i_5_n_0,
      O => sig_last_dbeat_i_3_n_0
    );
sig_last_dbeat_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sig_dbeat_cntr(6),
      I1 => sig_dbeat_cntr(5),
      I2 => sig_dbeat_cntr(7),
      O => sig_last_dbeat_i_5_n_0
    );
sig_last_dbeat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6\,
      D => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5\,
      Q => sig_last_dbeat,
      R => SR(0)
    );
sig_last_mmap_dbeat_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_rlast,
      I1 => \^sig_dqual_reg_full_reg_0\,
      O => sig_last_mmap_dbeat
    );
sig_last_mmap_dbeat_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_last_mmap_dbeat,
      Q => sig_last_mmap_dbeat_reg,
      R => SR(0)
    );
sig_ld_new_cmd_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_19\,
      Q => sig_ld_new_cmd_reg,
      R => '0'
    );
sig_next_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(52),
      Q => sig_next_calc_error_reg,
      R => sig_clr_dqual_reg
    );
sig_next_cmd_cmplt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(51),
      Q => sig_next_cmd_cmplt_reg,
      R => sig_clr_dqual_reg
    );
sig_next_sequential_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(50),
      Q => sig_next_sequential_reg,
      R => sig_clr_dqual_reg
    );
sig_rd_sts_decerr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_data2rsc_decerr,
      I1 => sig_rsc2stat_status(0),
      O => sig_rd_sts_decerr_reg0
    );
sig_rd_sts_interr_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sig_data2rsc_valid,
      I1 => sig_rsc2data_ready,
      O => sig_push_rd_sts_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_axi_datamover_mm2s_full_wrap is
  port (
    m_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    mm2s_cmd_ready : out STD_LOGIC;
    read_error_valid : out STD_LOGIC;
    read_error : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    sig_dqual_reg_full_reg : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aresetn : in STD_LOGIC;
    clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC;
    mm2s_cmd_valid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 42 downto 0 )
  );
end amm_bridge_axi_datamover_mm2s_full_wrap;

architecture STRUCTURE of amm_bridge_axi_datamover_mm2s_full_wrap is
  signal \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n\ : STD_LOGIC;
  signal \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_wr_fifo\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg2\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_wr_fifo\ : STD_LOGIC;
  signal \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_done\ : STD_LOGIC;
  signal I_ADDR_CNTL_n_2 : STD_LOGIC;
  signal \I_CMD_FIFO/sig_init_done\ : STD_LOGIC;
  signal I_CMD_STATUS_n_24 : STD_LOGIC;
  signal I_CMD_STATUS_n_25 : STD_LOGIC;
  signal I_CMD_STATUS_n_26 : STD_LOGIC;
  signal I_CMD_STATUS_n_27 : STD_LOGIC;
  signal I_CMD_STATUS_n_28 : STD_LOGIC;
  signal I_CMD_STATUS_n_29 : STD_LOGIC;
  signal I_CMD_STATUS_n_30 : STD_LOGIC;
  signal I_CMD_STATUS_n_31 : STD_LOGIC;
  signal I_CMD_STATUS_n_32 : STD_LOGIC;
  signal I_CMD_STATUS_n_33 : STD_LOGIC;
  signal I_CMD_STATUS_n_34 : STD_LOGIC;
  signal I_CMD_STATUS_n_35 : STD_LOGIC;
  signal I_CMD_STATUS_n_36 : STD_LOGIC;
  signal I_CMD_STATUS_n_37 : STD_LOGIC;
  signal I_CMD_STATUS_n_38 : STD_LOGIC;
  signal I_CMD_STATUS_n_39 : STD_LOGIC;
  signal I_MSTR_PCC_n_1 : STD_LOGIC;
  signal I_MSTR_PCC_n_45 : STD_LOGIC;
  signal I_MSTR_PCC_n_47 : STD_LOGIC;
  signal I_MSTR_PCC_n_48 : STD_LOGIC;
  signal I_RD_DATA_CNTL_n_0 : STD_LOGIC;
  signal I_RESET_n_1 : STD_LOGIC;
  signal I_RESET_n_2 : STD_LOGIC;
  signal I_RESET_n_3 : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_addr2data_addr_posted : STD_LOGIC;
  signal sig_cmd2mstr_cmd_valid : STD_LOGIC;
  signal sig_cmd2mstr_command : STD_LOGIC_VECTOR ( 14 downto 4 );
  signal sig_cmd_stat_rst_user_reg_n_cdc_from_reg : STD_LOGIC;
  signal sig_cmd_type_slice : STD_LOGIC;
  signal sig_data2rsc_calc_err : STD_LOGIC;
  signal sig_data2rsc_slverr : STD_LOGIC;
  signal sig_mstr2addr_addr : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal sig_mstr2addr_burst : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_mstr2addr_cmd_valid : STD_LOGIC;
  signal sig_mstr2data_cmd_valid : STD_LOGIC;
  signal sig_mstr2data_dre_src_align : STD_LOGIC;
  signal sig_mstr2data_len : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_mstr2data_saddr_lsb : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal sig_mstr2data_sequential : STD_LOGIC;
  signal sig_push_rd_sts_reg : STD_LOGIC;
  signal sig_rd_sts_decerr_reg0 : STD_LOGIC;
  signal sig_rd_sts_tag_reg0 : STD_LOGIC;
  signal sig_rsc2data_ready : STD_LOGIC;
  signal sig_rsc2stat_status : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal sig_rsc2stat_status_valid : STD_LOGIC;
  signal sig_stat2rsc_status_ready : STD_LOGIC;
  signal sig_stream_rst : STD_LOGIC;
begin
I_ADDR_CNTL: entity work.amm_bridge_axi_datamover_addr_cntl
     port map (
      FIFO_Full_reg => I_ADDR_CNTL_n_2,
      SR(0) => sig_stream_rst,
      clk => clk,
      \in\(41) => I_MSTR_PCC_n_1,
      \in\(40) => sig_mstr2addr_burst(0),
      \in\(39 downto 32) => sig_mstr2data_len(7 downto 0),
      \in\(31 downto 4) => sig_mstr2addr_addr(31 downto 4),
      \in\(3 downto 1) => sig_mstr2data_saddr_lsb(3 downto 1),
      \in\(0) => sig_mstr2data_dre_src_align,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(0) => m_axi_arburst(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(0) => m_axi_arsize(0),
      m_axi_arvalid => m_axi_arvalid,
      \out\ => sig_addr2data_addr_posted,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      sig_inhibit_rdy_n => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n\,
      sig_init_reg => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg\,
      sig_init_reg2 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg2\,
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid,
      sig_wr_fifo => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_wr_fifo\
    );
I_CMD_STATUS: entity work.amm_bridge_axi_datamover_cmd_status
     port map (
      D(42 downto 0) => D(42 downto 0),
      E(0) => E(0),
      Q(43 downto 28) => data(15 downto 0),
      Q(27) => I_CMD_STATUS_n_24,
      Q(26) => I_CMD_STATUS_n_25,
      Q(25) => I_CMD_STATUS_n_26,
      Q(24) => I_CMD_STATUS_n_27,
      Q(23) => I_CMD_STATUS_n_28,
      Q(22) => I_CMD_STATUS_n_29,
      Q(21) => I_CMD_STATUS_n_30,
      Q(20) => I_CMD_STATUS_n_31,
      Q(19) => I_CMD_STATUS_n_32,
      Q(18) => I_CMD_STATUS_n_33,
      Q(17) => I_CMD_STATUS_n_34,
      Q(16) => I_CMD_STATUS_n_35,
      Q(15) => I_CMD_STATUS_n_36,
      Q(14) => I_CMD_STATUS_n_37,
      Q(13) => I_CMD_STATUS_n_38,
      Q(12) => I_CMD_STATUS_n_39,
      Q(11) => sig_cmd_type_slice,
      Q(10 downto 0) => sig_cmd2mstr_command(14 downto 4),
      SR(0) => sig_stream_rst,
      \USE_SINGLE_REG.sig_regfifo_empty_reg_reg\ => I_MSTR_PCC_n_48,
      \USE_SINGLE_REG.sig_regfifo_full_reg_reg\ => I_MSTR_PCC_n_47,
      aresetn => aresetn,
      clk => clk,
      mm2s_cmd_ready => mm2s_cmd_ready,
      mm2s_cmd_valid => mm2s_cmd_valid,
      read_error => read_error,
      read_error_valid => read_error_valid,
      sig_cmd2mstr_cmd_valid => sig_cmd2mstr_cmd_valid,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      sig_init_done => \I_CMD_FIFO/sig_init_done\,
      sig_init_done_0 => \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_done\,
      sig_init_done_reg => I_RESET_n_1,
      sig_init_done_reg_0 => I_RESET_n_2,
      sig_rd_sts_tag_reg0 => sig_rd_sts_tag_reg0,
      sig_rsc2stat_status(2 downto 0) => sig_rsc2stat_status(6 downto 4),
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid,
      sig_stat2rsc_status_ready => sig_stat2rsc_status_ready
    );
I_MSTR_PCC: entity work.amm_bridge_axi_datamover_pcc
     port map (
      E(0) => E(0),
      Q(43 downto 28) => data(15 downto 0),
      Q(27) => I_CMD_STATUS_n_24,
      Q(26) => I_CMD_STATUS_n_25,
      Q(25) => I_CMD_STATUS_n_26,
      Q(24) => I_CMD_STATUS_n_27,
      Q(23) => I_CMD_STATUS_n_28,
      Q(22) => I_CMD_STATUS_n_29,
      Q(21) => I_CMD_STATUS_n_30,
      Q(20) => I_CMD_STATUS_n_31,
      Q(19) => I_CMD_STATUS_n_32,
      Q(18) => I_CMD_STATUS_n_33,
      Q(17) => I_CMD_STATUS_n_34,
      Q(16) => I_CMD_STATUS_n_35,
      Q(15) => I_CMD_STATUS_n_36,
      Q(14) => I_CMD_STATUS_n_37,
      Q(13) => I_CMD_STATUS_n_38,
      Q(12) => I_CMD_STATUS_n_39,
      Q(11) => sig_cmd_type_slice,
      Q(10 downto 0) => sig_cmd2mstr_command(14 downto 4),
      SR(0) => sig_stream_rst,
      \USE_SINGLE_REG.sig_regfifo_full_reg_reg\ => I_MSTR_PCC_n_48,
      clk => clk,
      \in\(41) => I_MSTR_PCC_n_1,
      \in\(40) => sig_mstr2addr_burst(0),
      \in\(39 downto 32) => sig_mstr2data_len(7 downto 0),
      \in\(31 downto 4) => sig_mstr2addr_addr(31 downto 4),
      \in\(3 downto 1) => sig_mstr2data_saddr_lsb(3 downto 1),
      \in\(0) => sig_mstr2data_dre_src_align,
      sig_calc_error_reg_reg_0(1) => I_MSTR_PCC_n_45,
      sig_calc_error_reg_reg_0(0) => sig_mstr2data_sequential,
      sig_cmd2addr_valid_reg_0 => I_ADDR_CNTL_n_2,
      sig_cmd2data_valid_reg_0 => I_RD_DATA_CNTL_n_0,
      sig_cmd2mstr_cmd_valid => sig_cmd2mstr_cmd_valid,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0\ => I_MSTR_PCC_n_47,
      sig_inhibit_rdy_n => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n\,
      sig_inhibit_rdy_n_1 => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n\,
      sig_init_reg => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg\,
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_wr_fifo => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_wr_fifo\,
      sig_wr_fifo_0 => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_wr_fifo\
    );
I_RD_DATA_CNTL: entity work.amm_bridge_axi_datamover_rddata_cntl
     port map (
      FIFO_Full_reg => I_RD_DATA_CNTL_n_0,
      SR(0) => sig_stream_rst,
      clk => clk,
      \in\(10) => I_MSTR_PCC_n_1,
      \in\(9) => I_MSTR_PCC_n_45,
      \in\(8) => sig_mstr2data_sequential,
      \in\(7 downto 0) => sig_mstr2data_len(7 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => sig_addr2data_addr_posted,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      sig_data2rsc_calc_err => sig_data2rsc_calc_err,
      sig_data2rsc_slverr => sig_data2rsc_slverr,
      sig_dqual_reg_full_reg_0 => sig_dqual_reg_full_reg,
      sig_inhibit_rdy_n => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n\,
      sig_init_done => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done\,
      sig_init_done_reg => I_RESET_n_3,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_push_rd_sts_reg => sig_push_rd_sts_reg,
      sig_rd_sts_decerr_reg0 => sig_rd_sts_decerr_reg0,
      sig_rsc2data_ready => sig_rsc2data_ready,
      sig_rsc2stat_status(0) => sig_rsc2stat_status(5),
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid,
      sig_stat2rsc_status_ready => sig_stat2rsc_status_ready,
      sig_wr_fifo => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_wr_fifo\
    );
I_RD_STATUS_CNTLR: entity work.amm_bridge_axi_datamover_rd_status_cntl
     port map (
      clk => clk,
      sig_data2rsc_calc_err => sig_data2rsc_calc_err,
      sig_data2rsc_slverr => sig_data2rsc_slverr,
      sig_push_rd_sts_reg => sig_push_rd_sts_reg,
      sig_rd_sts_decerr_reg0 => sig_rd_sts_decerr_reg0,
      sig_rd_sts_tag_reg0 => sig_rd_sts_tag_reg0,
      sig_rsc2data_ready => sig_rsc2data_ready,
      sig_rsc2stat_status(2 downto 0) => sig_rsc2stat_status(6 downto 4),
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid
    );
I_RESET: entity work.amm_bridge_axi_datamover_reset
     port map (
      SR(0) => sig_stream_rst,
      aresetn => aresetn,
      clk => clk,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_0\ => I_RESET_n_1,
      \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_1\ => I_RESET_n_2,
      \sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_2\ => I_RESET_n_3,
      sig_init_done => \I_CMD_FIFO/sig_init_done\,
      sig_init_done_0 => \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_done\,
      sig_init_done_1 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done\,
      sig_init_reg => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg\,
      sig_init_reg2 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_axi_datamover is
  port (
    m_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    mm2s_cmd_ready : out STD_LOGIC;
    read_error_valid : out STD_LOGIC;
    read_error : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    sig_dqual_reg_full_reg : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aresetn : in STD_LOGIC;
    clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC;
    mm2s_cmd_valid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 42 downto 0 )
  );
end amm_bridge_axi_datamover;

architecture STRUCTURE of amm_bridge_axi_datamover is
begin
\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER\: entity work.amm_bridge_axi_datamover_mm2s_full_wrap
     port map (
      D(42 downto 0) => D(42 downto 0),
      E(0) => E(0),
      aresetn => aresetn,
      clk => clk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(0) => m_axi_arburst(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(0) => m_axi_arsize(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      mm2s_cmd_ready => mm2s_cmd_ready,
      mm2s_cmd_valid => mm2s_cmd_valid,
      read_error => read_error,
      read_error_valid => read_error_valid,
      sig_dqual_reg_full_reg => sig_dqual_reg_full_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge_amm_axi_bridge_v1_0_4_top is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    write_error : out STD_LOGIC;
    write_error_valid : out STD_LOGIC;
    write_error_master_ID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    read_error : out STD_LOGIC;
    read_error_valid : out STD_LOGIC;
    read_error_master_ID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    avs_address_s0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avs_read_s0 : in STD_LOGIC;
    avs_write_s0 : in STD_LOGIC;
    avs_writedata_s0 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdata_s0 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdatavalid_s0 : out STD_LOGIC;
    avs_waitrequest_s0 : out STD_LOGIC;
    avs_byteenable_s0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    avs_burstcount_s0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    avs_address_s1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avs_read_s1 : in STD_LOGIC;
    avs_write_s1 : in STD_LOGIC;
    avs_writedata_s1 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdata_s1 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdatavalid_s1 : out STD_LOGIC;
    avs_waitrequest_s1 : out STD_LOGIC;
    avs_byteenable_s1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    avs_burstcount_s1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    avs_address_s2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avs_read_s2 : in STD_LOGIC;
    avs_write_s2 : in STD_LOGIC;
    avs_writedata_s2 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdata_s2 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdatavalid_s2 : out STD_LOGIC;
    avs_waitrequest_s2 : out STD_LOGIC;
    avs_byteenable_s2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    avs_burstcount_s2 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    avs_address_s3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avs_read_s3 : in STD_LOGIC;
    avs_write_s3 : in STD_LOGIC;
    avs_writedata_s3 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdata_s3 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdatavalid_s3 : out STD_LOGIC;
    avs_waitrequest_s3 : out STD_LOGIC;
    avs_byteenable_s3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    avs_burstcount_s3 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    avs_address_s4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avs_read_s4 : in STD_LOGIC;
    avs_write_s4 : in STD_LOGIC;
    avs_writedata_s4 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdata_s4 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdatavalid_s4 : out STD_LOGIC;
    avs_waitrequest_s4 : out STD_LOGIC;
    avs_byteenable_s4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    avs_burstcount_s4 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    avs_address_s5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avs_read_s5 : in STD_LOGIC;
    avs_write_s5 : in STD_LOGIC;
    avs_writedata_s5 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdata_s5 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdatavalid_s5 : out STD_LOGIC;
    avs_waitrequest_s5 : out STD_LOGIC;
    avs_byteenable_s5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    avs_burstcount_s5 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    avs_address_s6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avs_read_s6 : in STD_LOGIC;
    avs_write_s6 : in STD_LOGIC;
    avs_writedata_s6 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdata_s6 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdatavalid_s6 : out STD_LOGIC;
    avs_waitrequest_s6 : out STD_LOGIC;
    avs_byteenable_s6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    avs_burstcount_s6 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    avs_address_s7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avs_read_s7 : in STD_LOGIC;
    avs_write_s7 : in STD_LOGIC;
    avs_writedata_s7 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdata_s7 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdatavalid_s7 : out STD_LOGIC;
    avs_waitrequest_s7 : out STD_LOGIC;
    avs_byteenable_s7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    avs_burstcount_s7 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  attribute C_AVA_ADDR_WIDTH : integer;
  attribute C_AVA_ADDR_WIDTH of amm_bridge_amm_axi_bridge_v1_0_4_top : entity is 32;
  attribute C_AVA_BURSTCOUNTWIDTH : integer;
  attribute C_AVA_BURSTCOUNTWIDTH of amm_bridge_amm_axi_bridge_v1_0_4_top : entity is 11;
  attribute C_AVA_BYTEENABLES : integer;
  attribute C_AVA_BYTEENABLES of amm_bridge_amm_axi_bridge_v1_0_4_top : entity is 0;
  attribute C_AVA_DATA_WIDTH : integer;
  attribute C_AVA_DATA_WIDTH of amm_bridge_amm_axi_bridge_v1_0_4_top : entity is 128;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of amm_bridge_amm_axi_bridge_v1_0_4_top : entity is 32;
  attribute C_ENABLE_PIPELINE : integer;
  attribute C_ENABLE_PIPELINE of amm_bridge_amm_axi_bridge_v1_0_4_top : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of amm_bridge_amm_axi_bridge_v1_0_4_top : entity is "artix7";
  attribute C_INCLUDE_MM2S : integer;
  attribute C_INCLUDE_MM2S of amm_bridge_amm_axi_bridge_v1_0_4_top : entity is 1;
  attribute C_INCLUDE_S2MM : integer;
  attribute C_INCLUDE_S2MM of amm_bridge_amm_axi_bridge_v1_0_4_top : entity is 0;
  attribute C_MODE : integer;
  attribute C_MODE of amm_bridge_amm_axi_bridge_v1_0_4_top : entity is 0;
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of amm_bridge_amm_axi_bridge_v1_0_4_top : entity is 32;
  attribute C_NUM_MASTERS : integer;
  attribute C_NUM_MASTERS of amm_bridge_amm_axi_bridge_v1_0_4_top : entity is 1;
  attribute C_PIPELINE_DEPTH : integer;
  attribute C_PIPELINE_DEPTH of amm_bridge_amm_axi_bridge_v1_0_4_top : entity is 1;
  attribute C_STATUSWIDTH : integer;
  attribute C_STATUSWIDTH of amm_bridge_amm_axi_bridge_v1_0_4_top : entity is 8;
end amm_bridge_amm_axi_bridge_v1_0_4_top;

architecture STRUCTURE of amm_bridge_amm_axi_bridge_v1_0_4_top is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/sig_push_regfifo\ : STD_LOGIC;
  signal address : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal burstcount_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^m_axi_arburst\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_arsize\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal mm2s_cmd_ready : STD_LOGIC;
  signal mm2s_cmd_valid : STD_LOGIC;
begin
  \^m_axi_rdata\(127 downto 0) <= m_axi_rdata(127 downto 0);
  avs_readdata_s0(127 downto 0) <= \^m_axi_rdata\(127 downto 0);
  avs_readdata_s1(127) <= \<const0>\;
  avs_readdata_s1(126) <= \<const0>\;
  avs_readdata_s1(125) <= \<const0>\;
  avs_readdata_s1(124) <= \<const0>\;
  avs_readdata_s1(123) <= \<const0>\;
  avs_readdata_s1(122) <= \<const0>\;
  avs_readdata_s1(121) <= \<const0>\;
  avs_readdata_s1(120) <= \<const0>\;
  avs_readdata_s1(119) <= \<const0>\;
  avs_readdata_s1(118) <= \<const0>\;
  avs_readdata_s1(117) <= \<const0>\;
  avs_readdata_s1(116) <= \<const0>\;
  avs_readdata_s1(115) <= \<const0>\;
  avs_readdata_s1(114) <= \<const0>\;
  avs_readdata_s1(113) <= \<const0>\;
  avs_readdata_s1(112) <= \<const0>\;
  avs_readdata_s1(111) <= \<const0>\;
  avs_readdata_s1(110) <= \<const0>\;
  avs_readdata_s1(109) <= \<const0>\;
  avs_readdata_s1(108) <= \<const0>\;
  avs_readdata_s1(107) <= \<const0>\;
  avs_readdata_s1(106) <= \<const0>\;
  avs_readdata_s1(105) <= \<const0>\;
  avs_readdata_s1(104) <= \<const0>\;
  avs_readdata_s1(103) <= \<const0>\;
  avs_readdata_s1(102) <= \<const0>\;
  avs_readdata_s1(101) <= \<const0>\;
  avs_readdata_s1(100) <= \<const0>\;
  avs_readdata_s1(99) <= \<const0>\;
  avs_readdata_s1(98) <= \<const0>\;
  avs_readdata_s1(97) <= \<const0>\;
  avs_readdata_s1(96) <= \<const0>\;
  avs_readdata_s1(95) <= \<const0>\;
  avs_readdata_s1(94) <= \<const0>\;
  avs_readdata_s1(93) <= \<const0>\;
  avs_readdata_s1(92) <= \<const0>\;
  avs_readdata_s1(91) <= \<const0>\;
  avs_readdata_s1(90) <= \<const0>\;
  avs_readdata_s1(89) <= \<const0>\;
  avs_readdata_s1(88) <= \<const0>\;
  avs_readdata_s1(87) <= \<const0>\;
  avs_readdata_s1(86) <= \<const0>\;
  avs_readdata_s1(85) <= \<const0>\;
  avs_readdata_s1(84) <= \<const0>\;
  avs_readdata_s1(83) <= \<const0>\;
  avs_readdata_s1(82) <= \<const0>\;
  avs_readdata_s1(81) <= \<const0>\;
  avs_readdata_s1(80) <= \<const0>\;
  avs_readdata_s1(79) <= \<const0>\;
  avs_readdata_s1(78) <= \<const0>\;
  avs_readdata_s1(77) <= \<const0>\;
  avs_readdata_s1(76) <= \<const0>\;
  avs_readdata_s1(75) <= \<const0>\;
  avs_readdata_s1(74) <= \<const0>\;
  avs_readdata_s1(73) <= \<const0>\;
  avs_readdata_s1(72) <= \<const0>\;
  avs_readdata_s1(71) <= \<const0>\;
  avs_readdata_s1(70) <= \<const0>\;
  avs_readdata_s1(69) <= \<const0>\;
  avs_readdata_s1(68) <= \<const0>\;
  avs_readdata_s1(67) <= \<const0>\;
  avs_readdata_s1(66) <= \<const0>\;
  avs_readdata_s1(65) <= \<const0>\;
  avs_readdata_s1(64) <= \<const0>\;
  avs_readdata_s1(63) <= \<const0>\;
  avs_readdata_s1(62) <= \<const0>\;
  avs_readdata_s1(61) <= \<const0>\;
  avs_readdata_s1(60) <= \<const0>\;
  avs_readdata_s1(59) <= \<const0>\;
  avs_readdata_s1(58) <= \<const0>\;
  avs_readdata_s1(57) <= \<const0>\;
  avs_readdata_s1(56) <= \<const0>\;
  avs_readdata_s1(55) <= \<const0>\;
  avs_readdata_s1(54) <= \<const0>\;
  avs_readdata_s1(53) <= \<const0>\;
  avs_readdata_s1(52) <= \<const0>\;
  avs_readdata_s1(51) <= \<const0>\;
  avs_readdata_s1(50) <= \<const0>\;
  avs_readdata_s1(49) <= \<const0>\;
  avs_readdata_s1(48) <= \<const0>\;
  avs_readdata_s1(47) <= \<const0>\;
  avs_readdata_s1(46) <= \<const0>\;
  avs_readdata_s1(45) <= \<const0>\;
  avs_readdata_s1(44) <= \<const0>\;
  avs_readdata_s1(43) <= \<const0>\;
  avs_readdata_s1(42) <= \<const0>\;
  avs_readdata_s1(41) <= \<const0>\;
  avs_readdata_s1(40) <= \<const0>\;
  avs_readdata_s1(39) <= \<const0>\;
  avs_readdata_s1(38) <= \<const0>\;
  avs_readdata_s1(37) <= \<const0>\;
  avs_readdata_s1(36) <= \<const0>\;
  avs_readdata_s1(35) <= \<const0>\;
  avs_readdata_s1(34) <= \<const0>\;
  avs_readdata_s1(33) <= \<const0>\;
  avs_readdata_s1(32) <= \<const0>\;
  avs_readdata_s1(31) <= \<const0>\;
  avs_readdata_s1(30) <= \<const0>\;
  avs_readdata_s1(29) <= \<const0>\;
  avs_readdata_s1(28) <= \<const0>\;
  avs_readdata_s1(27) <= \<const0>\;
  avs_readdata_s1(26) <= \<const0>\;
  avs_readdata_s1(25) <= \<const0>\;
  avs_readdata_s1(24) <= \<const0>\;
  avs_readdata_s1(23) <= \<const0>\;
  avs_readdata_s1(22) <= \<const0>\;
  avs_readdata_s1(21) <= \<const0>\;
  avs_readdata_s1(20) <= \<const0>\;
  avs_readdata_s1(19) <= \<const0>\;
  avs_readdata_s1(18) <= \<const0>\;
  avs_readdata_s1(17) <= \<const0>\;
  avs_readdata_s1(16) <= \<const0>\;
  avs_readdata_s1(15) <= \<const0>\;
  avs_readdata_s1(14) <= \<const0>\;
  avs_readdata_s1(13) <= \<const0>\;
  avs_readdata_s1(12) <= \<const0>\;
  avs_readdata_s1(11) <= \<const0>\;
  avs_readdata_s1(10) <= \<const0>\;
  avs_readdata_s1(9) <= \<const0>\;
  avs_readdata_s1(8) <= \<const0>\;
  avs_readdata_s1(7) <= \<const0>\;
  avs_readdata_s1(6) <= \<const0>\;
  avs_readdata_s1(5) <= \<const0>\;
  avs_readdata_s1(4) <= \<const0>\;
  avs_readdata_s1(3) <= \<const0>\;
  avs_readdata_s1(2) <= \<const0>\;
  avs_readdata_s1(1) <= \<const0>\;
  avs_readdata_s1(0) <= \<const0>\;
  avs_readdata_s2(127) <= \<const0>\;
  avs_readdata_s2(126) <= \<const0>\;
  avs_readdata_s2(125) <= \<const0>\;
  avs_readdata_s2(124) <= \<const0>\;
  avs_readdata_s2(123) <= \<const0>\;
  avs_readdata_s2(122) <= \<const0>\;
  avs_readdata_s2(121) <= \<const0>\;
  avs_readdata_s2(120) <= \<const0>\;
  avs_readdata_s2(119) <= \<const0>\;
  avs_readdata_s2(118) <= \<const0>\;
  avs_readdata_s2(117) <= \<const0>\;
  avs_readdata_s2(116) <= \<const0>\;
  avs_readdata_s2(115) <= \<const0>\;
  avs_readdata_s2(114) <= \<const0>\;
  avs_readdata_s2(113) <= \<const0>\;
  avs_readdata_s2(112) <= \<const0>\;
  avs_readdata_s2(111) <= \<const0>\;
  avs_readdata_s2(110) <= \<const0>\;
  avs_readdata_s2(109) <= \<const0>\;
  avs_readdata_s2(108) <= \<const0>\;
  avs_readdata_s2(107) <= \<const0>\;
  avs_readdata_s2(106) <= \<const0>\;
  avs_readdata_s2(105) <= \<const0>\;
  avs_readdata_s2(104) <= \<const0>\;
  avs_readdata_s2(103) <= \<const0>\;
  avs_readdata_s2(102) <= \<const0>\;
  avs_readdata_s2(101) <= \<const0>\;
  avs_readdata_s2(100) <= \<const0>\;
  avs_readdata_s2(99) <= \<const0>\;
  avs_readdata_s2(98) <= \<const0>\;
  avs_readdata_s2(97) <= \<const0>\;
  avs_readdata_s2(96) <= \<const0>\;
  avs_readdata_s2(95) <= \<const0>\;
  avs_readdata_s2(94) <= \<const0>\;
  avs_readdata_s2(93) <= \<const0>\;
  avs_readdata_s2(92) <= \<const0>\;
  avs_readdata_s2(91) <= \<const0>\;
  avs_readdata_s2(90) <= \<const0>\;
  avs_readdata_s2(89) <= \<const0>\;
  avs_readdata_s2(88) <= \<const0>\;
  avs_readdata_s2(87) <= \<const0>\;
  avs_readdata_s2(86) <= \<const0>\;
  avs_readdata_s2(85) <= \<const0>\;
  avs_readdata_s2(84) <= \<const0>\;
  avs_readdata_s2(83) <= \<const0>\;
  avs_readdata_s2(82) <= \<const0>\;
  avs_readdata_s2(81) <= \<const0>\;
  avs_readdata_s2(80) <= \<const0>\;
  avs_readdata_s2(79) <= \<const0>\;
  avs_readdata_s2(78) <= \<const0>\;
  avs_readdata_s2(77) <= \<const0>\;
  avs_readdata_s2(76) <= \<const0>\;
  avs_readdata_s2(75) <= \<const0>\;
  avs_readdata_s2(74) <= \<const0>\;
  avs_readdata_s2(73) <= \<const0>\;
  avs_readdata_s2(72) <= \<const0>\;
  avs_readdata_s2(71) <= \<const0>\;
  avs_readdata_s2(70) <= \<const0>\;
  avs_readdata_s2(69) <= \<const0>\;
  avs_readdata_s2(68) <= \<const0>\;
  avs_readdata_s2(67) <= \<const0>\;
  avs_readdata_s2(66) <= \<const0>\;
  avs_readdata_s2(65) <= \<const0>\;
  avs_readdata_s2(64) <= \<const0>\;
  avs_readdata_s2(63) <= \<const0>\;
  avs_readdata_s2(62) <= \<const0>\;
  avs_readdata_s2(61) <= \<const0>\;
  avs_readdata_s2(60) <= \<const0>\;
  avs_readdata_s2(59) <= \<const0>\;
  avs_readdata_s2(58) <= \<const0>\;
  avs_readdata_s2(57) <= \<const0>\;
  avs_readdata_s2(56) <= \<const0>\;
  avs_readdata_s2(55) <= \<const0>\;
  avs_readdata_s2(54) <= \<const0>\;
  avs_readdata_s2(53) <= \<const0>\;
  avs_readdata_s2(52) <= \<const0>\;
  avs_readdata_s2(51) <= \<const0>\;
  avs_readdata_s2(50) <= \<const0>\;
  avs_readdata_s2(49) <= \<const0>\;
  avs_readdata_s2(48) <= \<const0>\;
  avs_readdata_s2(47) <= \<const0>\;
  avs_readdata_s2(46) <= \<const0>\;
  avs_readdata_s2(45) <= \<const0>\;
  avs_readdata_s2(44) <= \<const0>\;
  avs_readdata_s2(43) <= \<const0>\;
  avs_readdata_s2(42) <= \<const0>\;
  avs_readdata_s2(41) <= \<const0>\;
  avs_readdata_s2(40) <= \<const0>\;
  avs_readdata_s2(39) <= \<const0>\;
  avs_readdata_s2(38) <= \<const0>\;
  avs_readdata_s2(37) <= \<const0>\;
  avs_readdata_s2(36) <= \<const0>\;
  avs_readdata_s2(35) <= \<const0>\;
  avs_readdata_s2(34) <= \<const0>\;
  avs_readdata_s2(33) <= \<const0>\;
  avs_readdata_s2(32) <= \<const0>\;
  avs_readdata_s2(31) <= \<const0>\;
  avs_readdata_s2(30) <= \<const0>\;
  avs_readdata_s2(29) <= \<const0>\;
  avs_readdata_s2(28) <= \<const0>\;
  avs_readdata_s2(27) <= \<const0>\;
  avs_readdata_s2(26) <= \<const0>\;
  avs_readdata_s2(25) <= \<const0>\;
  avs_readdata_s2(24) <= \<const0>\;
  avs_readdata_s2(23) <= \<const0>\;
  avs_readdata_s2(22) <= \<const0>\;
  avs_readdata_s2(21) <= \<const0>\;
  avs_readdata_s2(20) <= \<const0>\;
  avs_readdata_s2(19) <= \<const0>\;
  avs_readdata_s2(18) <= \<const0>\;
  avs_readdata_s2(17) <= \<const0>\;
  avs_readdata_s2(16) <= \<const0>\;
  avs_readdata_s2(15) <= \<const0>\;
  avs_readdata_s2(14) <= \<const0>\;
  avs_readdata_s2(13) <= \<const0>\;
  avs_readdata_s2(12) <= \<const0>\;
  avs_readdata_s2(11) <= \<const0>\;
  avs_readdata_s2(10) <= \<const0>\;
  avs_readdata_s2(9) <= \<const0>\;
  avs_readdata_s2(8) <= \<const0>\;
  avs_readdata_s2(7) <= \<const0>\;
  avs_readdata_s2(6) <= \<const0>\;
  avs_readdata_s2(5) <= \<const0>\;
  avs_readdata_s2(4) <= \<const0>\;
  avs_readdata_s2(3) <= \<const0>\;
  avs_readdata_s2(2) <= \<const0>\;
  avs_readdata_s2(1) <= \<const0>\;
  avs_readdata_s2(0) <= \<const0>\;
  avs_readdata_s3(127) <= \<const0>\;
  avs_readdata_s3(126) <= \<const0>\;
  avs_readdata_s3(125) <= \<const0>\;
  avs_readdata_s3(124) <= \<const0>\;
  avs_readdata_s3(123) <= \<const0>\;
  avs_readdata_s3(122) <= \<const0>\;
  avs_readdata_s3(121) <= \<const0>\;
  avs_readdata_s3(120) <= \<const0>\;
  avs_readdata_s3(119) <= \<const0>\;
  avs_readdata_s3(118) <= \<const0>\;
  avs_readdata_s3(117) <= \<const0>\;
  avs_readdata_s3(116) <= \<const0>\;
  avs_readdata_s3(115) <= \<const0>\;
  avs_readdata_s3(114) <= \<const0>\;
  avs_readdata_s3(113) <= \<const0>\;
  avs_readdata_s3(112) <= \<const0>\;
  avs_readdata_s3(111) <= \<const0>\;
  avs_readdata_s3(110) <= \<const0>\;
  avs_readdata_s3(109) <= \<const0>\;
  avs_readdata_s3(108) <= \<const0>\;
  avs_readdata_s3(107) <= \<const0>\;
  avs_readdata_s3(106) <= \<const0>\;
  avs_readdata_s3(105) <= \<const0>\;
  avs_readdata_s3(104) <= \<const0>\;
  avs_readdata_s3(103) <= \<const0>\;
  avs_readdata_s3(102) <= \<const0>\;
  avs_readdata_s3(101) <= \<const0>\;
  avs_readdata_s3(100) <= \<const0>\;
  avs_readdata_s3(99) <= \<const0>\;
  avs_readdata_s3(98) <= \<const0>\;
  avs_readdata_s3(97) <= \<const0>\;
  avs_readdata_s3(96) <= \<const0>\;
  avs_readdata_s3(95) <= \<const0>\;
  avs_readdata_s3(94) <= \<const0>\;
  avs_readdata_s3(93) <= \<const0>\;
  avs_readdata_s3(92) <= \<const0>\;
  avs_readdata_s3(91) <= \<const0>\;
  avs_readdata_s3(90) <= \<const0>\;
  avs_readdata_s3(89) <= \<const0>\;
  avs_readdata_s3(88) <= \<const0>\;
  avs_readdata_s3(87) <= \<const0>\;
  avs_readdata_s3(86) <= \<const0>\;
  avs_readdata_s3(85) <= \<const0>\;
  avs_readdata_s3(84) <= \<const0>\;
  avs_readdata_s3(83) <= \<const0>\;
  avs_readdata_s3(82) <= \<const0>\;
  avs_readdata_s3(81) <= \<const0>\;
  avs_readdata_s3(80) <= \<const0>\;
  avs_readdata_s3(79) <= \<const0>\;
  avs_readdata_s3(78) <= \<const0>\;
  avs_readdata_s3(77) <= \<const0>\;
  avs_readdata_s3(76) <= \<const0>\;
  avs_readdata_s3(75) <= \<const0>\;
  avs_readdata_s3(74) <= \<const0>\;
  avs_readdata_s3(73) <= \<const0>\;
  avs_readdata_s3(72) <= \<const0>\;
  avs_readdata_s3(71) <= \<const0>\;
  avs_readdata_s3(70) <= \<const0>\;
  avs_readdata_s3(69) <= \<const0>\;
  avs_readdata_s3(68) <= \<const0>\;
  avs_readdata_s3(67) <= \<const0>\;
  avs_readdata_s3(66) <= \<const0>\;
  avs_readdata_s3(65) <= \<const0>\;
  avs_readdata_s3(64) <= \<const0>\;
  avs_readdata_s3(63) <= \<const0>\;
  avs_readdata_s3(62) <= \<const0>\;
  avs_readdata_s3(61) <= \<const0>\;
  avs_readdata_s3(60) <= \<const0>\;
  avs_readdata_s3(59) <= \<const0>\;
  avs_readdata_s3(58) <= \<const0>\;
  avs_readdata_s3(57) <= \<const0>\;
  avs_readdata_s3(56) <= \<const0>\;
  avs_readdata_s3(55) <= \<const0>\;
  avs_readdata_s3(54) <= \<const0>\;
  avs_readdata_s3(53) <= \<const0>\;
  avs_readdata_s3(52) <= \<const0>\;
  avs_readdata_s3(51) <= \<const0>\;
  avs_readdata_s3(50) <= \<const0>\;
  avs_readdata_s3(49) <= \<const0>\;
  avs_readdata_s3(48) <= \<const0>\;
  avs_readdata_s3(47) <= \<const0>\;
  avs_readdata_s3(46) <= \<const0>\;
  avs_readdata_s3(45) <= \<const0>\;
  avs_readdata_s3(44) <= \<const0>\;
  avs_readdata_s3(43) <= \<const0>\;
  avs_readdata_s3(42) <= \<const0>\;
  avs_readdata_s3(41) <= \<const0>\;
  avs_readdata_s3(40) <= \<const0>\;
  avs_readdata_s3(39) <= \<const0>\;
  avs_readdata_s3(38) <= \<const0>\;
  avs_readdata_s3(37) <= \<const0>\;
  avs_readdata_s3(36) <= \<const0>\;
  avs_readdata_s3(35) <= \<const0>\;
  avs_readdata_s3(34) <= \<const0>\;
  avs_readdata_s3(33) <= \<const0>\;
  avs_readdata_s3(32) <= \<const0>\;
  avs_readdata_s3(31) <= \<const0>\;
  avs_readdata_s3(30) <= \<const0>\;
  avs_readdata_s3(29) <= \<const0>\;
  avs_readdata_s3(28) <= \<const0>\;
  avs_readdata_s3(27) <= \<const0>\;
  avs_readdata_s3(26) <= \<const0>\;
  avs_readdata_s3(25) <= \<const0>\;
  avs_readdata_s3(24) <= \<const0>\;
  avs_readdata_s3(23) <= \<const0>\;
  avs_readdata_s3(22) <= \<const0>\;
  avs_readdata_s3(21) <= \<const0>\;
  avs_readdata_s3(20) <= \<const0>\;
  avs_readdata_s3(19) <= \<const0>\;
  avs_readdata_s3(18) <= \<const0>\;
  avs_readdata_s3(17) <= \<const0>\;
  avs_readdata_s3(16) <= \<const0>\;
  avs_readdata_s3(15) <= \<const0>\;
  avs_readdata_s3(14) <= \<const0>\;
  avs_readdata_s3(13) <= \<const0>\;
  avs_readdata_s3(12) <= \<const0>\;
  avs_readdata_s3(11) <= \<const0>\;
  avs_readdata_s3(10) <= \<const0>\;
  avs_readdata_s3(9) <= \<const0>\;
  avs_readdata_s3(8) <= \<const0>\;
  avs_readdata_s3(7) <= \<const0>\;
  avs_readdata_s3(6) <= \<const0>\;
  avs_readdata_s3(5) <= \<const0>\;
  avs_readdata_s3(4) <= \<const0>\;
  avs_readdata_s3(3) <= \<const0>\;
  avs_readdata_s3(2) <= \<const0>\;
  avs_readdata_s3(1) <= \<const0>\;
  avs_readdata_s3(0) <= \<const0>\;
  avs_readdata_s4(127) <= \<const0>\;
  avs_readdata_s4(126) <= \<const0>\;
  avs_readdata_s4(125) <= \<const0>\;
  avs_readdata_s4(124) <= \<const0>\;
  avs_readdata_s4(123) <= \<const0>\;
  avs_readdata_s4(122) <= \<const0>\;
  avs_readdata_s4(121) <= \<const0>\;
  avs_readdata_s4(120) <= \<const0>\;
  avs_readdata_s4(119) <= \<const0>\;
  avs_readdata_s4(118) <= \<const0>\;
  avs_readdata_s4(117) <= \<const0>\;
  avs_readdata_s4(116) <= \<const0>\;
  avs_readdata_s4(115) <= \<const0>\;
  avs_readdata_s4(114) <= \<const0>\;
  avs_readdata_s4(113) <= \<const0>\;
  avs_readdata_s4(112) <= \<const0>\;
  avs_readdata_s4(111) <= \<const0>\;
  avs_readdata_s4(110) <= \<const0>\;
  avs_readdata_s4(109) <= \<const0>\;
  avs_readdata_s4(108) <= \<const0>\;
  avs_readdata_s4(107) <= \<const0>\;
  avs_readdata_s4(106) <= \<const0>\;
  avs_readdata_s4(105) <= \<const0>\;
  avs_readdata_s4(104) <= \<const0>\;
  avs_readdata_s4(103) <= \<const0>\;
  avs_readdata_s4(102) <= \<const0>\;
  avs_readdata_s4(101) <= \<const0>\;
  avs_readdata_s4(100) <= \<const0>\;
  avs_readdata_s4(99) <= \<const0>\;
  avs_readdata_s4(98) <= \<const0>\;
  avs_readdata_s4(97) <= \<const0>\;
  avs_readdata_s4(96) <= \<const0>\;
  avs_readdata_s4(95) <= \<const0>\;
  avs_readdata_s4(94) <= \<const0>\;
  avs_readdata_s4(93) <= \<const0>\;
  avs_readdata_s4(92) <= \<const0>\;
  avs_readdata_s4(91) <= \<const0>\;
  avs_readdata_s4(90) <= \<const0>\;
  avs_readdata_s4(89) <= \<const0>\;
  avs_readdata_s4(88) <= \<const0>\;
  avs_readdata_s4(87) <= \<const0>\;
  avs_readdata_s4(86) <= \<const0>\;
  avs_readdata_s4(85) <= \<const0>\;
  avs_readdata_s4(84) <= \<const0>\;
  avs_readdata_s4(83) <= \<const0>\;
  avs_readdata_s4(82) <= \<const0>\;
  avs_readdata_s4(81) <= \<const0>\;
  avs_readdata_s4(80) <= \<const0>\;
  avs_readdata_s4(79) <= \<const0>\;
  avs_readdata_s4(78) <= \<const0>\;
  avs_readdata_s4(77) <= \<const0>\;
  avs_readdata_s4(76) <= \<const0>\;
  avs_readdata_s4(75) <= \<const0>\;
  avs_readdata_s4(74) <= \<const0>\;
  avs_readdata_s4(73) <= \<const0>\;
  avs_readdata_s4(72) <= \<const0>\;
  avs_readdata_s4(71) <= \<const0>\;
  avs_readdata_s4(70) <= \<const0>\;
  avs_readdata_s4(69) <= \<const0>\;
  avs_readdata_s4(68) <= \<const0>\;
  avs_readdata_s4(67) <= \<const0>\;
  avs_readdata_s4(66) <= \<const0>\;
  avs_readdata_s4(65) <= \<const0>\;
  avs_readdata_s4(64) <= \<const0>\;
  avs_readdata_s4(63) <= \<const0>\;
  avs_readdata_s4(62) <= \<const0>\;
  avs_readdata_s4(61) <= \<const0>\;
  avs_readdata_s4(60) <= \<const0>\;
  avs_readdata_s4(59) <= \<const0>\;
  avs_readdata_s4(58) <= \<const0>\;
  avs_readdata_s4(57) <= \<const0>\;
  avs_readdata_s4(56) <= \<const0>\;
  avs_readdata_s4(55) <= \<const0>\;
  avs_readdata_s4(54) <= \<const0>\;
  avs_readdata_s4(53) <= \<const0>\;
  avs_readdata_s4(52) <= \<const0>\;
  avs_readdata_s4(51) <= \<const0>\;
  avs_readdata_s4(50) <= \<const0>\;
  avs_readdata_s4(49) <= \<const0>\;
  avs_readdata_s4(48) <= \<const0>\;
  avs_readdata_s4(47) <= \<const0>\;
  avs_readdata_s4(46) <= \<const0>\;
  avs_readdata_s4(45) <= \<const0>\;
  avs_readdata_s4(44) <= \<const0>\;
  avs_readdata_s4(43) <= \<const0>\;
  avs_readdata_s4(42) <= \<const0>\;
  avs_readdata_s4(41) <= \<const0>\;
  avs_readdata_s4(40) <= \<const0>\;
  avs_readdata_s4(39) <= \<const0>\;
  avs_readdata_s4(38) <= \<const0>\;
  avs_readdata_s4(37) <= \<const0>\;
  avs_readdata_s4(36) <= \<const0>\;
  avs_readdata_s4(35) <= \<const0>\;
  avs_readdata_s4(34) <= \<const0>\;
  avs_readdata_s4(33) <= \<const0>\;
  avs_readdata_s4(32) <= \<const0>\;
  avs_readdata_s4(31) <= \<const0>\;
  avs_readdata_s4(30) <= \<const0>\;
  avs_readdata_s4(29) <= \<const0>\;
  avs_readdata_s4(28) <= \<const0>\;
  avs_readdata_s4(27) <= \<const0>\;
  avs_readdata_s4(26) <= \<const0>\;
  avs_readdata_s4(25) <= \<const0>\;
  avs_readdata_s4(24) <= \<const0>\;
  avs_readdata_s4(23) <= \<const0>\;
  avs_readdata_s4(22) <= \<const0>\;
  avs_readdata_s4(21) <= \<const0>\;
  avs_readdata_s4(20) <= \<const0>\;
  avs_readdata_s4(19) <= \<const0>\;
  avs_readdata_s4(18) <= \<const0>\;
  avs_readdata_s4(17) <= \<const0>\;
  avs_readdata_s4(16) <= \<const0>\;
  avs_readdata_s4(15) <= \<const0>\;
  avs_readdata_s4(14) <= \<const0>\;
  avs_readdata_s4(13) <= \<const0>\;
  avs_readdata_s4(12) <= \<const0>\;
  avs_readdata_s4(11) <= \<const0>\;
  avs_readdata_s4(10) <= \<const0>\;
  avs_readdata_s4(9) <= \<const0>\;
  avs_readdata_s4(8) <= \<const0>\;
  avs_readdata_s4(7) <= \<const0>\;
  avs_readdata_s4(6) <= \<const0>\;
  avs_readdata_s4(5) <= \<const0>\;
  avs_readdata_s4(4) <= \<const0>\;
  avs_readdata_s4(3) <= \<const0>\;
  avs_readdata_s4(2) <= \<const0>\;
  avs_readdata_s4(1) <= \<const0>\;
  avs_readdata_s4(0) <= \<const0>\;
  avs_readdata_s5(127) <= \<const0>\;
  avs_readdata_s5(126) <= \<const0>\;
  avs_readdata_s5(125) <= \<const0>\;
  avs_readdata_s5(124) <= \<const0>\;
  avs_readdata_s5(123) <= \<const0>\;
  avs_readdata_s5(122) <= \<const0>\;
  avs_readdata_s5(121) <= \<const0>\;
  avs_readdata_s5(120) <= \<const0>\;
  avs_readdata_s5(119) <= \<const0>\;
  avs_readdata_s5(118) <= \<const0>\;
  avs_readdata_s5(117) <= \<const0>\;
  avs_readdata_s5(116) <= \<const0>\;
  avs_readdata_s5(115) <= \<const0>\;
  avs_readdata_s5(114) <= \<const0>\;
  avs_readdata_s5(113) <= \<const0>\;
  avs_readdata_s5(112) <= \<const0>\;
  avs_readdata_s5(111) <= \<const0>\;
  avs_readdata_s5(110) <= \<const0>\;
  avs_readdata_s5(109) <= \<const0>\;
  avs_readdata_s5(108) <= \<const0>\;
  avs_readdata_s5(107) <= \<const0>\;
  avs_readdata_s5(106) <= \<const0>\;
  avs_readdata_s5(105) <= \<const0>\;
  avs_readdata_s5(104) <= \<const0>\;
  avs_readdata_s5(103) <= \<const0>\;
  avs_readdata_s5(102) <= \<const0>\;
  avs_readdata_s5(101) <= \<const0>\;
  avs_readdata_s5(100) <= \<const0>\;
  avs_readdata_s5(99) <= \<const0>\;
  avs_readdata_s5(98) <= \<const0>\;
  avs_readdata_s5(97) <= \<const0>\;
  avs_readdata_s5(96) <= \<const0>\;
  avs_readdata_s5(95) <= \<const0>\;
  avs_readdata_s5(94) <= \<const0>\;
  avs_readdata_s5(93) <= \<const0>\;
  avs_readdata_s5(92) <= \<const0>\;
  avs_readdata_s5(91) <= \<const0>\;
  avs_readdata_s5(90) <= \<const0>\;
  avs_readdata_s5(89) <= \<const0>\;
  avs_readdata_s5(88) <= \<const0>\;
  avs_readdata_s5(87) <= \<const0>\;
  avs_readdata_s5(86) <= \<const0>\;
  avs_readdata_s5(85) <= \<const0>\;
  avs_readdata_s5(84) <= \<const0>\;
  avs_readdata_s5(83) <= \<const0>\;
  avs_readdata_s5(82) <= \<const0>\;
  avs_readdata_s5(81) <= \<const0>\;
  avs_readdata_s5(80) <= \<const0>\;
  avs_readdata_s5(79) <= \<const0>\;
  avs_readdata_s5(78) <= \<const0>\;
  avs_readdata_s5(77) <= \<const0>\;
  avs_readdata_s5(76) <= \<const0>\;
  avs_readdata_s5(75) <= \<const0>\;
  avs_readdata_s5(74) <= \<const0>\;
  avs_readdata_s5(73) <= \<const0>\;
  avs_readdata_s5(72) <= \<const0>\;
  avs_readdata_s5(71) <= \<const0>\;
  avs_readdata_s5(70) <= \<const0>\;
  avs_readdata_s5(69) <= \<const0>\;
  avs_readdata_s5(68) <= \<const0>\;
  avs_readdata_s5(67) <= \<const0>\;
  avs_readdata_s5(66) <= \<const0>\;
  avs_readdata_s5(65) <= \<const0>\;
  avs_readdata_s5(64) <= \<const0>\;
  avs_readdata_s5(63) <= \<const0>\;
  avs_readdata_s5(62) <= \<const0>\;
  avs_readdata_s5(61) <= \<const0>\;
  avs_readdata_s5(60) <= \<const0>\;
  avs_readdata_s5(59) <= \<const0>\;
  avs_readdata_s5(58) <= \<const0>\;
  avs_readdata_s5(57) <= \<const0>\;
  avs_readdata_s5(56) <= \<const0>\;
  avs_readdata_s5(55) <= \<const0>\;
  avs_readdata_s5(54) <= \<const0>\;
  avs_readdata_s5(53) <= \<const0>\;
  avs_readdata_s5(52) <= \<const0>\;
  avs_readdata_s5(51) <= \<const0>\;
  avs_readdata_s5(50) <= \<const0>\;
  avs_readdata_s5(49) <= \<const0>\;
  avs_readdata_s5(48) <= \<const0>\;
  avs_readdata_s5(47) <= \<const0>\;
  avs_readdata_s5(46) <= \<const0>\;
  avs_readdata_s5(45) <= \<const0>\;
  avs_readdata_s5(44) <= \<const0>\;
  avs_readdata_s5(43) <= \<const0>\;
  avs_readdata_s5(42) <= \<const0>\;
  avs_readdata_s5(41) <= \<const0>\;
  avs_readdata_s5(40) <= \<const0>\;
  avs_readdata_s5(39) <= \<const0>\;
  avs_readdata_s5(38) <= \<const0>\;
  avs_readdata_s5(37) <= \<const0>\;
  avs_readdata_s5(36) <= \<const0>\;
  avs_readdata_s5(35) <= \<const0>\;
  avs_readdata_s5(34) <= \<const0>\;
  avs_readdata_s5(33) <= \<const0>\;
  avs_readdata_s5(32) <= \<const0>\;
  avs_readdata_s5(31) <= \<const0>\;
  avs_readdata_s5(30) <= \<const0>\;
  avs_readdata_s5(29) <= \<const0>\;
  avs_readdata_s5(28) <= \<const0>\;
  avs_readdata_s5(27) <= \<const0>\;
  avs_readdata_s5(26) <= \<const0>\;
  avs_readdata_s5(25) <= \<const0>\;
  avs_readdata_s5(24) <= \<const0>\;
  avs_readdata_s5(23) <= \<const0>\;
  avs_readdata_s5(22) <= \<const0>\;
  avs_readdata_s5(21) <= \<const0>\;
  avs_readdata_s5(20) <= \<const0>\;
  avs_readdata_s5(19) <= \<const0>\;
  avs_readdata_s5(18) <= \<const0>\;
  avs_readdata_s5(17) <= \<const0>\;
  avs_readdata_s5(16) <= \<const0>\;
  avs_readdata_s5(15) <= \<const0>\;
  avs_readdata_s5(14) <= \<const0>\;
  avs_readdata_s5(13) <= \<const0>\;
  avs_readdata_s5(12) <= \<const0>\;
  avs_readdata_s5(11) <= \<const0>\;
  avs_readdata_s5(10) <= \<const0>\;
  avs_readdata_s5(9) <= \<const0>\;
  avs_readdata_s5(8) <= \<const0>\;
  avs_readdata_s5(7) <= \<const0>\;
  avs_readdata_s5(6) <= \<const0>\;
  avs_readdata_s5(5) <= \<const0>\;
  avs_readdata_s5(4) <= \<const0>\;
  avs_readdata_s5(3) <= \<const0>\;
  avs_readdata_s5(2) <= \<const0>\;
  avs_readdata_s5(1) <= \<const0>\;
  avs_readdata_s5(0) <= \<const0>\;
  avs_readdata_s6(127) <= \<const0>\;
  avs_readdata_s6(126) <= \<const0>\;
  avs_readdata_s6(125) <= \<const0>\;
  avs_readdata_s6(124) <= \<const0>\;
  avs_readdata_s6(123) <= \<const0>\;
  avs_readdata_s6(122) <= \<const0>\;
  avs_readdata_s6(121) <= \<const0>\;
  avs_readdata_s6(120) <= \<const0>\;
  avs_readdata_s6(119) <= \<const0>\;
  avs_readdata_s6(118) <= \<const0>\;
  avs_readdata_s6(117) <= \<const0>\;
  avs_readdata_s6(116) <= \<const0>\;
  avs_readdata_s6(115) <= \<const0>\;
  avs_readdata_s6(114) <= \<const0>\;
  avs_readdata_s6(113) <= \<const0>\;
  avs_readdata_s6(112) <= \<const0>\;
  avs_readdata_s6(111) <= \<const0>\;
  avs_readdata_s6(110) <= \<const0>\;
  avs_readdata_s6(109) <= \<const0>\;
  avs_readdata_s6(108) <= \<const0>\;
  avs_readdata_s6(107) <= \<const0>\;
  avs_readdata_s6(106) <= \<const0>\;
  avs_readdata_s6(105) <= \<const0>\;
  avs_readdata_s6(104) <= \<const0>\;
  avs_readdata_s6(103) <= \<const0>\;
  avs_readdata_s6(102) <= \<const0>\;
  avs_readdata_s6(101) <= \<const0>\;
  avs_readdata_s6(100) <= \<const0>\;
  avs_readdata_s6(99) <= \<const0>\;
  avs_readdata_s6(98) <= \<const0>\;
  avs_readdata_s6(97) <= \<const0>\;
  avs_readdata_s6(96) <= \<const0>\;
  avs_readdata_s6(95) <= \<const0>\;
  avs_readdata_s6(94) <= \<const0>\;
  avs_readdata_s6(93) <= \<const0>\;
  avs_readdata_s6(92) <= \<const0>\;
  avs_readdata_s6(91) <= \<const0>\;
  avs_readdata_s6(90) <= \<const0>\;
  avs_readdata_s6(89) <= \<const0>\;
  avs_readdata_s6(88) <= \<const0>\;
  avs_readdata_s6(87) <= \<const0>\;
  avs_readdata_s6(86) <= \<const0>\;
  avs_readdata_s6(85) <= \<const0>\;
  avs_readdata_s6(84) <= \<const0>\;
  avs_readdata_s6(83) <= \<const0>\;
  avs_readdata_s6(82) <= \<const0>\;
  avs_readdata_s6(81) <= \<const0>\;
  avs_readdata_s6(80) <= \<const0>\;
  avs_readdata_s6(79) <= \<const0>\;
  avs_readdata_s6(78) <= \<const0>\;
  avs_readdata_s6(77) <= \<const0>\;
  avs_readdata_s6(76) <= \<const0>\;
  avs_readdata_s6(75) <= \<const0>\;
  avs_readdata_s6(74) <= \<const0>\;
  avs_readdata_s6(73) <= \<const0>\;
  avs_readdata_s6(72) <= \<const0>\;
  avs_readdata_s6(71) <= \<const0>\;
  avs_readdata_s6(70) <= \<const0>\;
  avs_readdata_s6(69) <= \<const0>\;
  avs_readdata_s6(68) <= \<const0>\;
  avs_readdata_s6(67) <= \<const0>\;
  avs_readdata_s6(66) <= \<const0>\;
  avs_readdata_s6(65) <= \<const0>\;
  avs_readdata_s6(64) <= \<const0>\;
  avs_readdata_s6(63) <= \<const0>\;
  avs_readdata_s6(62) <= \<const0>\;
  avs_readdata_s6(61) <= \<const0>\;
  avs_readdata_s6(60) <= \<const0>\;
  avs_readdata_s6(59) <= \<const0>\;
  avs_readdata_s6(58) <= \<const0>\;
  avs_readdata_s6(57) <= \<const0>\;
  avs_readdata_s6(56) <= \<const0>\;
  avs_readdata_s6(55) <= \<const0>\;
  avs_readdata_s6(54) <= \<const0>\;
  avs_readdata_s6(53) <= \<const0>\;
  avs_readdata_s6(52) <= \<const0>\;
  avs_readdata_s6(51) <= \<const0>\;
  avs_readdata_s6(50) <= \<const0>\;
  avs_readdata_s6(49) <= \<const0>\;
  avs_readdata_s6(48) <= \<const0>\;
  avs_readdata_s6(47) <= \<const0>\;
  avs_readdata_s6(46) <= \<const0>\;
  avs_readdata_s6(45) <= \<const0>\;
  avs_readdata_s6(44) <= \<const0>\;
  avs_readdata_s6(43) <= \<const0>\;
  avs_readdata_s6(42) <= \<const0>\;
  avs_readdata_s6(41) <= \<const0>\;
  avs_readdata_s6(40) <= \<const0>\;
  avs_readdata_s6(39) <= \<const0>\;
  avs_readdata_s6(38) <= \<const0>\;
  avs_readdata_s6(37) <= \<const0>\;
  avs_readdata_s6(36) <= \<const0>\;
  avs_readdata_s6(35) <= \<const0>\;
  avs_readdata_s6(34) <= \<const0>\;
  avs_readdata_s6(33) <= \<const0>\;
  avs_readdata_s6(32) <= \<const0>\;
  avs_readdata_s6(31) <= \<const0>\;
  avs_readdata_s6(30) <= \<const0>\;
  avs_readdata_s6(29) <= \<const0>\;
  avs_readdata_s6(28) <= \<const0>\;
  avs_readdata_s6(27) <= \<const0>\;
  avs_readdata_s6(26) <= \<const0>\;
  avs_readdata_s6(25) <= \<const0>\;
  avs_readdata_s6(24) <= \<const0>\;
  avs_readdata_s6(23) <= \<const0>\;
  avs_readdata_s6(22) <= \<const0>\;
  avs_readdata_s6(21) <= \<const0>\;
  avs_readdata_s6(20) <= \<const0>\;
  avs_readdata_s6(19) <= \<const0>\;
  avs_readdata_s6(18) <= \<const0>\;
  avs_readdata_s6(17) <= \<const0>\;
  avs_readdata_s6(16) <= \<const0>\;
  avs_readdata_s6(15) <= \<const0>\;
  avs_readdata_s6(14) <= \<const0>\;
  avs_readdata_s6(13) <= \<const0>\;
  avs_readdata_s6(12) <= \<const0>\;
  avs_readdata_s6(11) <= \<const0>\;
  avs_readdata_s6(10) <= \<const0>\;
  avs_readdata_s6(9) <= \<const0>\;
  avs_readdata_s6(8) <= \<const0>\;
  avs_readdata_s6(7) <= \<const0>\;
  avs_readdata_s6(6) <= \<const0>\;
  avs_readdata_s6(5) <= \<const0>\;
  avs_readdata_s6(4) <= \<const0>\;
  avs_readdata_s6(3) <= \<const0>\;
  avs_readdata_s6(2) <= \<const0>\;
  avs_readdata_s6(1) <= \<const0>\;
  avs_readdata_s6(0) <= \<const0>\;
  avs_readdata_s7(127) <= \<const0>\;
  avs_readdata_s7(126) <= \<const0>\;
  avs_readdata_s7(125) <= \<const0>\;
  avs_readdata_s7(124) <= \<const0>\;
  avs_readdata_s7(123) <= \<const0>\;
  avs_readdata_s7(122) <= \<const0>\;
  avs_readdata_s7(121) <= \<const0>\;
  avs_readdata_s7(120) <= \<const0>\;
  avs_readdata_s7(119) <= \<const0>\;
  avs_readdata_s7(118) <= \<const0>\;
  avs_readdata_s7(117) <= \<const0>\;
  avs_readdata_s7(116) <= \<const0>\;
  avs_readdata_s7(115) <= \<const0>\;
  avs_readdata_s7(114) <= \<const0>\;
  avs_readdata_s7(113) <= \<const0>\;
  avs_readdata_s7(112) <= \<const0>\;
  avs_readdata_s7(111) <= \<const0>\;
  avs_readdata_s7(110) <= \<const0>\;
  avs_readdata_s7(109) <= \<const0>\;
  avs_readdata_s7(108) <= \<const0>\;
  avs_readdata_s7(107) <= \<const0>\;
  avs_readdata_s7(106) <= \<const0>\;
  avs_readdata_s7(105) <= \<const0>\;
  avs_readdata_s7(104) <= \<const0>\;
  avs_readdata_s7(103) <= \<const0>\;
  avs_readdata_s7(102) <= \<const0>\;
  avs_readdata_s7(101) <= \<const0>\;
  avs_readdata_s7(100) <= \<const0>\;
  avs_readdata_s7(99) <= \<const0>\;
  avs_readdata_s7(98) <= \<const0>\;
  avs_readdata_s7(97) <= \<const0>\;
  avs_readdata_s7(96) <= \<const0>\;
  avs_readdata_s7(95) <= \<const0>\;
  avs_readdata_s7(94) <= \<const0>\;
  avs_readdata_s7(93) <= \<const0>\;
  avs_readdata_s7(92) <= \<const0>\;
  avs_readdata_s7(91) <= \<const0>\;
  avs_readdata_s7(90) <= \<const0>\;
  avs_readdata_s7(89) <= \<const0>\;
  avs_readdata_s7(88) <= \<const0>\;
  avs_readdata_s7(87) <= \<const0>\;
  avs_readdata_s7(86) <= \<const0>\;
  avs_readdata_s7(85) <= \<const0>\;
  avs_readdata_s7(84) <= \<const0>\;
  avs_readdata_s7(83) <= \<const0>\;
  avs_readdata_s7(82) <= \<const0>\;
  avs_readdata_s7(81) <= \<const0>\;
  avs_readdata_s7(80) <= \<const0>\;
  avs_readdata_s7(79) <= \<const0>\;
  avs_readdata_s7(78) <= \<const0>\;
  avs_readdata_s7(77) <= \<const0>\;
  avs_readdata_s7(76) <= \<const0>\;
  avs_readdata_s7(75) <= \<const0>\;
  avs_readdata_s7(74) <= \<const0>\;
  avs_readdata_s7(73) <= \<const0>\;
  avs_readdata_s7(72) <= \<const0>\;
  avs_readdata_s7(71) <= \<const0>\;
  avs_readdata_s7(70) <= \<const0>\;
  avs_readdata_s7(69) <= \<const0>\;
  avs_readdata_s7(68) <= \<const0>\;
  avs_readdata_s7(67) <= \<const0>\;
  avs_readdata_s7(66) <= \<const0>\;
  avs_readdata_s7(65) <= \<const0>\;
  avs_readdata_s7(64) <= \<const0>\;
  avs_readdata_s7(63) <= \<const0>\;
  avs_readdata_s7(62) <= \<const0>\;
  avs_readdata_s7(61) <= \<const0>\;
  avs_readdata_s7(60) <= \<const0>\;
  avs_readdata_s7(59) <= \<const0>\;
  avs_readdata_s7(58) <= \<const0>\;
  avs_readdata_s7(57) <= \<const0>\;
  avs_readdata_s7(56) <= \<const0>\;
  avs_readdata_s7(55) <= \<const0>\;
  avs_readdata_s7(54) <= \<const0>\;
  avs_readdata_s7(53) <= \<const0>\;
  avs_readdata_s7(52) <= \<const0>\;
  avs_readdata_s7(51) <= \<const0>\;
  avs_readdata_s7(50) <= \<const0>\;
  avs_readdata_s7(49) <= \<const0>\;
  avs_readdata_s7(48) <= \<const0>\;
  avs_readdata_s7(47) <= \<const0>\;
  avs_readdata_s7(46) <= \<const0>\;
  avs_readdata_s7(45) <= \<const0>\;
  avs_readdata_s7(44) <= \<const0>\;
  avs_readdata_s7(43) <= \<const0>\;
  avs_readdata_s7(42) <= \<const0>\;
  avs_readdata_s7(41) <= \<const0>\;
  avs_readdata_s7(40) <= \<const0>\;
  avs_readdata_s7(39) <= \<const0>\;
  avs_readdata_s7(38) <= \<const0>\;
  avs_readdata_s7(37) <= \<const0>\;
  avs_readdata_s7(36) <= \<const0>\;
  avs_readdata_s7(35) <= \<const0>\;
  avs_readdata_s7(34) <= \<const0>\;
  avs_readdata_s7(33) <= \<const0>\;
  avs_readdata_s7(32) <= \<const0>\;
  avs_readdata_s7(31) <= \<const0>\;
  avs_readdata_s7(30) <= \<const0>\;
  avs_readdata_s7(29) <= \<const0>\;
  avs_readdata_s7(28) <= \<const0>\;
  avs_readdata_s7(27) <= \<const0>\;
  avs_readdata_s7(26) <= \<const0>\;
  avs_readdata_s7(25) <= \<const0>\;
  avs_readdata_s7(24) <= \<const0>\;
  avs_readdata_s7(23) <= \<const0>\;
  avs_readdata_s7(22) <= \<const0>\;
  avs_readdata_s7(21) <= \<const0>\;
  avs_readdata_s7(20) <= \<const0>\;
  avs_readdata_s7(19) <= \<const0>\;
  avs_readdata_s7(18) <= \<const0>\;
  avs_readdata_s7(17) <= \<const0>\;
  avs_readdata_s7(16) <= \<const0>\;
  avs_readdata_s7(15) <= \<const0>\;
  avs_readdata_s7(14) <= \<const0>\;
  avs_readdata_s7(13) <= \<const0>\;
  avs_readdata_s7(12) <= \<const0>\;
  avs_readdata_s7(11) <= \<const0>\;
  avs_readdata_s7(10) <= \<const0>\;
  avs_readdata_s7(9) <= \<const0>\;
  avs_readdata_s7(8) <= \<const0>\;
  avs_readdata_s7(7) <= \<const0>\;
  avs_readdata_s7(6) <= \<const0>\;
  avs_readdata_s7(5) <= \<const0>\;
  avs_readdata_s7(4) <= \<const0>\;
  avs_readdata_s7(3) <= \<const0>\;
  avs_readdata_s7(2) <= \<const0>\;
  avs_readdata_s7(1) <= \<const0>\;
  avs_readdata_s7(0) <= \<const0>\;
  avs_readdatavalid_s1 <= \<const0>\;
  avs_readdatavalid_s2 <= \<const0>\;
  avs_readdatavalid_s3 <= \<const0>\;
  avs_readdatavalid_s4 <= \<const0>\;
  avs_readdatavalid_s5 <= \<const0>\;
  avs_readdatavalid_s6 <= \<const0>\;
  avs_readdatavalid_s7 <= \<const0>\;
  avs_waitrequest_s1 <= \<const1>\;
  avs_waitrequest_s2 <= \<const1>\;
  avs_waitrequest_s3 <= \<const1>\;
  avs_waitrequest_s4 <= \<const1>\;
  avs_waitrequest_s5 <= \<const1>\;
  avs_waitrequest_s6 <= \<const1>\;
  avs_waitrequest_s7 <= \<const1>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \^m_axi_arburst\(0);
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const1>\;
  m_axi_arcache(0) <= \<const1>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arsize(2) <= \^m_axi_arsize\(2);
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(3) <= \<const0>\;
  m_axi_aruser(2) <= \<const0>\;
  m_axi_aruser(1) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(3) <= \<const0>\;
  m_axi_awuser(2) <= \<const0>\;
  m_axi_awuser(1) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_wdata(127) <= \<const0>\;
  m_axi_wdata(126) <= \<const0>\;
  m_axi_wdata(125) <= \<const0>\;
  m_axi_wdata(124) <= \<const0>\;
  m_axi_wdata(123) <= \<const0>\;
  m_axi_wdata(122) <= \<const0>\;
  m_axi_wdata(121) <= \<const0>\;
  m_axi_wdata(120) <= \<const0>\;
  m_axi_wdata(119) <= \<const0>\;
  m_axi_wdata(118) <= \<const0>\;
  m_axi_wdata(117) <= \<const0>\;
  m_axi_wdata(116) <= \<const0>\;
  m_axi_wdata(115) <= \<const0>\;
  m_axi_wdata(114) <= \<const0>\;
  m_axi_wdata(113) <= \<const0>\;
  m_axi_wdata(112) <= \<const0>\;
  m_axi_wdata(111) <= \<const0>\;
  m_axi_wdata(110) <= \<const0>\;
  m_axi_wdata(109) <= \<const0>\;
  m_axi_wdata(108) <= \<const0>\;
  m_axi_wdata(107) <= \<const0>\;
  m_axi_wdata(106) <= \<const0>\;
  m_axi_wdata(105) <= \<const0>\;
  m_axi_wdata(104) <= \<const0>\;
  m_axi_wdata(103) <= \<const0>\;
  m_axi_wdata(102) <= \<const0>\;
  m_axi_wdata(101) <= \<const0>\;
  m_axi_wdata(100) <= \<const0>\;
  m_axi_wdata(99) <= \<const0>\;
  m_axi_wdata(98) <= \<const0>\;
  m_axi_wdata(97) <= \<const0>\;
  m_axi_wdata(96) <= \<const0>\;
  m_axi_wdata(95) <= \<const0>\;
  m_axi_wdata(94) <= \<const0>\;
  m_axi_wdata(93) <= \<const0>\;
  m_axi_wdata(92) <= \<const0>\;
  m_axi_wdata(91) <= \<const0>\;
  m_axi_wdata(90) <= \<const0>\;
  m_axi_wdata(89) <= \<const0>\;
  m_axi_wdata(88) <= \<const0>\;
  m_axi_wdata(87) <= \<const0>\;
  m_axi_wdata(86) <= \<const0>\;
  m_axi_wdata(85) <= \<const0>\;
  m_axi_wdata(84) <= \<const0>\;
  m_axi_wdata(83) <= \<const0>\;
  m_axi_wdata(82) <= \<const0>\;
  m_axi_wdata(81) <= \<const0>\;
  m_axi_wdata(80) <= \<const0>\;
  m_axi_wdata(79) <= \<const0>\;
  m_axi_wdata(78) <= \<const0>\;
  m_axi_wdata(77) <= \<const0>\;
  m_axi_wdata(76) <= \<const0>\;
  m_axi_wdata(75) <= \<const0>\;
  m_axi_wdata(74) <= \<const0>\;
  m_axi_wdata(73) <= \<const0>\;
  m_axi_wdata(72) <= \<const0>\;
  m_axi_wdata(71) <= \<const0>\;
  m_axi_wdata(70) <= \<const0>\;
  m_axi_wdata(69) <= \<const0>\;
  m_axi_wdata(68) <= \<const0>\;
  m_axi_wdata(67) <= \<const0>\;
  m_axi_wdata(66) <= \<const0>\;
  m_axi_wdata(65) <= \<const0>\;
  m_axi_wdata(64) <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(15) <= \<const0>\;
  m_axi_wstrb(14) <= \<const0>\;
  m_axi_wstrb(13) <= \<const0>\;
  m_axi_wstrb(12) <= \<const0>\;
  m_axi_wstrb(11) <= \<const0>\;
  m_axi_wstrb(10) <= \<const0>\;
  m_axi_wstrb(9) <= \<const0>\;
  m_axi_wstrb(8) <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  read_error_master_ID(2) <= \<const0>\;
  read_error_master_ID(1) <= \<const0>\;
  read_error_master_ID(0) <= \<const0>\;
  write_error <= \<const0>\;
  write_error_master_ID(2) <= \<const0>\;
  write_error_master_ID(1) <= \<const0>\;
  write_error_master_ID(0) <= \<const0>\;
  write_error_valid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
I_DATAMOVER: entity work.amm_bridge_axi_datamover
     port map (
      D(42 downto 11) => address(31 downto 0),
      D(10 downto 0) => burstcount_reg(10 downto 0),
      E(0) => \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/sig_push_regfifo\,
      aresetn => aresetn,
      clk => clk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(0) => \^m_axi_arburst\(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(0) => \^m_axi_arsize\(2),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      mm2s_cmd_ready => mm2s_cmd_ready,
      mm2s_cmd_valid => mm2s_cmd_valid,
      read_error => read_error,
      read_error_valid => read_error_valid,
      sig_dqual_reg_full_reg => avs_readdatavalid_s0
    );
\READ_TOP.amm_axi_bridge_v1_0_4_read_multi_top_1\: entity work.amm_bridge_amm_axi_bridge_v1_0_4_read_multi
     port map (
      D(42 downto 11) => address(31 downto 0),
      D(10 downto 0) => burstcount_reg(10 downto 0),
      E(0) => \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/sig_push_regfifo\,
      aresetn => aresetn,
      avs_address_s0(31 downto 0) => avs_address_s0(31 downto 0),
      avs_burstcount_s0(10 downto 0) => avs_burstcount_s0(10 downto 0),
      avs_read_s0 => avs_read_s0,
      avs_waitrequest_s0 => avs_waitrequest_s0,
      clk => clk,
      mm2s_cmd_ready => mm2s_cmd_ready,
      mm2s_cmd_valid => mm2s_cmd_valid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity amm_bridge is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    read_error : out STD_LOGIC;
    read_error_valid : out STD_LOGIC;
    read_error_master_ID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    avs_address_s0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avs_read_s0 : in STD_LOGIC;
    avs_readdata_s0 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdatavalid_s0 : out STD_LOGIC;
    avs_waitrequest_s0 : out STD_LOGIC;
    avs_burstcount_s0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of amm_bridge : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of amm_bridge : entity is "amm_bridge,amm_axi_bridge_v1_0_4_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of amm_bridge : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of amm_bridge : entity is "amm_axi_bridge_v1_0_4_top,Vivado 2018.3.1";
end amm_bridge;

architecture STRUCTURE of amm_bridge is
  signal NLW_inst_avs_readdatavalid_s1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_avs_readdatavalid_s2_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_avs_readdatavalid_s3_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_avs_readdatavalid_s4_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_avs_readdatavalid_s5_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_avs_readdatavalid_s6_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_avs_readdatavalid_s7_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_avs_waitrequest_s1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_avs_waitrequest_s2_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_avs_waitrequest_s3_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_avs_waitrequest_s4_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_avs_waitrequest_s5_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_avs_waitrequest_s6_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_avs_waitrequest_s7_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_write_error_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_write_error_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_avs_readdata_s1_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_inst_avs_readdata_s2_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_inst_avs_readdata_s3_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_inst_avs_readdata_s4_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_inst_avs_readdata_s5_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_inst_avs_readdata_s6_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_inst_avs_readdata_s7_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_inst_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_inst_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_write_error_master_ID_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute C_AVA_ADDR_WIDTH : integer;
  attribute C_AVA_ADDR_WIDTH of inst : label is 32;
  attribute C_AVA_BURSTCOUNTWIDTH : integer;
  attribute C_AVA_BURSTCOUNTWIDTH of inst : label is 11;
  attribute C_AVA_BYTEENABLES : integer;
  attribute C_AVA_BYTEENABLES of inst : label is 0;
  attribute C_AVA_DATA_WIDTH : integer;
  attribute C_AVA_DATA_WIDTH of inst : label is 128;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_ENABLE_PIPELINE : integer;
  attribute C_ENABLE_PIPELINE of inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "artix7";
  attribute C_INCLUDE_MM2S : integer;
  attribute C_INCLUDE_MM2S of inst : label is 1;
  attribute C_INCLUDE_S2MM : integer;
  attribute C_INCLUDE_S2MM of inst : label is 0;
  attribute C_MODE : integer;
  attribute C_MODE of inst : label is 0;
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_NUM_MASTERS : integer;
  attribute C_NUM_MASTERS of inst : label is 1;
  attribute C_PIPELINE_DEPTH : integer;
  attribute C_PIPELINE_DEPTH of inst : label is 1;
  attribute C_STATUSWIDTH : integer;
  attribute C_STATUSWIDTH of inst : label is 8;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of avs_read_s0 : signal is "xilinx.com:interface:avalon:1.0 Avalon_S0 READ";
  attribute X_INTERFACE_INFO of avs_readdatavalid_s0 : signal is "xilinx.com:interface:avalon:1.0 Avalon_S0 READDATAVALID";
  attribute X_INTERFACE_INFO of avs_waitrequest_s0 : signal is "xilinx.com:interface:avalon:1.0 Avalon_S0 WAITREQUEST";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 4, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of avs_address_s0 : signal is "xilinx.com:interface:avalon:1.0 Avalon_S0 ADDRESS";
  attribute X_INTERFACE_INFO of avs_burstcount_s0 : signal is "xilinx.com:interface:avalon:1.0 Avalon_S0 BURSTCOUNT";
  attribute X_INTERFACE_INFO of avs_readdata_s0 : signal is "xilinx.com:interface:avalon:1.0 Avalon_S0 READDATA";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_aruser : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARUSER";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
begin
inst: entity work.amm_bridge_amm_axi_bridge_v1_0_4_top
     port map (
      aresetn => aresetn,
      avs_address_s0(31 downto 0) => avs_address_s0(31 downto 0),
      avs_address_s1(31 downto 0) => B"00000000000000000000000000000000",
      avs_address_s2(31 downto 0) => B"00000000000000000000000000000000",
      avs_address_s3(31 downto 0) => B"00000000000000000000000000000000",
      avs_address_s4(31 downto 0) => B"00000000000000000000000000000000",
      avs_address_s5(31 downto 0) => B"00000000000000000000000000000000",
      avs_address_s6(31 downto 0) => B"00000000000000000000000000000000",
      avs_address_s7(31 downto 0) => B"00000000000000000000000000000000",
      avs_burstcount_s0(10 downto 0) => avs_burstcount_s0(10 downto 0),
      avs_burstcount_s1(10 downto 0) => B"00000000000",
      avs_burstcount_s2(10 downto 0) => B"00000000000",
      avs_burstcount_s3(10 downto 0) => B"00000000000",
      avs_burstcount_s4(10 downto 0) => B"00000000000",
      avs_burstcount_s5(10 downto 0) => B"00000000000",
      avs_burstcount_s6(10 downto 0) => B"00000000000",
      avs_burstcount_s7(10 downto 0) => B"00000000000",
      avs_byteenable_s0(15 downto 0) => B"0000000000000000",
      avs_byteenable_s1(15 downto 0) => B"0000000000000000",
      avs_byteenable_s2(15 downto 0) => B"0000000000000000",
      avs_byteenable_s3(15 downto 0) => B"0000000000000000",
      avs_byteenable_s4(15 downto 0) => B"0000000000000000",
      avs_byteenable_s5(15 downto 0) => B"0000000000000000",
      avs_byteenable_s6(15 downto 0) => B"0000000000000000",
      avs_byteenable_s7(15 downto 0) => B"0000000000000000",
      avs_read_s0 => avs_read_s0,
      avs_read_s1 => '0',
      avs_read_s2 => '0',
      avs_read_s3 => '0',
      avs_read_s4 => '0',
      avs_read_s5 => '0',
      avs_read_s6 => '0',
      avs_read_s7 => '0',
      avs_readdata_s0(127 downto 0) => avs_readdata_s0(127 downto 0),
      avs_readdata_s1(127 downto 0) => NLW_inst_avs_readdata_s1_UNCONNECTED(127 downto 0),
      avs_readdata_s2(127 downto 0) => NLW_inst_avs_readdata_s2_UNCONNECTED(127 downto 0),
      avs_readdata_s3(127 downto 0) => NLW_inst_avs_readdata_s3_UNCONNECTED(127 downto 0),
      avs_readdata_s4(127 downto 0) => NLW_inst_avs_readdata_s4_UNCONNECTED(127 downto 0),
      avs_readdata_s5(127 downto 0) => NLW_inst_avs_readdata_s5_UNCONNECTED(127 downto 0),
      avs_readdata_s6(127 downto 0) => NLW_inst_avs_readdata_s6_UNCONNECTED(127 downto 0),
      avs_readdata_s7(127 downto 0) => NLW_inst_avs_readdata_s7_UNCONNECTED(127 downto 0),
      avs_readdatavalid_s0 => avs_readdatavalid_s0,
      avs_readdatavalid_s1 => NLW_inst_avs_readdatavalid_s1_UNCONNECTED,
      avs_readdatavalid_s2 => NLW_inst_avs_readdatavalid_s2_UNCONNECTED,
      avs_readdatavalid_s3 => NLW_inst_avs_readdatavalid_s3_UNCONNECTED,
      avs_readdatavalid_s4 => NLW_inst_avs_readdatavalid_s4_UNCONNECTED,
      avs_readdatavalid_s5 => NLW_inst_avs_readdatavalid_s5_UNCONNECTED,
      avs_readdatavalid_s6 => NLW_inst_avs_readdatavalid_s6_UNCONNECTED,
      avs_readdatavalid_s7 => NLW_inst_avs_readdatavalid_s7_UNCONNECTED,
      avs_waitrequest_s0 => avs_waitrequest_s0,
      avs_waitrequest_s1 => NLW_inst_avs_waitrequest_s1_UNCONNECTED,
      avs_waitrequest_s2 => NLW_inst_avs_waitrequest_s2_UNCONNECTED,
      avs_waitrequest_s3 => NLW_inst_avs_waitrequest_s3_UNCONNECTED,
      avs_waitrequest_s4 => NLW_inst_avs_waitrequest_s4_UNCONNECTED,
      avs_waitrequest_s5 => NLW_inst_avs_waitrequest_s5_UNCONNECTED,
      avs_waitrequest_s6 => NLW_inst_avs_waitrequest_s6_UNCONNECTED,
      avs_waitrequest_s7 => NLW_inst_avs_waitrequest_s7_UNCONNECTED,
      avs_write_s0 => '0',
      avs_write_s1 => '0',
      avs_write_s2 => '0',
      avs_write_s3 => '0',
      avs_write_s4 => '0',
      avs_write_s5 => '0',
      avs_write_s6 => '0',
      avs_write_s7 => '0',
      avs_writedata_s0(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      avs_writedata_s1(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      avs_writedata_s2(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      avs_writedata_s3(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      avs_writedata_s4(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      avs_writedata_s5(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      avs_writedata_s6(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      avs_writedata_s7(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      clk => clk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_aruser(3 downto 0) => m_axi_aruser(3 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => NLW_inst_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awlen(7 downto 0) => NLW_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awprot(2 downto 0) => NLW_inst_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => '0',
      m_axi_awsize(2 downto 0) => NLW_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(3 downto 0) => NLW_inst_m_axi_awuser_UNCONNECTED(3 downto 0),
      m_axi_awvalid => NLW_inst_m_axi_awvalid_UNCONNECTED,
      m_axi_bready => NLW_inst_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_bvalid => '0',
      m_axi_rdata(127 downto 0) => m_axi_rdata(127 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(127 downto 0) => NLW_inst_m_axi_wdata_UNCONNECTED(127 downto 0),
      m_axi_wlast => NLW_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(15 downto 0) => NLW_inst_m_axi_wstrb_UNCONNECTED(15 downto 0),
      m_axi_wvalid => NLW_inst_m_axi_wvalid_UNCONNECTED,
      read_error => read_error,
      read_error_master_ID(2 downto 0) => read_error_master_ID(2 downto 0),
      read_error_valid => read_error_valid,
      write_error => NLW_inst_write_error_UNCONNECTED,
      write_error_master_ID(2 downto 0) => NLW_inst_write_error_master_ID_UNCONNECTED(2 downto 0),
      write_error_valid => NLW_inst_write_error_valid_UNCONNECTED
    );
end STRUCTURE;
