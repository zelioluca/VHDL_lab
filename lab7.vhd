LIBRARY IEEE;  
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all; 

ENTITY ex1 IS
	port(T, clk, reset: IN std_logic;
	     Q, Qnot: OUT std_logic); 
END entity ex1;


ARCHITECTURE sig of ex1 is 
	
	signal state: std_logic; 
	BEGIN
	p0: process(T,clk,reset)
		begin
			if(reset = '0') then 
				state <= '0';
			elsif rising_edge(clk) then
				if(T='0') then 
					state <= T;
				elsif(T='1') then
					state <= not T;
				else 
					state <='X';
				end if; 

			else 				
			state <='X';
			end if; 
	end process p0; 
	

END ARCHITECTURE sig; 			 
			