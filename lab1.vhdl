-- Author Luca Zelioli
--Exercise number 4
-- multiple gate
library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
-- entity declaration
ENTITY nand2 IS

PORT( 
	d: IN BIT;
	p: IN BIT;
	w: IN BIT;  
	o: OUT BIT
     ); 

END nand2; 
--procedure 
ARCHITECTURE behavior OF nand2 IS

BEGIN

	o<= ((NOT D) AND P) OR W; 

END behavior; 