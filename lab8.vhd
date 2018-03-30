library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
use ieee.std_logic_arith.all; 

entity ex5 is
        PORT(clock, reset, x: IN STD_LOGIC; 
        q: OUT STD_LOGIC_VECTOR(2 downto 0));
end ex5; 

architecture behavior OF ex5 is 
    
    signal dispari: integer := 1; 
    signal pari : integer := 0;  
    signal ctn: STD_LOGIC_VECTOR(2 downto 0) := "000"; 
    begin 
        process(clock, reset, x)
            begin
                if(reset ='1') then ctn <= "001"; 
                end if; 
                
                if(Rising_edge(clock)) then 
                    if(X='1') then 
                        ctn <= conv_std_logic_vector(dispari, ctn'length); 
                        dispari <= dispari + 2; 
                    else
                        ctn <= conv_std_logic_vector(pari, ctn'length);
                        pari <= pari + 2;
                    end if; 
                end if;

    end process; 
   
end behavior; 