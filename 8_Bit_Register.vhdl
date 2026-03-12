----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/12/2026 03:48:01 PM
-- Design Name: 
-- Module Name: 8_Bit_Register - Behavioral
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

entity Eight_Bit_Register is
    Port ( CLK : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (7 downto 0);
           Q : out STD_LOGIC_VECTOR (7 downto 0));
end Eight_Bit_Register;

architecture Behavioral of Eight_Bit_Register is
begin
    state: process(CLK)
    begin
    if CLK'event and CLK = '1' then 
        Q <= D;
    end if;
    end process;
end Behavioral;
