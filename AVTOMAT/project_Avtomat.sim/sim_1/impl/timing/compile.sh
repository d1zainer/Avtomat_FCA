#!/bin/sh
# Vivado(TM)
# compile.sh: Vivado-generated Script for launching XSim application
# Copyright 1986-1999, 2001-2012 Xilinx, Inc. All Rights Reserved.
# 
if [ -z "$PATH" ]; then
  PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%:D:/Xilinx/14.4/ISE_DS/EDK/bin/nt64;D:/Xilinx/14.4/ISE_DS/EDK/lib/nt64;D:/Xilinx/14.4/ISE_DS/ISE/bin/nt64;D:/Xilinx/14.4/ISE_DS/ISE/lib/nt64;D:/Xilinx/14.4/ISE_DS/common/bin/nt64;D:/Xilinx/14.4/ISE_DS/common/lib/nt64
else
  PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%:D:/Xilinx/14.4/ISE_DS/EDK/bin/nt64;D:/Xilinx/14.4/ISE_DS/EDK/lib/nt64;D:/Xilinx/14.4/ISE_DS/ISE/bin/nt64;D:/Xilinx/14.4/ISE_DS/ISE/lib/nt64;D:/Xilinx/14.4/ISE_DS/common/bin/nt64;D:/Xilinx/14.4/ISE_DS/common/lib/nt64:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=:
else
  LD_LIBRARY_PATH=::$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

#
# Setup env for Xilinx simulation libraries
#
XILINX_PLANAHEAD=D:/Xilinx/14.4/ISE_DS/PlanAhead
export XILINX_PLANAHEAD
ExecStep()
{
   "$@"
   RETVAL=$?
   if [ $RETVAL -ne 0 ]
   then
       exit $RETVAL
   fi
}

ExecStep xelab -m64 --incremental --debug typical --O2 --relax --mt auto --maxdelay -L work -L simprims_ver -L secureip --snapshot finit_avt_finit_avt_tb_time_impl --prj D:/lab_made/lab_3_of_4/lab_3_of_4.sim/sim_1/impl/timing/finit_avt_finit_avt_tb.prj   work.finit_avt_finit_avt_tb   work.glbl
