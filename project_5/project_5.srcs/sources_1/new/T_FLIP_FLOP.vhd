library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity T_FLIP_FLOP is
port(  CLOCK : IN std_logic;
       T_INPUT : IN std_logic;
       ENABLE : IN std_logic;
       Q : OUT std_logic;
       NOT_Q : OUT std_logic);
end T_FLIP_FLOP;
 
architecture Behavioral of T_FLIP_FLOP is
signal tmp: std_logic;
begin
process (Clock)
begin
if Clock'event and Clock='1' then
 
if T_INPUT='0' then
tmp <= tmp;
elsif T_INPUT='1' then
tmp <= not (tmp);
end if;
end if;
end process;
Q <= tmp;
NOT_Q <= tmp;
end Behavioral;
