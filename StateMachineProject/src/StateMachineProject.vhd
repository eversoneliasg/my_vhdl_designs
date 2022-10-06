library ieee;
use ieee.std_logic_1164.all;

entity StateMachineProject is
port
(
	clk	: in std_logic;	
	sw		: in std_logic_vector(3 downto 1);
	led	: out std_logic_vector(3 downto 1)
);
end entity;

architecture rtl of StateMachineProject is

type DataTypeOfSMState is (STATE1, STATE2, STATE3);
signal StateVariable	: DataTypeOfSMState;

begin
	Process1:process(clk)
	begin
		if rising_edge(clk) then
			case StateVariable is
				when STATE1 =>
					led(1) <= '0'; -- Enabled
					led(2) <= '1';	-- Disabled
					led(3) <= '1';	-- Disabled
					-- the following structure is possible: led <= "110";
					if sw(1) = '0' then
						StateVariable <= STATE2;
					end if;
				when STATE2 =>
					led(1) <= '1'; -- Disabled
					led(2) <= '0';	-- Enabled
					led(3) <= '1';	-- Disabled
					-- the following structure is possible: led <= "101";
					if sw(2) = '0' then
						StateVariable <= STATE3;
					end if;
				when STATE3 =>
					led(1) <= '1'; -- Disabled
					led(2) <= '1';	-- Disabled
					led(3) <= '0';	-- Enabled
					-- the following structure is possible: led <= "011";
					if sw(3) = '0' then
						StateVariable <= STATE1;
					end if;
				when others =>
					StateVariable <= STATE1;
				end case;
		end if;
	end process;
end rtl;