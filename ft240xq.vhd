library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ft240xq is
    Port (
        CLK      : in  STD_LOGIC;
        RXF      : in  STD_LOGIC;
        TXE      : in  STD_LOGIC;
        RD       : out STD_LOGIC := '1';
        WR       : out STD_LOGIC;
		  RX_valid : out STD_LOGIC
    );
end entity;

architecture rtl of ft240xq is

    signal counter : integer range 0 to 2 := 0;
	 signal reading    : std_logic := '0';


begin

	 
process(CLK)
begin
    if rising_edge(CLK) then

        -- запускаем процесс чтения
        if RXF = '0' and reading = '0' then
            reading   <= '1';
            counter   <= 2;
            RD        <= '0';     -- активируем чтение
            RX_valid  <= '1';
        end if;

        -- продолжаем, пока не считаем 2 такта
        if reading = '1' then
            if counter > 0 then
                counter <= counter - 1;
            else
                RD   <= '1';   -- завершаем чтение
                RX_valid <= '0';
                reading  <= '0';   -- выходим из режима чтения
            end if;
        end if;

    end if;
end process;

end architecture;
