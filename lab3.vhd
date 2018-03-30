--AUTHOR Luca Zelioli

--library

LIBRARY IEEE; 
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all; 


ENTITY luca IS 

	PORT (
	a: IN STD_LOGIC;
	b: IN STD_LOGIC;
        c_in: IN STD_LOGIC; 
	
	sum: OUT STD_LOGIC;
	c_out: OUT STD_LOGIC
);

END luca;

ARCHITECTURE behavior OF luca IS
	BEGIN

	sum <= '1' when (a='1' and b='1' and c_in='1') OR
                        (a='1' xor b='1' xor c_in ='1') ELSE '0'; 
			
	    with ((a='0' and b='1' and c_in ='1') or
		  (a='1' and b='0' and c_in ='1') or
		  (a='1' and b='1' and c_in ='0') or
		  (a='1' and b='1' and c_in ='1')
		   ) select
			
		c_out <= '1' when true,
		         '0' when false,
	                 '0' when others;  
		 
	END behavior; 
		   