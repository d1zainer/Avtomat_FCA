@echo off
rem  Vivado(TM)
rem  compile.bat: a Vivado-generated XSim simulation Script
rem  Copyright 1986-1999, 2001-2012 Xilinx, Inc. All Rights Reserved.

set PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%;D:/Xilinx/14.4/ISE_DS/EDK/bin/nt64;D:/Xilinx/14.4/ISE_DS/EDK/lib/nt64;D:/Xilinx/14.4/ISE_DS/ISE/bin/nt64;D:/Xilinx/14.4/ISE_DS/ISE/lib/nt64;D:/Xilinx/14.4/ISE_DS/common/bin/nt64;D:/Xilinx/14.4/ISE_DS/common/lib/nt64;D:/Xilinx/Vivado/2012.4/bin;%PATH%
set XILINX_PLANAHEAD=D:/Xilinx/14.4/ISE_DS/PlanAhead

xelab -m64 --incremental --debug typical --O2 --relax --mt auto --maxdelay -L work -L simprims_ver -L secureip --snapshot finit_avt_finit_avt_tb_time_impl --prj D:/lab_made/lab_3_of_4/lab_3_of_4.sim/sim_1/impl/timing/finit_avt_finit_avt_tb.prj   work.finit_avt_finit_avt_tb   work.glbl
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)
