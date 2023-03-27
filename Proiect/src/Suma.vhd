library	ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity Suma is
	port (A: in integer; D: in std_logic; RRM: in bit;
	S:inout integer:=0);
end Suma;

architecture data of Suma is
begin 
	process(D)
	begin
	if(RRM='1') then S<=0;
	elsif(S=100) then S<=0;
	elsif(S>100) then S<=0;
	elsif (A=5) then S<=S+5;
	elsif (A=10) then S<=S+10;
	elsif (A=50) then S<=S+50;
	end if;
	end process;
end architecture ;	