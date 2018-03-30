--Author Luca Zelioli--

LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 



--port
ENTITY luca IS 
	PORT (
	a: IN UNSIGNED(3 downto 0);

	vote: OUT UNSIGNED (3 downto 0)
	
	);
END luca; 

ARCHITECTURE  behavior OF luca IS
	BEGIN
	operation: process(a)
		begin	 	
			if a = "0010" then 
				vote <= "0001"; 
			elsif 	a = "1101" then 
				vote <="0011";
			elsif a ="1111" then 
				vote <="0100";
			else 
				vote <="0010";
			end if; 

 		end process;
	END behavior; 
  