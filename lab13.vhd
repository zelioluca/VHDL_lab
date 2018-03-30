--Author Luca Zelioli

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
use ieee.std_logic_arith.all;

ENTITY ex8 IS 

PORT(
    clock, d : IN std_logic; 
    q : OUT std_logic 
);

END ex8; 

architecture diff of ex8 is
    begin 
    process(clock, d)
    begin 
        if(clock'event and clock='1') then 
            q <= d after 2 ns; 
        end if; 
    end process; 
	wait on clock; 
end diff; 



 