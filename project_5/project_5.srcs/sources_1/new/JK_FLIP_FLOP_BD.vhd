library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_FLIP_FLOP_BD is
  port(Clk : in std_logic;
       DATA_INPUT : in std_logic_vector(2 downto 0);
       DATA_OUTPUT : out std_logic;
       NOT_DATA_OUTPUT : out std_logic);
end JK_FLIP_FLOP_BD;

architecture Behavioral of JK_FLIP_FLOP_BD is
   component clk_div is
        Port ( Clk : in STD_LOGIC;
               f_0 : out STD_LOGIC;
               f_1 : out STD_LOGIC;
               f_2 : out STD_LOGIC;
               f_3 : out STD_LOGIC);
    end component;
    signal CLOCK : std_logic ;
    signal clk0, clk1, clk2, clk3 : std_logic; -- 4 cases of Clock division from clk_div
begin
    DF: clk_div port map (Clk, clk0, clk1, clk2, clk3); -- ������ Clk �� �Է����� �Ͽ� ���ļ� �б�
    CLOCK <= clk0; -- ���� ���� Ŭ���� clk0 �� �̿�

    process(CLOCK)
    begin
        if falling_edge(CLOCK) then
            DATA_OUTPUT <= DATA_INPUT(2);
            NOT_DATA_OUTPUT <= not DATA_INPUT(2);
        end if;
    end process;
end Behavioral; 
