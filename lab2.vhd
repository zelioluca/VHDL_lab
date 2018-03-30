--Author Luca Zelioli
-- Exercise 5 with half adder 
--library
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
--entity start
ENTITY and2 IS
	PORT (	
	
	a: IN BIT;
	b: IN BIT;
	 
	c_out: OUT BIT; 
	sum: OUT BIT);
	

END and2;
--architecture start 
ARCHITECTURE behavior OF and2 IS
	
	BEGIN	
	
	sum <= '1' WHEN (a XOR b) = '1' ELSE '0';  
 			
	c_out <= '1' WHEN ( a AND b)= '1' ELSE '0';  

	END behavior;     

--https://www.elprocus.com/half-adder-and-full-adder/   