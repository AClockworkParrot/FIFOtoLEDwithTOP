library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb is
end entity;

architecture sim of tb is

    -- Компоненты тестируемого устройства
    signal CLK     : std_logic := '0';
    signal RXF     : std_logic := '1';
    signal TXE     : std_logic := '0' ;
    signal DATA    : std_logic_vector(7 downto 0) := "00000000";
    signal RD      : std_logic;
    signal WR      : std_logic;
    signal LED     : std_logic;
	 signal RX_valid : std_logic;
	 signal data_dir     : std_logic := '0';  -- 1 = ????????, 0 = ?????
	 signal data_out     : std_logic_vector(7 downto 0) := "00000000";


    -- Компоненты
    component top
        Port (
        CLK    : in  STD_LOGIC;
        RXF    : in  STD_LOGIC;
        TXE    : in  STD_LOGIC;
        DATA   : inout std_logic_vector(7 downto 0) := "ZZZZZZZZ";
        RD     : out STD_LOGIC;
        WR     : out STD_LOGIC;
        LED    : out STD_LOGIC;
		  RX_valid : out STD_LOGIC
        );
    end component;

begin

DATA <= data_out when data_dir = '1' else (others => 'Z');

    -- Тактовый сигнал 50 МГц
    clk_gen : process
    begin
        while true loop
            CLK <= '0';
            wait for 10 ns;
            CLK <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- Инстанцирование компонента
    uut: top port map (
        CLK		=> CLK,
        LED		=> LED,
        DATA	=> DATA,
		  RXF => RXF,
		  TXE => TXE,
		  RD => RD,
		  WR => WR,
		  RX_valid => RX_valid
    );

    -- Тестовая последовательность
    stim_proc: process
    begin
        data_dir = '0';
        -- Ожидание старта
        wait for 100 ns;

        -- Посылаем 00001111
        --DATA     <= "00001111";  -- или x"0F"
        RXF <= '0';
		  --DATA     <= "00001111";
        wait for 20 ns;
        RXF <= '1';
        wait for 100 ns;

        -- Посылаем 11111111
        --DATA     <= "11111111";  -- или x"FF"
        RXF <= '0';
		  --DATA     <= "11111111";
        wait for 20 ns;
        RXF <= '1';
        wait for 100 ns;

        -- Завершение
		  wait for 200 ns;
        assert false report "end test" severity note;
        wait;
        end process;

end architecture;
