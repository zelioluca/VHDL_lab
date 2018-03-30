--Author Luca Zelioli--

LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

--port
ENTITY ex2 IS 
	PORT (
	a: IN std_logic_vector(1 downto 0);
	b: IN std_logic_vector (1 downto 0);
	control: IN std_logic_vector (1 downto 0); 

	reset: IN std_logic; 

	output: OUT std_logic_vector (1 downto 0)
	
	);
END ex2; 

ARCHITECTURE  behavior OF ex2 IS
	BEGIN
	operation: process(a,b,reset,control)
		begin	
		if reset = '1' then 
			if control = "00" then 
				output <= (a AND b);
			elsif control ="01" then
				output <= (a OR b);  
			elsif control ="10" then 
				output <= (a NAND b);
			else 
				output <= (a NOR b);				 
			end if;
		elsif reset ='0' then  
			output <="00";
		else
			output <="00"; 
		end if;   
 		end process;
	END behavior; 


