library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_fsm is
	generic(
		G_RST_POLARITY : std_logic;
	    G_VISIBLE_AREA : integer;
	    G_FRONT_PORCH  : integer;
	    G_SYNC_PULSE   : integer;
	    G_BACK_PORCH   : integer;
	    G_WHOLE_LINE   : integer
	);
	port(
		clk     : in std_logic;
		rst     : in std_logic;

		----------------------------
		---SM Inputs ---
		----------------------------
		counter : in integer;           -- Counter of pixels

		----------------------------
		---SM Outputs ---
		----------------------------
		sync    : out std_logic;        -- HSYNC or VSYNC
		show    : out std_logic         -- Show is active in visible area
	);
end entity vga_fsm;

architecture rtl of vga_fsm is
	type state_type is (IDLE,            -- Initial state (when rst is given)
		                SM_FRONT_PORCH,
		                SM_VISIBLE_AREA, -- Show the photo
		                SM_BACK_PORCH,
		                SM_SYNCH         -- Drop Hsync or Vsync
	);

	signal state : state_type := IDLE;
begin

	process(clk, rst) is
	begin
		if rst = G_RST_POLARITY then
			state <= IDLE;
		elsif rising_edge(clk) then
			case state is
				when IDLE =>
					state <= SM_BACK_PORCH;

				when SM_BACK_PORCH =>
					----------------------------------
					-- Check if Front Porch time is over
					-- If so, go on to display photo
					----------------------------------
					if counter = G_BACK_PORCH then
						state <= SM_VISIBLE_AREA;
					end if;

				when SM_VISIBLE_AREA =>
					----------------------------------
					-- Check if Visible Area time is over
					-- If so, go on to Back Porch
					----------------------------------
					if counter = (G_BACK_PORCH + G_VISIBLE_AREA) then
						state <= SM_FRONT_PORCH;
					end if;

				when SM_FRONT_PORCH =>
					----------------------------------
					-- Check if Back Porch time is over
					-- If so, go on to Synch
					----------------------------------
					if counter = (G_BACK_PORCH + G_VISIBLE_AREA + G_FRONT_PORCH) then
						state <= SM_SYNCH;
					end if;

				when SM_SYNCH =>
					----------------------------------
					-- Check if Synch time is over
					-- If so, go on to Front Porch
					----------------------------------
					if counter = (G_BACK_PORCH + G_VISIBLE_AREA + G_FRONT_PORCH + G_SYNC_PULSE - 1) then
						state <= SM_BACK_PORCH;
					end if;
			end case;
		end if;
	end process;

	---------------------------------------------
	---State Machine Outputs---
	---------------------------------------------
	show <= '1' when state = SM_VISIBLE_AREA else '0'; -- Active in visible area state.
	sync <= '0' when state = SM_SYNCH else '1'; -- Down in sync state.

end architecture rtl;
