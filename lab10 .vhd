library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
use ieee.std_logic_arith.all; 
use ieee.numeric_std.all; 

entity ex5 is 

    port(reset,start, clock : in std_logic
         
    );

 end ex5;    

 architecture number1 of ex5 is
    type state_type is (acceso, spento);
    signal state : state_type;  
    signal number : integer := 1;
    signal multiplier : integer := 3; 
    signal z : std_logic_vector(2 downto 0) := "000"; 
    
    begin
     
	process(start, reset)
		begin
        if(start = '0') then z <= "000"; 
        state <= spento; 
        
        elsif rising_edge(clock) and (start = '1') then 
            z <= conv_std_logic_vector(number, z'length);
            number <= number * multiplier; 
            number <= number +1; 
            state <= acceso; 
        else 
            state <= spento; 
            z <= "000"; 
 
        end if; 
        
		
		end process;

  
 end number1; 





                  
