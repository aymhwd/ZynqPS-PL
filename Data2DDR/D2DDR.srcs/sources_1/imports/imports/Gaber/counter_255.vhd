library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter_255 is
    Port ( clk    : in STD_LOGIC;
           rst    : in STD_LOGIC;
           Tready : in STD_LOGIC;
           Tvalid : out STD_LOGIC;
           Tdata  : out STD_LOGIC_VECTOR (7 downto 0));
end counter_255;

architecture Behavioral of counter_255 is
signal count: unsigned (7 downto 0):= x"00";
begin
process (clk,rst,Tready)
    --variable count  :   integer range 0 to 256;
    begin
        if rst='0' then
            Tvalid<='0';
            Tdata<="00000000";
            --count:=0;
            count <= x"00";
        elsif rising_edge(clk) then
            if Tready='1' then
                Tvalid<='1';            
                if count<256 then
                    --count:=count+1;
                    count <= count + 1;
                end if;
                if count=256 then
                    --count:=0;
                    count <= x"00";
                end if;
            end if;
        end if;
            --Tdata<=std_logic_vector(to_unsigned(count,8));
            Tdata <= std_logic_vector(count);
    end process;
end Behavioral;