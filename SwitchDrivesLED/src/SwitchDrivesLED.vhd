library ieee;
use ieee.std_logic_1164.all;

entity SwitchDrivesLED is
port
(
	sw1	: in std_logic; -- Switch input 0 or 1
	led1	: out std_logic -- LED output 0 or 1
);
end entity;

architecture rtl of SwitchDrivesLED is

begin
	led1 <= sw1; -- When the switch is pressed, the light will be turned on
end rtl;