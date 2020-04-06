library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity irq_sender is
    generic(
        G_RST_POLARITY          : std_logic;
        G_CPU_BUS_WIDTH         : integer; -- Must be multiply of 8.
        G_NUM_OF_IRQ            : integer  -- Indicates how many IRQ's received into module.
    );
    port(
        RST                     : in std_logic;
        CLK                     : in std_logic;

        -- IRQs from internal modules
        irq_int_modules         : in std_logic_vector(G_NUM_OF_IRQ - 1 downto 0); -- IRQ Recived in pulse on every bit of this vector.
        -- read indicator
        irq_history_read_indc   : in std_logic;
        -- IRQ history
        irq_history             : out std_logic_vector(G_CPU_BUS_WIDTH - 1 downto 0);
        -- Output pin
        IRQ                     : out std_logic
    );
end irq_sender;


architecture rtl of irq_sender is
    function log2up(e: positive) return natural is
        variable ret_val: natural;
    begin
        ret_val := 0;                                   -- ret_val := 1;
        while (2**ret_val < e) loop                     -- while (2**ret_val <= e) loop
            ret_val := ret_val + 1;
        end loop;
        return ret_val;
    end function;

    -----------------------
    -- Types and Subtypes
    -----------------------

    -- 'IRQ_HISTORY' Register Status Fields' (LAST_IRQ, SECOND_TO_LAST_IRQ, etc.) Type
    subtype irq_history_reg_sts_fld_type is std_logic_vector(log2up(G_NUM_OF_IRQ) - 1 downto 0);

    -- 'IRQ HISTORY' Register Status Fields' Array Type
    type irq_history_status_arr_type is array (natural range <>) of irq_history_reg_sts_fld_type;

    -- 'IRQ HISTORY' Register Status Fields' Encoding Constants
        -- Determine the values used to represent information in the above fields.
    constant NO_IRQ_CODE           : irq_history_reg_sts_fld_type := (others => '0');

    -- Constants.
    constant NUM_OF_IRQ_IN_HISTORY : integer := G_CPU_BUS_WIDTH/log2up(G_NUM_OF_IRQ);

    constant ZEROS_ARR             : std_logic_vector(irq_int_modules'range) := (others => '0');

    ---------------------
    -- Internal Signals
    ---------------------
    signal irq_history_status_arr : irq_history_status_arr_type(1 to NUM_OF_IRQ_IN_HISTORY);  -- Signal represents LAST_IRQ, SECOND_TO_LAST_IRQ, etc. status fields.
    signal int_irq              : std_logic;
begin

    -- 'int_irq' assignment
    int_irq_proc : process(irq_int_modules, irq_history_status_arr, irq_history_read_indc)
    begin
        -- Default assignment.
        int_irq <= '0';

        -- Checking if IRQ is waiting for us.
        if irq_int_modules /= ZEROS_ARR AND (irq_history_status_arr(NUM_OF_IRQ_IN_HISTORY) = NO_IRQ_CODE OR irq_history_read_indc = '1') then
            int_irq <= '1';
        end if;
    end process;

    -- Output assignment
    irq_history(3 downto 0) <= irq_history_status_arr(1);
    irq_history(7 downto 4) <= irq_history_status_arr(2);
    irq_history(11 downto 8) <= irq_history_status_arr(3);
    irq_history(15 downto 12) <= irq_history_status_arr(4);

    ---------------------
    -- 'IRQ SEND LOGIC'
    ---------------------
    irq_send_process : process(rst, clk)
    begin
        if rst = G_RST_POLARITY then
            -- After reset, 'IRQ' holds an inactive value
            irq <= '0';
        elsif rising_edge(clk) then
            -- Sample the signal before going to TL
            irq <= int_irq;
        end if;
    end process irq_send_process;

    --------------------------------------------------------
    -- 'IRQ HISTORY LOGIC' Register Status Fields Implementation
    --------------------------------------------------------

    irq_history_status_arr_proc : process(rst, clk)
        variable irq_history_helper : irq_history_status_arr_type(irq_history_status_arr'range);
    begin
        if RST = G_RST_POLARITY then
            -- After reset, 'IRQ HISTORY' register status fields are cleared (assigned with a 'No IRQ' code).
            irq_history_status_arr <= (others => NO_IRQ_CODE);
        elsif rising_edge(clk) then
            -- Setting 'irq_history_status_arr's assigned value according to current one
            irq_history_helper := irq_history_status_arr;

            -- If 'IRQ_HISTORY' register is read, and 'irq_history_rst_on_rd' is asserted, 'IRQ_HISTORY' register status fields are cleared.
            if irq_history_read_indc = '1' then
                irq_history_helper :=  (others => NO_IRQ_CODE);
            end if;

            for i in 0 to (irq_int_modules'length - 1) loop
                if irq_int_modules(i) = '1' then -- IRQ happened.
                    irq_history_helper(2 to NUM_OF_IRQ_IN_HISTORY) := irq_history_helper(1 to NUM_OF_IRQ_IN_HISTORY - 1);
                    irq_history_helper(1) := conv_std_logic_vector(i + 1, irq_history_reg_sts_fld_type'length);
                end if;
            end loop;

            irq_history_status_arr <= irq_history_helper;
        end if;
    end process irq_history_status_arr_proc;

end rtl;
