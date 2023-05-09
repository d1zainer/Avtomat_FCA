@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim finit_avt_finit_avt_tb_behav -key {Behavioral:sim_1:Functional:finit_avt_finit_avt_tb} -tclbatch finit_avt_finit_avt_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
