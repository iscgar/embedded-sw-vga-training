library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity pwm_color is
   port(
      clk  : in std_logic;
      rst  : in std_logic;
      data : in std_logic_vector(7 downto 0);
      pwm  : out std_logic
   );
end pwm_color;

architecture rtl of pwm_color is
   signal cnt : std_logic_vector(7 downto 0);
begin

   COUNT: process(clk)
   begin
      if rst = '0' then
         cnt <= (others => '0');
      elsif rising_edge(clk) then
         cnt <= cnt + '1';
      end if;
   end process;

   COMPARE: process(data, cnt)
   begin
      if rst = '0' then
         pwm <= '0';
      elsif unsigned(cnt) < unsigned(data) then
         pwm <= '1';
      else
         pwm <= '0';
      end if;
   end process;

end;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity rgb_led is
   port(
      clk   : in std_logic;
      rst   : in std_logic;
      data  : in std_logic_vector(23 downto 0);
      led_o : out std_logic_vector(2 downto 0)
   );
end;

architecture rtl of rgb_led is
   signal pwm_red   : std_logic;
   signal pwm_green : std_logic;
   signal pwm_blue  : std_logic;
begin

   led_o <= pwm_red & pwm_green & pwm_blue;

   red_inst : entity work.pwm_color
   port map (
      clk => clk,
      rst => rst,
      data => data(7 downto 0),
      pwm  => pwm_red
   );

   green_inst : entity work.pwm_color
   port map (
      clk => clk,
      rst => rst,
      data => data(15 downto 8),
      pwm  => pwm_green
   );

   blue_inst : entity work.pwm_color
   port map (
      clk => clk,
      rst => rst,
      data => data(23 downto 16),
      pwm  => pwm_blue
   );

end;