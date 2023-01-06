library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;
 
entity JK_FLIP_FLOP is
PORT(  CLOCK : IN std_logic;
       J_INPUT : IN std_logic;
       K_INPUT : IN std_logic;
       ENABLE : IN std_logic;
       Q : OUT std_logic;
       NOT_Q : OUT std_logic);
end JK_FLIP_FLOP;


Architecture behavioral of JK_FLIP_FLOP is
begin
PROCESS(CLOCK)
variable TMP : std_logic;
variable J: std_logic;
variable K: std_logic;
begin

if(CLOCK='0' and CLOCK'EVENT) then
    if(ENABLE = '0') then
        TMP:= '0';
    elsif(J='0' and K='0')then
        TMP:=TMP;
    elsif(J='1' and K='1')then
        TMP:= not TMP;
    elsif(J='0' and K='1')then
        TMP:='0';
    else
        TMP:='1';
    end if;
end if;
J := J_INPUT;
K := K_INPUT;
Q <= TMP;
NOT_Q <=not TMP;
end PROCESS;
end behavioral;
