--Author Luca Zelioli

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
use ieee.std_logic_arith.all; 

entity SevenSeg is 
    port(
        reset : in std_logic; 
        clock : in std_logic; 
        A : in std_logic;
        B : in std_logic; 
        dataOut : out std_logic_vector(6 downto 0)      
    );
end SevenSeg; 

architecture serial of SevenSeg is
    signal temp: std_logic_vector(6 downto 0); 
    signal odd : integer :=1;
    signal even : integer :=0;
    signal letter : integer := 9; 
begin 

    process(clock, reset, A, B)
        begin 
            if(reset = '1') then 
            temp <= "0000001";
            odd <= 1;
            even <= 0;
            letter <= 9; 
            
            elsif(clock'event and clock='1') then 

                if(A='0' and B='1') then
                    temp <= conv_std_logic_vector(odd, temp'length);
                    odd <= odd + 2; 
                elsif(A='1' and B='1') then
                    temp <= conv_std_logic_vector(even, temp'length);
                    even <= even + 2;
                elsif(A='0' and B='0') then
                    temp <= conv_std_logic_vector(letter, temp'length);
                    letter <= letter + 1;
                else 
                    temp <= conv_std_logic_vector(letter, temp'length);
                    letter <= letter + 2;
                end if; 
            end if; 
    end process;
    
    dataOut <= temp; 

end serial;  