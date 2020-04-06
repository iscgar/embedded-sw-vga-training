library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

package vga_package is

    ----------------------------
    -- Interfaces Constants
    ----------------------------

    constant C_SLV_DWIDTH : integer := 32;
    constant C_SLV_AWIDTH : integer := 5;
    constant C_MST_AWIDTH : integer := 32;
    constant C_MST_DWIDTH : integer := 128;

    ----------------------------
    -- VGA Cotroller Constants
    ----------------------------

    constant C_VGA_HORIZONTAL_BACK_PORCH   : integer := 64;   -- Pixels in back porch.
    constant C_VGA_HORIZONTAL_SYNC_PULSE   : integer := 120;  -- H Sync width in pixels.
    constant C_VGA_HORIZONTAL_VISIBLE_AREA : integer := 800;  -- Number of data pixels in line.
    constant C_VGA_HORIZONTAL_FRONT_PORCH  : integer := 56;   -- Pixel in front porch.
    constant C_VGA_HORIZONTAL_WHOLE_LINE   : integer := C_VGA_HORIZONTAL_BACK_PORCH + C_VGA_HORIZONTAL_SYNC_PULSE + C_VGA_HORIZONTAL_VISIBLE_AREA + C_VGA_HORIZONTAL_FRONT_PORCH; -- Pixels in whole line (Including H Sync)

    constant C_VGA_VERTICAL_BACK_PORCH     : integer := 23;   -- Number of back porch lines.
    constant C_VGA_VERTICAL_SYNC_PULSE     : integer := 6;    -- V Sync length in lines.
    constant C_VGA_VERTICAL_VISIBLE_AREA   : integer := 600;  -- Number of data lines.
    constant C_VGA_VERTICAL_FRONT_PORCH    : integer := 37;   -- Number of back porch lines.
    constant C_VGA_VERTICAL_WHOLE_LINE     : integer := C_VGA_VERTICAL_BACK_PORCH + C_VGA_VERTICAL_SYNC_PULSE + C_VGA_VERTICAL_VISIBLE_AREA + C_VGA_VERTICAL_FRONT_PORCH;

    ----------------------------
    -- Loading Bar Constants
    ----------------------------

    constant C_WHITE_PIXEL : std_logic_vector := x"FFFFFF";
    constant C_BLACK_PIXEL : std_logic_vector := x"000000";
    constant C_RED_PIXEL   : std_logic_vector := x"FF0000";
    constant C_GREEN_PIXEL : std_logic_vector := x"00FF00";
    constant C_BLUE_PIXEL  : std_logic_vector := x"0000FF";

    ----------------------------
    -- VGA Handler Constants
    ----------------------------

    constant C_FULL_COLOR_WIDTH : integer := 8;
    constant C_VGA_COLOR_WIDTH  : integer := 4;

    constant C_FULL_PIXEL_WIDTH : integer := C_FULL_COLOR_WIDTH * 3;
    constant C_VGA_PIXEL_WIDTH  : integer := 16;

end vga_package;
