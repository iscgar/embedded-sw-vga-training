library ieee;
use ieee.std_logic_1164.all;
use work.vga_package.all;

entity vga_handler is
    generic(
        G_RST_POLARITY     : std_logic;   -- Reset polarity.
        G_RED_WIDTH        : integer;
        G_GREEN_WIDTH      : integer;
        G_BLUE_WIDTH       : integer
    );
    port(
        -- Global Inputs
        clk                : in std_logic; -- Pixel clk (50Mhz)
        rst                : in std_logic;

        -- control inputs
        monitor_on         : in std_logic; -- Determine if the monitor is on or off.
        write_done         : in std_logic; -- Report the module image receive done.

        -- FIFO Interface
        fifo_data_valid    : in std_logic;
        fifo_data          : in std_logic_vector(C_VGA_PIXEL_WIDTH - 1 downto 0); -- Pixel data from Dual_Port FIFO.
        fifo_read_enable   : out std_logic; -- Read enable to fifo.

        -- VGA control outputs
        h_sync             : out std_logic;
        v_sync             : out std_logic;

        new_data_line      : out std_logic;
        new_frame          : out std_logic;
        vga_error          : out std_logic;

        -- data outputs
        red                : out std_logic_vector(G_RED_WIDTH - 1 downto 0);
        green              : out std_logic_vector(G_GREEN_WIDTH - 1 downto 0);
        blue               : out std_logic_vector(G_BLUE_WIDTH - 1 downto 0)
    );
end vga_handler;

architecture arch of vga_handler is
    signal line_number      : integer range 0 to C_VGA_VERTICAL_WHOLE_LINE;
    signal column_number    : integer range 0 to C_VGA_HORIZONTAL_WHOLE_LINE;

    signal vga_error_in     : std_logic;

    ------------------------------
    -- 'VGA Controller' Signals
    ------------------------------
    signal vga_h_sync       : std_logic;
    signal vga_v_sync       : std_logic;
    signal pixel_select     : std_logic;

    ------------------------------
    -- 'Pixel Parser' Signals
    ------------------------------
    signal pixel            : std_logic_vector(C_FULL_PIXEL_WIDTH - 1 downto 0);

    signal red_data         : std_logic_vector(C_FULL_COLOR_WIDTH - 1 downto 0);
    signal green_data       : std_logic_vector(C_FULL_COLOR_WIDTH - 1 downto 0);
    signal blue_data        : std_logic_vector(C_FULL_COLOR_WIDTH - 1 downto 0);

    ------------------------------
    -- Other Signals
    ------------------------------
    signal pixel_data       : std_logic_vector(C_FULL_PIXEL_WIDTH - 1 downto 0);
    signal data_select      : std_logic;
    signal unsampled_h_sync : std_logic;
    signal unsampled_v_sync : std_logic;
begin

    ---------------------------------------
    -- 'read enable dmux' implementation
    ---------------------------------------
    -- determine the data source read, dual-port fifo for data and loading bar for itself.
    fifo_read_enable <= fifo_data_valid when data_select = '1' and pixel_select = '1' else '0';

    -- Our bmp is 5-6-5
    red_data <= fifo_data(15 downto 11) & "000";
    green_data <= fifo_data(10 downto 5) & "00";
    blue_data <= fifo_data(4 downto 0) & "000";

    ---------------------------------------
    -- 'data mux' implementation
    ---------------------------------------
    -- deciding about the data source, dual-port fifo for data and loading bar for itself.
    pixel_data <= (red_data & green_data & blue_data) when data_select = '1' else C_WHITE_PIXEL;

    ---------------------------------------
    -- 'pixel mux' implementation
    ---------------------------------------
    -- deciding if to display a blank_pixel (black) or data pixel.
    pixel <= C_RED_PIXEL when vga_error_in = '1' else
             pixel_data when (pixel_select and monitor_on) = '1' else C_BLACK_PIXEL;

    ---------------------------------------
    -- delay lines
    ---------------------------------------
    -- sampling diffrent signal cause they are outputs.
    -- h & v sync sample 2 times more because the dac delay.
    sync_sampler : process(clk, rst)
    begin
        if rst = G_RST_POLARITY then
            h_sync <= '0';
            v_sync <= '0';
            data_select <= '0';
            vga_error_in <= '0';
            vga_error <= '0';
        elsif rising_edge(clk) then
            h_sync <= unsampled_h_sync;
            v_sync <= unsampled_v_sync;
            vga_error <= '0';

            if write_done = '1' then
                data_select <= '1';
            end if;

            if (data_select and pixel_select) = '1' and fifo_data_valid = '0' then
                if vga_error_in = '0' then
                    vga_error <= '1';
                    vga_error_in <= '1';
                end if;
            end if;
       end if;
    end process;

    ---------------------------------------
    -- asynchronous assignments
    ---------------------------------------
    -- only if the monitor_on = '1' the monitor display ipcture by h & v sync.
    unsampled_v_sync <= vga_v_sync and monitor_on;
    unsampled_h_sync <= vga_h_sync and monitor_on;

    ---------------------------------------
    -- 'vga controller' instantiation
    ---------------------------------------
    -- vga physical controller to the monitor, sending a data \ blank pixels to the
    -- vga and horizontal & vertical sync.
    vga_controller_inst : entity work.vga_interface
    generic map(
        G_RST_POLARITY            => G_RST_POLARITY,

        G_RED_WIDTH               => G_RED_WIDTH,
        G_GREEN_WIDTH             => G_GREEN_WIDTH,
        G_BLUE_WIDTH              => G_BLUE_WIDTH,

        G_HORIZONTAL_VISIBLE_AREA => C_VGA_HORIZONTAL_VISIBLE_AREA,
        G_HORIZONTAL_FRONT_PORCH  => C_VGA_HORIZONTAL_FRONT_PORCH,
        G_HORIZONTAL_SYNC_PULSE   => C_VGA_HORIZONTAL_SYNC_PULSE,
        G_HORIZONTAL_BACK_PORCH   => C_VGA_HORIZONTAL_BACK_PORCH,
        G_HORIZONTAL_WHOLE_LINE   => C_VGA_HORIZONTAL_WHOLE_LINE,

        G_VERTICAL_VISIBLE_AREA   => C_VGA_VERTICAL_VISIBLE_AREA,
        G_VERTICAL_FRONT_PORCH    => C_VGA_VERTICAL_FRONT_PORCH,
        G_VERTICAL_SYNC_PULSE     => C_VGA_VERTICAL_SYNC_PULSE,
        G_VERTICAL_BACK_PORCH     => C_VGA_VERTICAL_BACK_PORCH,
        G_VERTICAL_WHOLE_LINE     => C_VGA_VERTICAL_WHOLE_LINE
    )
    port map(
        clk           => clk,
        rst           => rst,
        pixel_data_in => pixel,

        red_out       => red,
        green_out     => green,
        blue_out      => blue,
        hsync         => vga_h_sync,
        vsync         => vga_v_sync,

        new_frame     => new_frame,
        new_data_line => new_data_line,

        pixel_col     => column_number,
        pixel_row     => line_number,
        show_pixel    => pixel_select
    );

end arch;
