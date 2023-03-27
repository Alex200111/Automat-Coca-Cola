library	ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity reset is
	port(S1: in integer;
	RMR: inout bit); 
end entity ;

architecture behavioral of reset is

begin
	process(S1)
		 begin
			 if(S1>=100) then RMR<= not RMR;
			 elsif(S1=0) then RMR<= not RMR;
			 end if;
	 end process;
end architecture ;