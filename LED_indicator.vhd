library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LED_indicator is
    Port (
        CLK       	   : in  std_logic;
        LED       	   : out std_logic;
        DATA      	   : inout  std_logic_vector(7 downto 0);  -- данные
		  RX_val          : in  std_logic
    );
end entity;

architecture rtl of LED_indicator is
    signal data_out : std_logic_vector(7 downto 0) := (others => 'Z');
    signal led_state    : std_logic := '0';
	 signal data_dir     : std_logic := '0';  -- 1 = передача, 0 = приём
	 signal data_rx : std_logic_vector(7 downto 0);

begin

-- Управление шиной данных
    DATA <= data_out when data_dir = '1' else (others => 'Z');
	 
    process(CLK)
    begin
		if rising_edge(CLK) then
        if RX_val = '1' then
		  
				    data_dir <= '1';  -- читаем
                data_rx <= DATA;  -- читаем данные с шины

                if data_rx = "11111111" then
                    led_state <= '1';

                    
                elsif data_rx = "00001111" then
                    led_state <= '0';
					 DATA <= "ZZZZZZZZ";
                end if;
					 
					 data_dir <= '0';
					 data_rx <= DATA;  -- читаем данные с шины

                if data_rx = "11111111" then
                    led_state <= '1';

                    
                elsif data_rx = "00001111" then
                    led_state <= '0';
					 DATA <= "ZZZZZZZZ";
                end if;

            end if;

		end if;
    end process;

    LED <= led_state;
	
end architecture;

