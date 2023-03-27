library	ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity stil is
	port (Rest3: in integer;
	BB50: out integer:=0;
	BB10: out integer:=0;
	BB5: out integer:=0);
end entity;

architecture behaviour of stil is
begin
	process(Rest3)
	begin
	if(Rest3=95) then BB50<=1; 
		BB10<=4;
		BB5<=1;
	elsif(Rest3=90) then  BB50<=1;
		BB10<=4;
		BB5<=0;
	elsif(Rest3=85) then  BB50<=1;
		BB10<=3;
		BB5<=1;
	elsif(Rest3=80) then BB50<=1;
		BB10<=3;
		BB5<=0;
	elsif(Rest3=75) then BB50<=1;
		BB10<=2;
		BB5<=1;
	elsif(Rest3=70) then BB50<=1;
		BB10<=2;
		BB5<=0;	   
	elsif(Rest3=65) then BB50<=1;
		BB10<=1;
		BB5<=1;
	elsif(Rest3=60) then BB50<=1;
		BB10<=1;
		BB5<=0;
	elsif(Rest3=55) then BB50<=1;
		BB10<=0;
		BB5<=1;
	elsif(Rest3=50) then BB50<=1;
		BB10<=0;
		BB5<=0;					
	elsif(Rest3=45) then BB50<=0;
		BB10<=4;
		BB5<=1;
	elsif(Rest3=40) then BB50<=0;
		BB10<=4;
		BB5<=0;
	elsif(Rest3=35) then BB50<=0;
		BB10<=3;
		BB5<=1;
	elsif(Rest3=30) then BB50<=0;
		BB10<=3;
		BB5<=0;
	elsif(Rest3=25) then BB50<=0;
		BB10<=2;
		BB5<=1;
	elsif(Rest3=20) then BB50<=0;
		BB10<=2;
		BB5<=0;
	elsif(Rest3=15) then BB50<=0;
		BB10<=1;
		BB5<=1;
	elsif(Rest3=10) then BB50<=0;
		BB10<=1;
		BB5<=0;
	elsif(Rest3=5) then BB50<=0;
		BB10<=0;
		BB5<=1;
	elsif(Rest3=0) then BB50<=0;
		BB10<=0;
		BB5<=0;
	end if;
	end process;
end architecture ;
