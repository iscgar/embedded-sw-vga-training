library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pulse_synchronizer is
	generic(
		G_RST_POLARITY_A : std_logic;
		G_RST_POLARITY_B : std_logic
	);
	port(
		clka      : in std_logic;
		clkb      : in std_logic;
		rsta      : in std_logic;
		rstb      : in std_logic;
		pulse_in  : in std_logic;
		pulse_out : out std_logic
	);
end entity pulse_synchronizer;

architecture rtl of pulse_synchronizer is
	signal regA : std_logic;
	signal regB : std_logic_vector(2 downto 0);

    attribute shreg_extract : string;
    attribute shreg_extract of regB : signal is "no";

    attribute ASYNC_REG : string;
    attribute ASYNC_REG of regB : signal is "TRUE";
begin

	-------------------------------
	--- Clock Domain A Register ---
	-------------------------------
	clk_a_reg_proc : process(rsta, clka)
	begin
		if rsta = G_RST_POLARITY_A then
			regA <= '0';
		elsif rising_edge(clka) then
			regA <= pulse_in XOR regA;
		end if;
	end process;

	--------------------------------
	--- Clock Domain B Registers ---
	--------------------------------
	clk_b_reg_proc : process(rstb, clkb)
	begin
		if rstb = G_RST_POLARITY_B then
			regB <= (others => '0');
		elsif rising_edge(clkb) then
			regB <= regB(1 downto 0) & regA;
		end if;
	end process;

	pulse_out <= regB(2) XOR regB(1);

end architecture rtl;
