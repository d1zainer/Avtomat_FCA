
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fin_avt is
    Port  (clk   : in std_logic;
           cnt   : in std_logic_vector(7 downto 0);
           rst   : in std_logic;
          fca : OUT std_logic_vector(4 downto 0));
end fin_avt;

architecture Behavioral of fin_avt is
TYPE state_type IS (Start, f1, f2, f3, f4, f5, PA, A); 
SIGNAL  next_st    : state_type;
SIGNAL  present_st : state_type;


BEGIN
state_proc: PROCESS (present_st, cnt)
 BEGIN
  CASE present_st IS
  WHEN Start =>
  IF cnt = "00100100"
   THEN next_st <= f1;
   ELSE
   next_st <= Start;
  END IF;
WHEN f1 =>
 if cnt = "01001001"
  THEN next_st <= f2;
  ELSE
  next_st <= Start;
 END IF;
WHEN f2 =>
 IF cnt = "10010010"
  THEN next_st <= f3;
  ELSE
  next_st <= Start;
 END IF;
WHEN f3 =>
 IF cnt = "11001100"
  THEN NEXT_st <= f4;
  ELSE
  next_st <= Start;
 END IF;
 WHEN f4 =>
  IF cnt = "10011001"
   THEN NEXT_st <= f5;
   ELSE
   next_st <= Start;
  END IF;
WHEN f5 =>
 IF CNT = "00110011"
  THEN next_st <= PA;
  ELSE
  next_st <= Start;
 END IF;
 WHEN PA =>
  IF CNT = "01100110"
   THEN next_st <= A;
   ELSE
   next_st <= Start;
  END IF;
WHEN OTHERS =>
 next_st <= Start;
END CASE;
END PROCESS;
next_st_proc:
PROCESS (clk, rst)
BEGIN
 IF rst = '1'
  THEN present_st <= Start;
  ELSIF (rising_edge(clk))
  THEN present_st <= next_st;
 END IF;
END PROCESS;
out_proc:
PROCESS (present_st)
BEGIN
 CASE present_st IS
   WHEN Start =>
    fca <= "00000";
  WHEN f1 =>
    fca <= "00001";
  WHEN f2 =>
   fca <= "00010";
  WHEN f3 =>
   fca <= "00011";
  WHEN f4 =>
   fca <= "00100";
  WHEN f5 =>
      fca <= "00101";
  WHEN PA =>
      fca <= "01110";
  WHEN A =>
      fca <= "11111";
   
 END CASE;
END PROCESS;

end Behavioral;
