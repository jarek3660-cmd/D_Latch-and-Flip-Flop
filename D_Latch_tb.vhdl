----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2026 02:04:31 PM
-- Design Name: 
-- Module Name: D_Latch_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity D_Latch_tb is
--  Port ( );
end D_Latch_tb;

architecture Behavioral of D_Latch_tb is
    component D_Latch
    Port ( D, CLK : in STD_LOGIC;
           Q : out STD_LOGIC);
end component;

signal D_tb, CLK_tb : STD_LOGIC;
signal Q_tb : STD_LOGIC;
constant CLK_100MHZ_Period : time := 10ns;
begin
    uut: D_Latch port map (D => D_tb, CLK => CLK_tb, Q => Q_tb);
    CLK_process: process 
        begin
            CLK_tb <= '0'; wait for CLK_100MHZ_Period/2;
            CLK_tb <= '1'; wait for CLK_100MHZ_Period/2;     
     end process;
     stimulus: process
        begin
            D_tb <= '1'; wait for 7ns;
            D_tb <= '0'; wait for 7ns;
        end process;
end Behavioral;
