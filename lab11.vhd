--Author Luca Zelioli

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
use ieee.std_logic_arith.all; 
use ieee.numeric_std.all; 

--declare the entity 
entity ALU74181 is
    port (s : in std_logic_vector(3 downto 0); --selection
         c : in std_logic; --carry signal --L = 1 and H = 0
         A : in std_logic_vector(3 downto 0); --vector A 
         B : in std_logic_vector(3 downto 0); -- vector B 
        fc, fnc : out std_logic_vector(3 downto 0) --function output
          
    
    ); 

end ALU74181; 

--I start here 

architecture exercise1 of ALU74181 is 
    begin
        process(s,c,A,B)
            begin
                if(s = "1111") then  --case LLLL
                    if(c = '1') then
                        fc <= NOT A; 
                        fnc <= "0000"; 
                    else 
                        fc <= "0000"; 
                        fnc <= A;
                    end if;  
                elsif(s = "1110") then  --case LLLH
                    if(c = '1') then
                        fc <= NOT(A + B); 
                        fnc <= "0000";
                    else 
                        fc <= "0000"; 
                        fnc <= A OR B; 
                    end if;  
                elsif(s ="1101") then  --case LLHL
                    if(c = '1') then  
                        fc <= (NOT A) AND B; 
                        fnc <= "0000"; 
                    else 
                        fc <= "0000"; 
                        fnc <= A OR (NOT B); 
                    end if; 
                elsif(s = "1100") then --LLHH
                    if(c = '1') then 
                        fc <= "0000";
                        fnc <= "0000"; 
                    else 
                        fc <= "0000";
                        fnc <= "0000"; 
                    end if; 
                elsif(s = "1011") then  --LHLL
                    if(c = '1') then 
                        fc <= NOT (A AND B);
                        fnc <= "0000";
                    else 
                        fc <= "0000"; 
                        fnc <= A OR (A AND (NOT B)); 
                    end if; 
                elsif(s = "1010") then --LHLH 
                    if(c = '1') then
                        fc <=  NOT B;
                        fnc <= "0000";
                    else
                        fc <= "0000";
                        fnc <= (A OR B) AND (A OR (NOT B)); 
                    end if;
                elsif(s="1001") then --LHHL
                    if(c = '1') then
                        fc <= A XOR B; 
                        fnc <= "0000";
                    else 
                        fc <= "0000";
                        fnc <= (NOT A) AND (NOT B);  
                    end if;
                elsif (s ="1000") then --LHHH
                    if(c = '1') then 
                        fc <= A AND (NOT B); 
                        fnc <= "0000";
                    else
                        fc <= "0000";
                        fnc <= (A AND (NOT B)) OR "0001";
                    end if;
                elsif(s = "0111") then --HLLL
                    if(c = '1') then
                        fc <= A OR B;
                        fnc <= "0000";
                    else
                        fc <= "0000";
                        fnc <= (A AND (NOT B)) OR "0001"; 
                    end if;
                elsif(s = "0110") then --HLLH
                    if(c = '1') then 
                        fc <= A XOR B; 
                        fnc <= "0000";
                    else 
                        fc <= "0000"; 
                        fnc <= A OR B;
                    end if;
                elsif(s="0101") then --HLHL
                    if(c = '1') then 
                        fc <= B;
                        fnc <="0000";
                    else
                        fc <= "0000";
                        fnc <= (A AND (not B)) OR (A AND B); 
                    end if; 
                elsif(s = "0100") then --HLHH
                    if(c = '1') then 
                        fc <= A AND B; 
                        fnc <= "0000"; 
                    else 
                        fc <= "0000"; 
                        fnc <= (A AND B) OR "0001"; 
                    end if; 
                elsif(s = "0011") then  --HHLL
                    if(c = '1') then 
                        fc <= "1111";
                        fnc <= "0000";
                    else
                        fc <= "0000"; 
                        fnc <= A OR A; 
                    end if; 
                elsif(s="0010") then  --HHLH
                    if(c = '1') then 
                        fc <= A OR (NOT B);
                        fnc <= "0000";
                    else 
                        fc <= "0000";
                        fnc <= (A OR B) OR A; 
                    end if; 
                elsif(s = "0001") then  --HHHL
                    if(c = '1') then 
                        fc <= A OR B; 
                        fnc <= "0000";
                    else 
                        fc <= "0000"; 
                        fnc <= (A OR B) OR A; 
                    end if; 
                else                    --HHHH
                    if(c = '1') then 
                        fc <= A; 
                        fnc <= "0000"; 
                    else 
                        fc <= "0000"; 
                        fnc <= A OR "0001"; 
                    end if; 

		    end if; 
        


        end process; 

end exercise1; 