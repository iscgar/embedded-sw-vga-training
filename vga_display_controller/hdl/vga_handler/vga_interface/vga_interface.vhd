library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vga_package.all;

entity vga_interface is
    generic(
        G_RST_POLARITY            : std_logic;

        ----------------------------
        ---VGA General Generics  ---
        ----------------------------
        G_RED_WIDTH               : integer;
        G_GREEN_WIDTH             : integer;
        G_BLUE_WIDTH              : integer;

        ----------------------------
        ---VGA Horizontal Timings---
        ----------------------------
        G_HORIZONTAL_VISIBLE_AREA : integer;
        G_HORIZONTAL_FRONT_PORCH  : integer;
        G_HORIZONTAL_SYNC_PULSE   : integer;
        G_HORIZONTAL_BACK_PORCH   : integer;
        G_HORIZONTAL_WHOLE_LINE   : integer;

        ----------------------------
        ---VGA Horizontal Timings---
        ----------------------------
        G_VERTICAL_VISIBLE_AREA   : integer;
        G_VERTICAL_FRONT_PORCH    : integer;
        G_VERTICAL_SYNC_PULSE     : integer;
        G_VERTICAL_BACK_PORCH     : integer;
        G_VERTICAL_WHOLE_LINE     : integer
    );
    port(
        clk           : in  std_logic;
        rst           : in  std_logic;

        -------------------
        ---System Inputs---
        -------------------
        pixel_data_in : in  std_logic_vector(C_FULL_PIXEL_WIDTH - 1 downto 0);

        -------------------
        ---VGA Outputs-----
        -------------------
        red_out       : out std_logic_vector(G_RED_WIDTH - 1 downto 0);
        green_out     : out std_logic_vector(G_GREEN_WIDTH - 1 downto 0);
        blue_out      : out std_logic_vector(G_BLUE_WIDTH - 1 downto 0);
        hsync         : out std_logic;
        vsync         : out std_logic;

        new_frame     : out std_logic;
        new_data_line : out std_logic;

        --------------------
        ---System Outputs---
        --------------------
        pixel_col     : out integer range 0 to G_HORIZONTAL_WHOLE_LINE - 1;
        pixel_row     : out integer range 0 to G_VERTICAL_WHOLE_LINE - 1;
        show_pixel    : out std_logic
    );
end entity vga_interface;

architecture rtl of vga_interface is
    signal h_counter : integer range 0 to G_HORIZONTAL_WHOLE_LINE - 1;
    signal v_counter : integer range 0 to G_VERTICAL_WHOLE_LINE - 1;

    signal red_int   : std_logic_vector(G_RED_WIDTH - 1 downto 0);
    signal green_int : std_logic_vector(G_GREEN_WIDTH - 1 downto 0);
    signal blue_int  : std_logic_vector(G_BLUE_WIDTH - 1 downto 0);

    signal h_show         : std_logic;
    signal v_show         : std_logic;
    signal int_show_pixel : std_logic;
    signal row_finished   : std_logic;
    signal internal_hsync : std_logic;
    signal internal_vsync : std_logic;

    constant C_RED_INDEX_TOP   : integer := pixel_data_in'length;
    constant C_GREEN_INDEX_TOP : integer := C_RED_INDEX_TOP - C_FULL_COLOR_WIDTH;
    constant C_BLUE_INDEX_TOP  : integer := C_GREEN_INDEX_TOP - C_FULL_COLOR_WIDTH;
begin

    ------------------------------------
    ---Process for Horizontal Counter---
    ------------------------------------
    horizontal_counter_proc : process(rst, clk)
    begin
        if rst = G_RST_POLARITY then
            h_counter <= 0;
        elsif rising_edge(clk) then
            if h_counter = (G_HORIZONTAL_WHOLE_LINE - 1) then
                h_counter <= 0;
            else
                h_counter <= h_counter + 1;
            end if;
        end if;
    end process;

    pixel_col <= h_counter;

    row_finished <= '1' when h_counter = (G_HORIZONTAL_WHOLE_LINE - 1) else '0';
    ------------------------------------
    ---Process for Vertical Counter---
    ------------------------------------
    vertical_counter_proc : process(rst, clk)
    begin
        if rst = G_RST_POLARITY then
            v_counter <= 0;
        elsif rising_edge(clk) then
            if row_finished = '1' then
                if v_counter = (G_VERTICAL_WHOLE_LINE - 1) then
                    v_counter <= 0;
                else
                    v_counter <= v_counter + 1;
                end if;
            end if;
        end if;
    end process;

    frame_data_pulses : process(rst, clk)
    begin
        if rst = G_RST_POLARITY then
            new_frame     <= '0';
            new_data_line <= '0';
        elsif rising_edge(clk) then
            new_frame     <= '0';
            new_data_line <= '0';

            if h_counter = 0 and v_counter = 0 then
                new_frame <= '1';
            elsif h_counter = (G_HORIZONTAL_WHOLE_LINE - G_HORIZONTAL_FRONT_PORCH - 1) then
                if v_counter = (G_VERTICAL_BACK_PORCH + G_VERTICAL_SYNC_PULSE - 1) then
                    new_data_line <= '1';
                elsif v_show = '1' then
                    if v_counter /= (G_VERTICAL_WHOLE_LINE - G_VERTICAL_FRONT_PORCH - 1) then
                        new_data_line <= '1';
                    end if;
                end if;
            end if;
        end if;
    end process;

    pixel_row <= v_counter;

    ---------------------------------------------
    ---Horizontal State Machine---
    ---------------------------------------------
    horizontal_sm : entity work.vga_fsm
        generic map(
            G_RST_POLARITY => G_RST_POLARITY,
            G_VISIBLE_AREA => G_HORIZONTAL_VISIBLE_AREA,
            G_FRONT_PORCH  => G_HORIZONTAL_FRONT_PORCH,
            G_SYNC_PULSE   => G_HORIZONTAL_SYNC_PULSE,
            G_BACK_PORCH   => G_HORIZONTAL_BACK_PORCH,
            G_WHOLE_LINE   => G_HORIZONTAL_WHOLE_LINE
        )
        port map(
            clk     => clk,
            rst     => rst,
            counter => h_counter,
            sync    => internal_hsync,
            show    => h_show
        );
    ---------------------------------------------
    ---Vertical State Machine---
    ---------------------------------------------
    vertical_sm : entity work.vga_fsm
        generic map(
            G_RST_POLARITY => G_RST_POLARITY,
            G_VISIBLE_AREA => G_VERTICAL_VISIBLE_AREA,
            G_FRONT_PORCH  => G_VERTICAL_FRONT_PORCH,
            G_SYNC_PULSE   => G_VERTICAL_SYNC_PULSE,
            G_BACK_PORCH   => G_VERTICAL_BACK_PORCH,
            G_WHOLE_LINE   => G_VERTICAL_WHOLE_LINE
        )
        port map(
            clk     => clk,
            rst     => rst,
            counter => v_counter,
            sync    => internal_vsync,
            show    => v_show
        );

    ---------------------------------------------
    ---Show pixel Mux---
    ---------------------------------------------
    int_show_pixel <= h_show and v_show; -- Show photo if both are not active

    -- Get MSB color bits from full pixel data
    red_int   <= pixel_data_in(C_RED_INDEX_TOP - 1 downto (C_RED_INDEX_TOP - G_RED_WIDTH)) when int_show_pixel = '1' else (others => '0');
    green_int <= pixel_data_in(C_GREEN_INDEX_TOP - 1 downto (C_GREEN_INDEX_TOP - G_GREEN_WIDTH)) when int_show_pixel = '1' else (others => '0');
    blue_int  <= pixel_data_in(C_BLUE_INDEX_TOP - 1 downto (C_BLUE_INDEX_TOP - G_BLUE_WIDTH)) when int_show_pixel = '1' else (others => '0');

    show_pixel <= int_show_pixel;

    ---------------------------------------------
    ---Sampler---
    ---------------------------------------------
    sampler_proc : process(rst, clk)
    begin
        if rst = G_RST_POLARITY then
            red_out   <= (others => '0');
            green_out <= (others => '0');
            blue_out  <= (others => '0');
            hsync     <= '0';
            vsync     <= '0';
        elsif rising_edge(clk) then
            --Wire the pixel_data to RED
            red_out <= red_int;

            --Wire the pixel_data to GREEN
            green_out <= green_int;

            --Wire the pixel_data to BLUE
            blue_out <= blue_int;

            hsync <= internal_hsync;
            vsync <= internal_vsync;

        end if;
    end process;

end architecture rtl;
