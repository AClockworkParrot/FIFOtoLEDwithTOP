library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is
    Port (
        CLK    : in  STD_LOGIC;
        RXF    : in  STD_LOGIC;
        TXE    : in  STD_LOGIC;
        DATA   : inout std_logic_vector(7 downto 0);
        RD     : out STD_LOGIC;
        WR     : out STD_LOGIC;
        LED    : out STD_LOGIC;
		  RX_valid : out STD_LOGIC
    );
end entity;

architecture rtl of top is

    -- Объявления компонентов с разделением входов/выходов
    component ft240xq is
        Port (
        CLK      : in  STD_LOGIC;
        RXF      : in  STD_LOGIC;
        TXE      : in  STD_LOGIC;
        RD       : out STD_LOGIC;
        WR       : out STD_LOGIC;
        RX_valid : out STD_LOGIC
        );
    end component;

    component LED_indicator is
        Port (
        CLK        : in  std_logic;
        LED        : out std_logic;
        DATA       : inout std_logic_vector(7 downto 0);  -- данные
        RX_val     : in  std_logic  -- входной сигнал
        );
    end component;

    -- Внутренние сигналы
    signal RX_internal : std_logic;  -- Промежуточный сигнал для передачи RX_valid

begin

    -- Инстанцирование компонентов
    C0: ft240xq port map (
        CLK      => CLK,
        RXF      => RXF,
        TXE      => TXE,
        RD       => RD,
        WR       => WR,
        RX_valid => RX_internal  -- Сигнал из ft240xq передается в RX_internal
    );
	 
	 -- Присваиваем значение RX_valid в RX_internal
    RX_valid <= RX_internal;

    C1: LED_indicator port map (
        CLK      => CLK,
        LED      => LED,
        DATA     => DATA,
        RX_val   => RX_internal  -- Передаем RX_internal как входной сигнал в LED_indicator
    );

end architecture;