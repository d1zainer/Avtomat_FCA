
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
U
,Running DRC as a precondition to command %s
22*	vivadotcl2
route_designZ4-22
5
Running DRC with %s threads
24*drc2
2Z23-27
;

Starting %s Task
103*constraints2	
RoutingZ18-103
^
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
2Z35-254
9

Starting %s Task
103*constraints2
RouteZ18-103
C

Phase %s%s
101*constraints2
1 2
Build RT DesignZ18-101
T

Phase %s%s
101*constraints2
1.1 2 
Build Netlist & NodeGraph (MT)Z18-101
�
>%sTime (s): elapsed = %s . Memory (MB): peak = %s ; gain = %s
269*common2
Netlist sorting complete. 2

00:00:002	
766.1172
0.000Z17-269
C
7Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 0
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:09 . Memory (MB): peak = 1051.758 ; gain = 285.641
2
&Phase 1 Build RT Design | Checksum: 0
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:09 . Memory (MB): peak = 1051.758 ; gain = 285.641
I

Phase %s%s
101*constraints2
2 2
Router InitializationZ18-101
B

Phase %s%s
101*constraints2
2.1 2
Create TimerZ18-101
8
,Phase 2.1 Create Timer | Checksum: ac1017b4
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:09 . Memory (MB): peak = 1051.758 ; gain = 285.641
Q
3Estimated Global Vertical Wire Utilization = %s %%
23*route2
0.00Z35-23
S
5Estimated Global Horizontal Wire Utilization = %s %%
22*route2
0.00Z35-22
E

Phase %s%s
101*constraints2
2.2 2
Restore RoutingZ18-101
:
Design has %s routable nets.
92*route2
10Z35-249
?
#Restored %s nets from the routeDb.
95*route2
0Z35-252
E
)Found %s nets with FIXED_ROUTE property.
94*route2
0Z35-251
;
/Phase 2.2 Restore Routing | Checksum: ac1017b4
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:09 . Memory (MB): peak = 1056.926 ; gain = 290.809
I

Phase %s%s
101*constraints2
2.3 2
Special Net RoutingZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: e7c97bc0
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:10 . Memory (MB): peak = 1088.680 ; gain = 322.563
R

Phase %s%s
101*constraints2
2.4 2
Non Guided Clock Net RoutingZ18-101
H
<Phase 2.4 Non Guided Clock Net Routing | Checksum: e7c97bc0
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:10 . Memory (MB): peak = 1088.680 ; gain = 322.563
C

Phase %s%s
101*constraints2
2.5 2
Update TimingZ18-101
S

Phase %s%s
101*constraints2
2.5.1 2
Update timing with NCN CRPRZ18-101
H

Phase %s%s
101*constraints2

2.5.1.1 2
Hold BudgetingZ18-101
>
2Phase 2.5.1.1 Hold Budgeting | Checksum: e7c97bc0
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:10 . Memory (MB): peak = 1088.680 ; gain = 322.563
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: e7c97bc0
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:10 . Memory (MB): peak = 1088.680 ; gain = 322.563
9
-Phase 2.5 Update Timing | Checksum: e7c97bc0
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:10 . Memory (MB): peak = 1088.680 ; gain = 322.563
l
Estimated Timing Summary %s
57*route28
6| WNS=0.96   | TNS=0      | WHS=-0.076 | THS=-0.227 |
Z35-57
?

Phase %s%s
101*constraints2
2.6 2
	BudgetingZ18-101
5
)Phase 2.6 Budgeting | Checksum: e7c97bc0
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:10 . Memory (MB): peak = 1088.680 ; gain = 322.563
?
3Phase 2 Router Initialization | Checksum: e7c97bc0
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:10 . Memory (MB): peak = 1088.680 ; gain = 322.563
C

Phase %s%s
101*constraints2
3 2
Initial RoutingZ18-101
9
-Phase 3 Initial Routing | Checksum: 5ca61f33
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:11 . Memory (MB): peak = 1088.680 ; gain = 322.563
F

Phase %s%s
101*constraints2
4 2
Rip-up And RerouteZ18-101
H

Phase %s%s
101*constraints2
4.1 2
Global Iteration 0Z18-101
E

Phase %s%s
101*constraints2
4.1.1 2
Update TimingZ18-101
;
/Phase 4.1.1 Update Timing | Checksum: 7e9cee0a
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:11 . Memory (MB): peak = 1089.063 ; gain = 322.945
l
Estimated Timing Summary %s
57*route28
6| WNS=0.935  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
L

Phase %s%s
101*constraints2
4.1.2 2
collectNewHoldAndFixZ18-101
B
6Phase 4.1.2 collectNewHoldAndFix | Checksum: 7e9cee0a
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:11 . Memory (MB): peak = 1089.316 ; gain = 323.199
>
2Phase 4.1 Global Iteration 0 | Checksum: 7e9cee0a
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:11 . Memory (MB): peak = 1089.316 ; gain = 323.199
<
0Phase 4 Rip-up And Reroute | Checksum: 7e9cee0a
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:11 . Memory (MB): peak = 1089.316 ; gain = 323.199
A

Phase %s%s
101*constraints2
5 2
Delay CleanUpZ18-101
C

Phase %s%s
101*constraints2
5.1 2
Update TimingZ18-101
9
-Phase 5.1 Update Timing | Checksum: 7e9cee0a
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:11 . Memory (MB): peak = 1089.316 ; gain = 323.199
l
Estimated Timing Summary %s
57*route28
6| WNS=1.03   | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
7
+Phase 5 Delay CleanUp | Checksum: 7e9cee0a
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:11 . Memory (MB): peak = 1089.316 ; gain = 323.199
A

Phase %s%s
101*constraints2
6 2
Post Hold FixZ18-101
7
+Phase 6 Post Hold Fix | Checksum: 7e9cee0a
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:11 . Memory (MB): peak = 1089.324 ; gain = 323.207
I

Phase %s%s
101*constraints2
7 2
Verifying routed netsZ18-101
?
3Phase 7 Verifying routed nets | Checksum: 7e9cee0a
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:11 . Memory (MB): peak = 1093.070 ; gain = 326.953
E

Phase %s%s
101*constraints2
8 2
Depositing RoutesZ18-101
;
/Phase 8 Depositing Routes | Checksum: 810037e4
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:11 . Memory (MB): peak = 1093.070 ; gain = 326.953
F

Phase %s%s
101*constraints2
9 2
Post Router TimingZ18-101
o
Post Routing Timing Summary %s
20*route28
6| WNS=1.04   | TNS=0      | WHS=0.226  | THS=0      |
Z35-20
=
'The design met the timing requirement.
61*routeZ35-61
5
)Phase 9 Post Router Timing | Checksum: 0
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:12 . Memory (MB): peak = 1093.070 ; gain = 326.953
4
Router Completed Successfully
16*routeZ35-16
,
 Ending Route Task | Checksum: 0
*common
e

%s
*constraints2N
LTime (s): elapsed = 00:04:12 . Memory (MB): peak = 1093.070 ; gain = 326.953
e

%s
*constraints2N
LTime (s): elapsed = 00:04:12 . Memory (MB): peak = 1093.070 ; gain = 326.953
?
Releasing license: %s
83*common2
ImplementationZ17-83
u
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
352
02
02
0Z4-41
C
%s completed successfully
29*	vivadotcl2
route_designZ4-42
�
>%sTime (s): elapsed = %s . Memory (MB): peak = %s ; gain = %s
269*common2
route_design: 2

00:04:122

1093.0702	
326.953Z17-269
5
Running DRC with %s threads
24*drc2
2Z23-27
�
#The results of DRC are in file %s.
168*coretcl2�
DD:/lab_made/lab_3_of_4/lab_3_of_4.runs/impl_1/fin_avt_drc_routed.rptDD:/lab_made/lab_3_of_4/lab_3_of_4.runs/impl_1/fin_avt_drc_routed.rpt8Z2-168
B
,Running Vector-less Activity Propagation...
51*powerZ33-51
G
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1
n
UpdateTimingParams:%s.
91*timing2>
< Speed grade: -1, Delay Type: min_max, Constraints type: SDCZ38-91
a
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
2Z38-191
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
�
>%sTime (s): elapsed = %s . Memory (MB): peak = %s ; gain = %s
269*common2
Write XDEF Complete: 2
00:00:00.4152

1093.0702
0.000Z17-269


End Record