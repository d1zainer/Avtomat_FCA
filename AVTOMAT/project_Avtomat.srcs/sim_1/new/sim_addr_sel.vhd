-- Vhdl test bench created from schematic D:\Kasarkin\Library\Lib_US\common\synchro_2ds_test_comp.sch - Mon Oct 19 17:56:16 2015
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY finit_avt_finit_avt_tb IS
END finit_avt_finit_avt_tb;
ARCHITECTURE behavioral OF finit_avt_finit_avt_tb IS

COMPONENT fin_avt
PORT( clk : IN STD_LOGIC; 
      fca : OUT STD_LOGIC_VECTOR (4 DOWNTO 0); 
      cnt : IN std_logic_vector(7 downto 0);
      rst : IN STD_LOGIC);
END COMPONENT;

SIGNAL clk : STD_LOGIC;
SIGNAL cnt : std_logic_vector(7 downto 0);
SIGNAL rst : STD_LOGIC;
SIGNAL fca : STD_LOGIC_VECTOR (4 DOWNTO 0);

--SIGNAL RND : STD_LOGIC_VECTOR (31 DOWNTO 0):=X"00000000";


-- *** Clock Process for CLK - User Defined Section 1 *** 
constant PERIOD : TIME := 10 ns;
constant DUTY_CYCLE : real := 0.5;
constant OFFSET : time := 3 ns; 
-- *** END Clock Process for CLK - User Defined Section 1 ***

BEGIN

UUT: fin_avt PORT MAP(
clk => clk, 
cnt => cnt, 
rst => rst, 
fca => fca
);

-- *** Clock Process for CLK - User Defined Section 2 ***
clk_gen: PROCESS 
BEGIN
WAIT for OFFSET;
CLOCK_LOOP : LOOP
clk <= '0';
WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
clk <= '1';
WAIT FOR (PERIOD * DUTY_CYCLE);
END LOOP CLOCK_LOOP;
END PROCESS; 
-- *** END Clock Process for CLK - User Defined Section 2 ***

RST_gen : PROCESS
BEGIN
rst <= '0'; WAIT FOR PERIOD;
rst <= '1'; WAIT FOR PERIOD;
rst <= '0'; WAIT FOR PERIOD*100;
-- R <= '1'; WAIT FOR PERIOD ns;
-- R <= '0';
WAIT; -- will wait forever
END PROCESS;

---DI_gen : PROCESS
---BEGIN
---if (DI < X"FFFFFFFF") then
---DI <= DI + 1; WAIT FOR PERIOD;
---else
---WAIT; -- will wait forever
---end if;
---END PROCESS;

-- RND_gen : PROCESS
-- BEGIN
-- if (RND < X"FFFFFFFF") then
-- RND <= RND + 7; WAIT FOR PERIOD;
-- else
-- RND <= X"00000000"; WAIT FOR PERIOD;
-- end if;
-- END PROCESS;

--M1 <= RND(1);
--MI <= RND(3);

cnt_gen : PROCESS
BEGIN
cnt <= "00100100"; WAIT FOR PERIOD*3; 
cnt <= "01001001"; WAIT FOR PERIOD*1;
cnt <= "10010010"; WAIT FOR PERIOD*1;
cnt <= "11001100"; WAIT FOR PERIOD*1;
cnt <= "10011001"; WAIT FOR PERIOD*1;
cnt <= "00110011"; WAIT FOR PERIOD*1;
cnt <= "01100110"; WAIT FOR PERIOD*1;
cnt <= "01100110"; WAIT FOR PERIOD*1;
WAIT; -- will wait forever
END PROCESS;

---M1_gen : PROCESS
---BEGIN
---M1 <= '0'; WAIT FOR PERIOD*3;
---M1 <= '0'; WAIT FOR PERIOD*30;
---M1 <= '1'; WAIT FOR PERIOD*12;
---M1 <= '1'; WAIT FOR PERIOD*10;
---M1 <= '1'; WAIT FOR PERIOD*50;
---M1 <= '1'; WAIT FOR PERIOD*30;
---M1 <= '0';
---WAIT; -- will wait forever
--END PROCESS;

END;