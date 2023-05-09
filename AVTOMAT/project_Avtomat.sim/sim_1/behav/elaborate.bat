@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto af226fd2f62f4d6b955349152f35d11f -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot finit_avt_finit_avt_tb_behav xil_defaultlib.finit_avt_finit_avt_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
