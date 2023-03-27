library	ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity Tonomat is
	port ( f0,f1,f2,f3,f4:inout std_logic;  RM:inout bit:='0'; FS: in std_logic;
	Rest:inout integer:=0;
	Eliberare_Cola:out bit;
	B50:out integer:=0;
	B10:out integer:=0;
	B5: out integer:=0);
end entity ;

architecture behavioural of Tonomat is
signal A: integer:=0;
signal S_f: integer;
signal res: bit;

 	component Suma is
		port (A: in integer; D:in std_logic; RRM: in bit;
		S:inout integer:=0);
	end component ;
	
	component dat is
		port( S2:in integer; RM_1:inout bit; ress: in bit;
		Rest1:out integer;
		Eliberare:out bit);
	end component ;
	
	component stil is
		port (Rest3: in integer;
		BB50: out integer;
		BB10: out integer;
		BB5: out integer);
	end component;
	
begin
	process(f0,f1,f2,f3,FS)
	begin
		if(FS='1') then A<=0;
		elsif(f0='1') then A<= 5;
		elsif (f1='1') then A<= 10;
		elsif (f2='1') then A<= 50;	
			else A<=0;
		end if;
		end process;
	 Suma_f:Suma port map(A=>A,D=>f4,RRM=>RM,S=>S_f);
	 Rest_f:dat port map(S2=>S_f,RM_1=>res,ress=>RM,Rest1=>Rest,Eliberare=>Eliberare_Cola);
	 Rest_Alege: stil port map(Rest3=>Rest,BB50=>B50,BB10=>B10,BB5=>B5);
end architecture ;