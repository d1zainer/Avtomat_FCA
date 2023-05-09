
x
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2
	xc7vx485tZ17-347
h
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2
	xc7vx485tZ17-349
S
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_designZ4-22
5
Running DRC with %s threads
24*drc2
2Z23-27
<
%Done setting XDC timing constraints.
35*timingZ38-35
F

Starting %s Task
103*constraints2
Logic OptimizationZ18-103
4
(Logic Optimization | Checksum: a8f58310
*common
<

Phase %s%s
101*constraints2
1 2

RetargetZ18-101
0
Retargeted %s cell(s).
49*opt2
0Z31-49
2
&Phase 1 Retarget | Checksum: a8f58310
*common
f

%s
*constraints2O
MTime (s): elapsed = 00:00:00.038 . Memory (MB): peak = 688.133 ; gain = 1.059
H

Phase %s%s
101*constraints2
2 2
Constant PropagationZ18-101
.
Eliminated %s cells.
10*opt2
0Z31-10
>
2Phase 2 Constant Propagation | Checksum: a8f58310
*common
f

%s
*constraints2O
MTime (s): elapsed = 00:00:00.047 . Memory (MB): peak = 688.270 ; gain = 1.195
9

Phase %s%s
101*constraints2
3 2
SweepZ18-101
9
 Eliminated %s unconnected nets.
12*opt2
0Z31-12
:
!Eliminated %s unconnected cells.
11*opt2
0Z31-11
/
#Phase 3 Sweep | Checksum: a8f58310
*common
f

%s
*constraints2O
MTime (s): elapsed = 00:00:00.057 . Memory (MB): peak = 688.359 ; gain = 1.285
@
4Ending Logic Optimization Task | Checksum: a8f58310
*common
f

%s
*constraints2O
MTime (s): elapsed = 00:00:00.058 . Memory (MB): peak = 688.363 ; gain = 1.289
<
%Done setting XDC timing constraints.
35*timingZ38-35
?
Releasing license: %s
83*common2
ImplementationZ17-83
u
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
112
02
02
0Z4-41
A
%s completed successfully
29*	vivadotcl2

opt_designZ4-42
ˆ
>%sTime (s): elapsed = %s . Memory (MB): peak = %s ; gain = %s
269*common2
opt_design: 2

00:00:102	
688.5122
37.965Z17-269
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
”
>%sTime (s): elapsed = %s . Memory (MB): peak = %s ; gain = %s
269*common2
Write XDEF Complete: 2
00:00:00.3362	
689.3092
0.625Z17-269


End Record