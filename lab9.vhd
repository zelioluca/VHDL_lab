library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
use ieee.std_logic_arith.all; 

entity ex4 is 

    port(sig : in std_logic_vector(1 downto 0);
         clock, reset, x : in std_logic; 
         tila : out std_logic 
    );

 end ex4;    

 architecture number1 of ex4 is
 
    type state_type is (a,b,c,zero);
    signal state : state_type;
begin 
    process (clock, reset)
    begin
        if(reset = '1') then 
        state <= zero; 
        elsif rising_edge(clock) and (x = '1') then 

        CASE state is       
            when zero =>
                if (sig = "00") then 
                state <= a; 
                end if; 
            when a => 
                if (sig = "01") then 
                state <= b; 
                end if; 
            when b => 
                if(sig = "10") then 
                state <= c;
                end if; 
            when c => 
                if sig ="11" then 
                state <= zero;
                end if; 
                        
            when others =>
                state <= zero;
end case; 
 
            else

	     CASE state is       
            when zero =>
                if (sig = "00") then 
                state <= c; 
                end if; 
            when c => 
                if (sig = "01") then 
                state <= b; 
                end if; 
            when b => 
                if(sig = "10") then 
                state <= a;
                end if; 
            when a => 
                if sig ="11" then 
                state <= zero;
                end if; 
                        
            when others =>
                state <= zero;
        end case;          
         end if;
end process;  
    
    tila <= '1' when state = zero else '0';
                  
end number1; 