library	ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity dat is
	port( S2:in integer; RM_1:inout bit:='0';  ress: in bit;
	Rest1:out integer:=0;
	Eliberare:out bit);
end entity ;

architecture behavioural of dat is

	component reset is
		port(S1: in integer;
		RMR: inout bit); 
   end component ;
   
begin 
	 Reset_f:Reset port map(S1=>S2,RMR=>RM_1);
	 process(RM_1,ress)
	 begin	
			 if(S2>=100) then Eliberare<='1';
			 end if;
			 if(S2<100) then if(S2>0) then Rest1<=S2;
				 elsif(ress='0') then Rest1<=0;
				 end if;
			 elsif(S2>100) then Rest1<=S2-100;
			 elsif (S2=100) then Rest1<=0;
		    
			 end if;
		 end process;
end architecture ;