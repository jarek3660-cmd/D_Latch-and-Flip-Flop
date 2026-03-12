library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Eight_Bit_Register_TB is
end Eight_Bit_Register_TB;

architecture bench of Eight_Bit_Register_TB is
    component Eight_Bit_Register
        Port (
            CLK : in  STD_LOGIC;
            D   : in  STD_LOGIC_VECTOR(7 downto 0);
            Q   : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    -- Testbench signals
    signal CLK_tb : STD_LOGIC := '0';
    signal D_tb   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal Q_tb   : STD_LOGIC_VECTOR(7 downto 0);

    constant Clk_100MHz_Period : time := 10 ns;

begin
    uut: Eight_Bit_Register
        port map (
            CLK => CLK_tb,
            D   => D_tb,
            Q   => Q_tb
        );
    clk_process : process
    begin
        CLK_tb <= '0';
        wait for Clk_100MHz_Period / 2;
        CLK_tb <= '1';
        wait for Clk_100MHz_Period / 2;
    end process;
    stimulus : process
    begin
        D_tb <= "00000000";
        wait for 20 ns;
        for i in 0 to 511 loop
            wait for 3 ns;
            D_tb <= std_logic_vector(unsigned(D_tb) + 1);
            wait for 3 ns;
        end loop;
        wait;
    end process;
end bench;
