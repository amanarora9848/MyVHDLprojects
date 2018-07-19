----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:49:58 07/02/2018 
-- Design Name: 
-- Module Name:    asynch_counter1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity asynch_counter1 is
    Port ( clk, rst : in  STD_LOGIC;
           c_out : out  STD_LOGIC_vector(3 downto 0));
end asynch_counter1;

architecture Behavioral of asynch_counter1 is
signal temp : std_logic_vector(3 downto 0);

begin

process(clk, rst)
begin

if(rst = '1') then
temp <= "0000";
elsif(clk'event and clk = '1') then
temp <= temp + "0001";
end if;

end process;
c_out <= temp;
end Behavioral;

