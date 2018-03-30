--AUTHOR Luca Zelioli

LIBRARY IEEE; 
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all; 

--port
ENTITY ex6 IS  

	PORT (
	D0,D1,D2,D3: IN STD_LOGIC; 
	Y1, Y0,V: OUT STD_LOGIC

);


END ex6;

ARCHITECTURE behavior OF ex6 IS

BEGIN
	
	compute_output: process (D0,D1,D2,D3)
	begin
		if(D0='0') then 
			Y1 <= 'X';
			Y0 <= 'X';
			V <= '0'; 
		elsif (D0 = '1') then
			Y1 <= '0';
			Y0 <= '0';
			V <= '1'; 
		elsif (D1 ='0') then 
			Y1 <= '0';
			Y0 <= '1';
			V <= '1';
		elsif (D2 ='1') then 
			Y1 <= '1';
			Y0 <= '0';
			V <= '1'; 
		else 
			Y1 <='1';
			Y0 <= '1';
			V <= '1'; 
 		end if; 

	end process;
		 
END behavior;  
		   