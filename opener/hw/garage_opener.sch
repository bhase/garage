v 20110115 2
C 31400 43200 1 0 0 L6203-1.sym
{
T 29500 48200 5 8 0 0 0 0 1
device=L6203
T 29500 47800 5 8 0 0 0 0 1
footprint=MULTIWATT11
T 33100 43300 5 8 1 1 0 0 1
refdes=U1
}
C 33900 39400 1 0 0 gnd-1.sym
C 34200 40100 1 90 0 capacitor-1.sym
{
T 33500 40700 5 10 0 0 90 0 1
device=CAPACITOR
T 33700 40300 5 10 1 1 90 0 1
refdes=C10
T 33300 40700 5 10 0 0 90 0 1
symversion=0.1
T 34200 40000 5 10 1 1 90 0 1
value=100n
}
N 34000 41000 34000 41400 4
N 34000 39700 34000 40100 4
C 33800 41400 1 0 0 vcc-1.sym
C 27500 46400 1 0 0 lm7805-1.sym
{
T 29100 47700 5 10 0 0 0 0 1
device=7805
T 28900 47400 5 10 1 1 0 6 1
refdes=U3
T 27500 46400 5 10 0 0 0 0 1
footprint=TO220STAND
}
C 24400 47900 1 0 0 bridge-1.sym
{
T 24600 48900 5 10 1 1 0 0 1
refdes=U4
T 24600 49300 5 10 0 0 0 0 1
device=bridge
T 24600 49700 5 10 0 0 0 0 1
symversion=0.1
}
N 32600 43200 32600 42600 4
N 25900 48100 25900 47800 4
C 28200 45200 1 0 0 gnd-1.sym
N 28300 46400 28300 45500 4
C 17200 47800 1 0 0 connector3-1.sym
{
T 19000 48700 5 10 0 0 0 0 1
device=CONNECTOR_3
T 17200 48900 5 10 1 1 0 0 1
refdes=CONN1
T 17200 47500 5 10 1 1 0 0 1
comment=24V ~
T 17100 48000 5 10 1 1 0 7 1
comment=0V ~
T 17100 48300 5 10 1 1 0 7 1
comment=12V ~
T 17100 48600 5 10 1 1 0 7 1
comment=24V ~
T 17200 47800 5 10 0 1 0 0 1
footprint=3terminal_saddle
}
C 39000 44300 1 0 1 connector2-1.sym
{
T 38800 45300 5 10 0 0 0 6 1
device=CONNECTOR_2
T 39200 45100 5 10 1 1 0 6 1
refdes=CONN2
T 38500 44100 5 10 1 1 0 0 1
comment=DC Motor
T 39000 44300 5 10 0 1 0 0 1
footprint=2terminal_saddle
}
N 33600 44800 34900 44800 4
N 33600 44400 34900 44400 4
N 34900 44400 34900 43300 4
N 24000 48100 24400 48100 4
N 24000 48000 24000 48100 4
C 29200 47200 1 0 0 vcc-1.sym
N 29100 47000 29400 47000 4
C 35700 44700 1 90 0 resistor-2.sym
{
T 35350 45100 5 10 0 0 90 0 1
device=RESISTOR
T 35400 44900 5 10 1 1 90 0 1
refdes=R2
T 35900 44900 5 10 1 1 90 0 1
value=8.2
T 35700 44700 5 10 0 1 0 0 1
footprint=0805
}
C 35800 43500 1 90 0 capacitor-1.sym
{
T 35100 43700 5 10 0 0 90 0 1
device=CAPACITOR
T 35300 43700 5 10 1 1 90 0 1
refdes=C3
T 34900 43700 5 10 0 0 90 0 1
symversion=0.1
T 35800 43500 5 10 1 1 90 0 1
value=15n
}
N 35600 44700 35600 44400 4
N 35600 45600 35600 45800 4
N 35600 43500 35600 43300 4
C 33800 43800 1 0 0 capacitor-1.sym
{
T 34000 44500 5 10 0 0 0 0 1
device=CAPACITOR
T 33900 44200 5 10 1 1 0 0 1
refdes=C4
T 34000 44700 5 10 0 0 0 0 1
symversion=0.1
T 33700 43800 5 10 1 1 0 0 1
value=15n
}
C 33800 45000 1 0 0 capacitor-1.sym
{
T 34000 45700 5 10 0 0 0 0 1
device=CAPACITOR
T 34000 45500 5 10 1 1 0 0 1
refdes=C5
T 34000 45900 5 10 0 0 0 0 1
symversion=0.1
T 33700 45000 5 10 1 1 0 0 1
value=15n
}
N 33600 44000 33800 44000 4
N 34700 44000 34900 44000 4
N 33600 45200 33800 45200 4
N 34900 44800 34900 45800 4
N 34700 45200 34900 45200 4
C 36500 45600 1 0 0 diode-3.sym
{
T 36650 45450 5 10 1 1 0 0 1
device=BYW98
T 36850 46050 5 10 1 1 0 0 1
refdes=D1
T 36500 45600 5 10 0 1 0 0 1
footprint=ALF400
}
C 36500 43100 1 0 0 diode-3.sym
{
T 36650 42950 5 10 1 1 0 0 1
device=BYW98
T 36850 43550 5 10 1 1 0 0 1
refdes=D2
T 36500 43100 5 10 0 1 0 0 1
footprint=ALF400
}
N 34900 45800 36500 45800 4
N 37400 45800 37500 45800 4
N 37500 45800 37500 45600 4
N 34900 43300 36500 43300 4
N 37400 43300 37500 43300 4
N 37500 43300 37500 43100 4
C 34000 46800 1 180 0 capacitor-1.sym
{
T 33800 46100 5 10 0 0 180 0 1
device=CAPACITOR
T 33500 46900 5 10 1 1 180 0 1
refdes=C6
T 33800 45900 5 10 0 0 180 0 1
symversion=0.1
T 33800 46300 5 10 1 1 180 0 1
value=100n
}
N 32900 46600 33100 46600 4
C 30900 46100 1 0 1 gnd-1.sym
C 31000 46800 1 180 1 capacitor-1.sym
{
T 31200 46100 5 10 0 0 180 6 1
device=CAPACITOR
T 31500 46900 5 10 1 1 180 6 1
refdes=C7
T 31200 45900 5 10 0 0 180 6 1
symversion=0.1
T 31200 46300 5 10 1 1 180 6 1
value=220n
}
N 32100 46200 32100 46600 4
N 32100 46600 31900 46600 4
N 30800 46400 30800 46600 4
N 30800 46600 31000 46600 4
N 34000 46600 34200 46600 4
N 34200 46600 34200 46400 4
N 25600 48600 25900 48600 4
N 25900 48600 25900 49600 4
N 25900 49600 32900 49600 4
N 32900 46200 32900 49600 4
C 29600 45900 1 90 0 capacitor-1.sym
{
T 28900 46100 5 10 0 0 90 0 1
device=CAPACITOR
T 29100 46100 5 10 1 1 90 0 1
refdes=C8
T 28700 46100 5 10 0 0 90 0 1
symversion=0.1
T 29700 46500 5 10 1 1 90 0 1
value=0.1µ
}
N 29400 46800 29400 47200 4
N 28300 45700 29400 45700 4
N 29400 45700 29400 45900 4
C 31200 42900 1 90 0 resistor-2.sym
{
T 30850 43300 5 10 0 0 90 0 1
device=RESISTOR
T 30900 43100 5 10 1 1 90 0 1
refdes=R3
T 31400 43100 5 10 1 1 90 0 1
value=0.15
}
N 31100 44000 31100 43800 4
C 31000 42300 1 0 0 gnd-1.sym
N 31100 42900 31100 42600 4
C 27000 48400 1 90 0 capacitor-1.sym
{
T 26300 48600 5 10 0 0 90 0 1
device=CAPACITOR
T 26500 48600 5 10 1 1 90 0 1
refdes=C9
T 26100 48600 5 10 0 0 90 0 1
symversion=0.1
T 27000 48300 5 10 1 1 90 0 1
value=15n
}
N 26800 49300 26800 49600 4
N 26800 48100 26800 48400 4
N 37300 44800 36200 44800 4
N 36200 44800 36200 45800 4
N 37300 44500 36200 44500 4
N 36200 43300 36200 44500 4
C 32500 42300 1 0 0 gnd-2.sym
C 25800 47500 1 0 0 gnd-2.sym
C 37400 45300 1 0 0 gnd-2.sym
C 37400 42800 1 0 0 gnd-2.sym
C 37400 40200 1 0 0 gnd-1.sym
C 38200 40200 1 0 0 gnd-2.sym
N 37500 40500 37500 40700 4
N 38300 40700 38300 40500 4
N 18900 48600 24400 48600 4
N 25300 44000 31400 44000 4
C 36500 40200 1 0 0 agnd-1.sym
N 36600 40500 36600 40700 4
N 36600 40700 38300 40700 4
C 36400 41400 1 0 0 avcc-1.sym
C 38100 41400 1 0 0 vcc-1.sym
N 36600 41400 36600 41200 4
N 36600 41200 38300 41200 4
N 38300 41200 38300 41400 4
C 34100 46100 1 0 0 gnd-2.sym
N 31100 44800 31400 44800 4
N 31100 44400 31400 44400 4
N 29500 44500 29500 45200 4
N 29500 45200 31400 45200 4
C 21300 33900 1 0 0 gnd-1.sym
N 20500 35900 20500 36100 4
C 17200 34800 1 0 0 connector4-1.sym
{
T 19000 35700 5 10 0 0 0 0 1
device=CONNECTOR_4
T 17200 36200 5 10 1 1 0 0 1
refdes=CONN3
T 17200 34600 5 10 1 1 0 0 1
comment=Trigger
}
C 20300 37100 1 0 0 vcc-1.sym
C 20600 36100 1 90 0 resistor-2.sym
{
T 20250 36500 5 10 0 0 90 0 1
device=RESISTOR
T 20300 36300 5 10 1 1 90 0 1
refdes=R12
T 20800 36300 5 10 1 1 90 0 1
value=1.8k
T 20600 36100 5 10 0 1 0 0 1
footprint=0805
}
N 20500 37100 20500 37000 4
N 18900 35300 19500 35300 4
C 19200 33900 1 0 0 gnd-1.sym
N 18900 35000 19300 35000 4
N 18900 35600 19300 35600 4
N 19300 34200 19300 35600 4
N 19500 35900 19500 35300 4
C 20200 34800 1 90 0 capacitor-1.sym
{
T 19500 35000 5 10 0 0 90 0 1
device=CAPACITOR
T 19700 35000 5 10 1 1 90 0 1
refdes=C13
T 19300 35000 5 10 0 0 90 0 1
symversion=0.1
T 20200 34700 5 10 1 1 90 0 1
value=15n
}
N 20000 35700 20000 35900 4
N 20000 34800 20000 34600 4
N 20000 34600 19300 34600 4
C 22300 47900 1 0 0 fuse-2.sym
{
T 22900 47650 5 10 1 1 0 6 1
device=6.3A
T 22500 48200 5 10 1 1 0 0 1
refdes=F1
T 22500 48650 5 10 0 0 0 0 1
symversion=0.1
T 23300 48200 5 10 1 1 0 6 1
comment=slow
}
N 23200 48000 24000 48000 4
N 18900 48000 22300 48000 4
C 27600 49300 1 270 0 capacitor-4.sym
{
T 28700 49100 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 27500 48700 5 10 1 1 90 0 1
refdes=C14
T 28300 49100 5 10 0 0 270 0 1
symversion=0.1
T 28200 48700 5 10 1 1 90 0 1
value=470µ
}
N 27800 49300 27800 49600 4
N 27800 48400 27800 48100 4
N 25600 48100 27800 48100 4
C 34800 39400 1 0 0 gnd-1.sym
C 35100 40100 1 90 0 capacitor-1.sym
{
T 34400 40300 5 10 0 0 90 0 1
device=CAPACITOR
T 34600 40300 5 10 1 1 90 0 1
refdes=C15
T 34200 40300 5 10 0 0 90 0 1
symversion=0.1
T 35100 40000 5 10 1 1 90 0 1
value=100n
}
N 34900 41000 34900 41400 4
N 34900 39700 34900 40100 4
C 34700 41400 1 0 0 vcc-1.sym
C 27600 45900 1 90 0 capacitor-1.sym
{
T 26900 46100 5 10 0 0 90 0 1
device=CAPACITOR
T 27300 45900 5 10 1 1 90 0 1
refdes=C16
T 26700 46100 5 10 0 0 90 0 1
symversion=0.1
T 27800 46000 5 10 1 1 90 0 1
value=0.33µ
}
N 27400 45900 27400 45700 4
N 27400 45700 28300 45700 4
T 30700 47500 9 10 1 0 0 0 1
Power stage
T 25400 46900 9 10 1 0 0 0 1
Power supply
C 30500 44700 1 0 0 in-1.sym
{
T 30500 45000 5 10 0 0 0 0 1
device=INPUT
T 30600 44900 5 10 0 1 0 0 1
refdes=INN1
T 30700 44900 5 10 1 1 0 0 1
netname=IN1
}
C 30500 44300 1 0 0 in-1.sym
{
T 30500 44600 5 10 0 0 0 0 1
device=INPUT
T 30600 44500 5 10 0 1 0 0 1
refdes=INN2
T 30700 44500 5 10 1 1 0 0 1
netname=IN2
}
C 36000 40100 1 90 0 capacitor-1.sym
{
T 35300 40300 5 10 0 0 90 0 1
device=CAPACITOR
T 35500 40300 5 10 1 1 90 0 1
refdes=C17
T 35100 40300 5 10 0 0 90 0 1
symversion=0.1
T 36000 40000 5 10 1 1 90 0 1
value=100n
}
N 35800 41000 35800 41400 4
N 35800 39700 35800 40100 4
C 35600 41400 1 0 0 avcc-1.sym
C 35700 39400 1 0 0 agnd-1.sym
C 30300 38900 1 0 0 resistor-2.sym
{
T 30700 39250 5 10 0 0 0 0 1
device=RESISTOR
T 30000 38800 5 10 1 1 0 0 1
refdes=R22
T 31100 38800 5 10 1 1 0 0 1
value=270
T 30300 38900 5 10 0 1 180 0 1
footprint=0805
}
C 16400 33700 0 0 0 title-A2.sym
C 17200 37900 1 0 0 connector3-1.sym
{
T 19000 38800 5 10 0 0 0 0 1
device=CONNECTOR_3
T 17200 39000 5 10 1 1 0 0 1
refdes=CONN4
T 17200 37600 5 10 1 1 0 0 1
comment=Limit switches
T 17200 37900 5 10 0 1 0 0 1
footprint=3terminal_saddle
}
C 19200 37100 1 0 0 gnd-1.sym
C 21900 37400 1 0 0 resistor-2.sym
{
T 22300 37750 5 10 0 0 0 0 1
device=RESISTOR
T 21900 37700 5 10 1 1 0 0 1
refdes=R15
T 22500 37700 5 10 1 1 0 0 1
value=1k
T 21900 37400 5 10 0 1 0 0 1
footprint=0805
}
C 18600 40400 1 0 0 vcc-1.sym
C 20300 39400 1 180 0 resistor-2.sym
{
T 19900 39050 5 10 0 0 180 0 1
device=RESISTOR
T 19600 39600 5 10 1 1 180 0 1
refdes=R16
T 20600 39600 5 10 1 1 180 0 1
value=4.7k
T 20300 39400 5 10 0 1 90 0 1
footprint=0805
}
C 21900 37100 1 0 0 resistor-2.sym
{
T 22300 37450 5 10 0 0 0 0 1
device=RESISTOR
T 21900 36900 5 10 1 1 0 0 1
refdes=R17
T 22600 36900 5 10 1 1 0 0 1
value=1k
T 21900 37100 5 10 0 1 0 0 1
footprint=0805
}
N 21400 35600 21400 36600 4
N 22800 36600 26200 36600 4
N 21000 37200 21900 37200 4
N 18900 38100 19300 38100 4
N 22800 37200 26200 37200 4
N 22800 37500 26200 37500 4
N 18800 40400 18800 39300 4
N 18800 39300 19400 39300 4
N 19300 38100 19300 37400 4
C 20300 40100 1 180 0 resistor-2.sym
{
T 19900 39750 5 10 0 0 180 0 1
device=RESISTOR
T 19500 40300 5 10 1 1 180 0 1
refdes=R18
T 20600 40300 5 10 1 1 180 0 1
value=4.7k
T 20300 40100 5 10 0 1 90 0 1
footprint=0805
}
N 19400 40000 18800 40000 4
N 20300 39300 20700 39300 4
N 20700 38700 20700 39300 4
N 20300 40000 21000 40000 4
C 24200 43800 1 90 0 resistor-2.sym
{
T 23850 44200 5 10 0 0 90 0 1
device=RESISTOR
T 23900 44000 5 10 1 1 90 0 1
refdes=R19
T 24200 43800 5 10 0 1 0 0 1
footprint=0805
}
C 24200 41700 1 90 0 resistor-2.sym
{
T 23850 42100 5 10 0 0 90 0 1
device=RESISTOR
T 23900 41900 5 10 1 1 90 0 1
refdes=R20
T 24200 41700 5 10 0 1 0 0 1
footprint=0805
}
C 24000 41300 1 0 0 gnd-1.sym
N 24100 41600 24100 41700 4
C 23900 44700 1 0 0 vcc-1.sym
N 26200 39900 25300 39900 4
N 25300 39900 25300 44000 4
N 26200 40500 25600 40500 4
N 25600 40500 25600 44500 4
N 25600 44500 29500 44500 4
C 24000 42700 1 270 1 resistor-variable-2.sym
{
T 23800 43150 5 10 1 1 90 2 1
refdes=R21
T 24900 43500 5 10 0 1 90 2 1
device=VARIABLE_RESISTOR
}
N 24900 43200 24900 39600 4
N 24100 42700 24100 42600 4
N 24100 43800 24100 43600 4
C 21400 34600 1 90 0 switch-pushbutton-no-1.sym
{
T 21100 35000 5 10 1 1 90 0 1
refdes=S1
T 20800 35000 5 10 0 0 90 0 1
device=SWITCH_PUSHBUTTON_NO
}
N 21400 34200 21400 34600 4
T 21700 34600 9 10 1 0 90 0 1
Testbutton
C 31300 39100 1 0 0 leddual-1.sym
{
T 32100 39700 5 10 0 0 0 0 1
device=LED
T 32100 39400 5 10 1 1 0 0 1
refdes=LED1
T 32100 39900 5 10 0 0 0 0 1
symversion=0.1
T 31300 39100 5 10 0 1 0 0 1
footprint=LED3
}
C 31300 38500 1 0 0 leddual-1.sym
{
T 32100 39100 5 10 0 0 0 0 1
device=LED
T 32100 38800 5 10 1 1 0 0 1
refdes=LED2
T 32100 39300 5 10 0 0 0 0 1
symversion=0.1
T 31300 38500 5 10 0 1 0 0 1
footprint=LED3
}
C 30300 38300 1 0 0 resistor-2.sym
{
T 30700 38650 5 10 0 0 0 0 1
device=RESISTOR
T 30000 38200 5 10 1 1 0 0 1
refdes=R23
T 31100 38200 5 10 1 1 0 0 1
value=270
T 30300 38300 5 10 0 1 180 0 1
footprint=0805
}
N 29900 39000 30300 39000 4
N 29900 38400 30300 38400 4
N 29900 39300 31300 39300 4
N 29900 38700 31300 38700 4
N 31200 38400 32500 38400 4
N 32500 38400 32500 38700 4
N 32500 38700 32200 38700 4
N 31200 39000 32500 39000 4
N 32500 39000 32500 39300 4
N 32500 39300 32200 39300 4
C 18900 48200 1 0 0 nc-right-1.sym
{
T 19000 48700 5 10 0 0 0 0 1
value=NoConnection
T 19000 48900 5 10 0 0 0 0 1
device=DRC_Directive
}
N 27400 47000 27500 47000 4
N 28600 49600 28600 47700 4
N 28600 47700 27400 47700 4
N 27400 46800 27400 47700 4
N 18900 38400 21000 38400 4
N 21000 37200 21000 40000 4
N 18900 35900 21400 35900 4
N 26200 39600 24900 39600 4
N 24600 43200 24900 43200 4
C 21900 36500 1 0 0 resistor-2.sym
{
T 22300 36850 5 10 0 0 0 0 1
device=RESISTOR
T 21900 36300 5 10 1 1 0 0 1
refdes=R11
T 22600 36300 5 10 1 1 0 0 1
value=1k
T 21900 36500 5 10 0 1 0 0 1
footprint=0805
}
N 21900 36600 21400 36600 4
C 18500 41900 1 0 0 RFM12-1.sym
{
T 20900 45300 5 10 1 1 0 6 1
refdes=U5
T 18900 45500 5 10 0 0 0 0 1
device=RFM12
}
N 21200 44400 22900 44400 4
N 26200 38400 22900 38400 4
N 22900 38400 22900 44400 4
N 26200 39300 23300 39300 4
N 23300 39300 23300 44800 4
N 23300 44800 21200 44800 4
N 26200 39000 22500 39000 4
N 22500 39000 22500 44000 4
N 22500 44000 21200 44000 4
N 26200 38700 22100 38700 4
N 22100 38700 22100 41200 4
N 22100 41200 16800 41200 4
N 16800 41200 16800 44800 4
N 16800 44800 18600 44800 4
C 18300 44300 1 0 1 out-1.sym
{
T 18300 44600 5 10 0 0 0 6 1
device=INPUT
T 18200 44500 5 10 0 1 0 6 1
refdes=INT02
T 17900 44500 5 10 1 1 0 0 1
netname=INT0
}
N 18300 44400 18600 44400 4
C 21900 42900 1 0 0 vcc-1.sym
C 21700 43100 1 90 0 gnd-1.sym
N 21200 43200 21400 43200 4
C 21200 43500 1 0 0 nc-right-1.sym
{
T 21300 44000 5 10 0 0 0 0 1
value=NoConnection
T 21300 44200 5 10 0 0 0 0 1
device=DRC_Directive
}
C 18100 43500 1 0 0 nc-left-1.sym
{
T 18100 43900 5 10 0 0 0 0 1
value=NoConnection
T 18100 44300 5 10 0 0 0 0 1
device=DRC_Directive
}
C 18100 43100 1 0 0 nc-left-1.sym
{
T 18100 43500 5 10 0 0 0 0 1
value=NoConnection
T 18100 43900 5 10 0 0 0 0 1
device=DRC_Directive
}
C 18100 42700 1 0 0 nc-left-1.sym
{
T 18100 43100 5 10 0 0 0 0 1
value=NoConnection
T 18100 43500 5 10 0 0 0 0 1
device=DRC_Directive
}
C 18000 41800 1 0 0 gnd-1.sym
N 18100 42100 18100 42400 4
N 18100 42400 18600 42400 4
N 21200 42800 22100 42800 4
N 22100 42800 22100 42900 4
C 17000 44200 1 0 0 vcc-1.sym
N 17200 44000 17200 44200 4
C 26200 34600 1 0 0 ATmega16_TQFP-1.sym
{
T 29600 42300 5 10 1 1 0 6 1
refdes=U6
T 26500 42800 5 10 0 0 0 0 1
device=ATMega16-TQFP44
T 26500 43000 5 10 0 0 0 0 1
footprint=TQFP44_10
}
C 31900 35600 1 0 0 header10-2.sym
{
T 31900 37600 5 10 0 1 0 0 1
device=HEADER10
T 32500 37700 5 10 1 1 0 0 1
refdes=J1
T 32100 35400 5 10 1 1 0 0 1
comment=JTAG
T 31900 35600 5 10 0 0 0 0 1
footprint=HEADER10_2
}
C 33400 37100 1 0 0 gnd-1.sym
N 33300 37400 33500 37400 4
C 33700 37400 1 0 0 vcc-1.sym
N 33300 37000 33900 37000 4
N 33900 37000 33900 37400 4
C 31400 36100 1 0 0 nc-left-1.sym
{
T 31400 36500 5 10 0 0 0 0 1
value=NoConnection
T 31400 36900 5 10 0 0 0 0 1
device=DRC_Directive
}
C 33300 36100 1 0 0 nc-right-1.sym
{
T 33400 36600 5 10 0 0 0 0 1
value=NoConnection
T 33400 36800 5 10 0 0 0 0 1
device=DRC_Directive
}
C 33400 35500 1 0 0 gnd-1.sym
N 33300 35800 33500 35800 4
N 29900 37000 31200 37000 4
N 31200 37000 31200 37400 4
N 31200 37400 31900 37400 4
N 29900 36400 31400 36400 4
N 31400 36400 31400 37000 4
N 31400 37000 31900 37000 4
N 31900 36600 31200 36600 4
N 31200 36600 31200 36700 4
N 31200 36700 29900 36700 4
N 29900 36100 31300 36100 4
N 31300 36100 31300 35800 4
N 31300 35800 31900 35800 4
N 33300 36600 33900 36600 4
C 31100 41900 1 180 0 capacitor-1.sym
{
T 30900 41200 5 10 0 0 180 0 1
device=CAPACITOR
T 30500 41900 5 10 1 1 180 0 1
refdes=C11
T 30900 41000 5 10 0 0 180 0 1
symversion=0.1
T 31200 41900 5 10 1 1 180 0 1
value=100n
}
C 31200 40400 1 0 0 agnd-1.sym
N 29900 41700 30200 41700 4
N 31100 41700 31300 41700 4
N 31300 40700 31300 41700 4
N 29900 41100 31300 41100 4
C 31600 41900 1 0 0 avcc-1.sym
N 29900 41400 31800 41400 4
N 31800 41400 31800 41900 4
N 25900 36300 26200 36300 4
N 25900 36000 26200 36000 4
C 25900 36200 1 0 1 out-1.sym
{
T 25900 36500 5 10 0 0 0 6 1
device=OUTPUT
T 25800 36400 5 10 0 1 0 6 1
refdes=IN1
T 25500 36400 5 10 1 1 0 0 1
netname=IN1
}
C 25900 35900 1 0 1 out-1.sym
{
T 25900 36200 5 10 0 0 0 6 1
device=OUTPUT
T 25800 36100 5 10 0 1 0 6 1
refdes=IN2
T 25500 36100 5 10 1 1 0 0 1
netname=IN2
}
C 25300 36800 1 0 0 in-1.sym
{
T 25300 37100 5 10 0 0 0 0 1
device=INPUT
T 25400 37000 5 10 0 1 0 0 1
refdes=INT01
T 25500 37000 5 10 1 1 0 0 1
netname=INT0
}
N 25900 36900 26200 36900 4
N 18900 38700 21400 38700 4
N 21400 38700 21400 37500 4
N 21400 37500 21900 37500 4
C 27900 33800 1 0 0 gnd-1.sym
N 28000 34600 28000 34100 4
N 27600 34600 27600 34400 4
N 27600 34400 28000 34400 4
N 28000 34400 28400 34400 4
N 28400 34400 28400 34600 4
C 27900 42900 1 0 0 vcc-1.sym
N 28100 42500 28100 42900 4
N 27700 42500 27700 42700 4
N 27700 42700 28100 42700 4
N 28100 42700 28500 42700 4
N 28500 42700 28500 42500 4
C 25700 35600 1 0 0 nc-left-1.sym
{
T 25700 36000 5 10 0 0 0 0 1
value=NoConnection
T 25700 36400 5 10 0 0 0 0 1
device=DRC_Directive
}
C 25700 35300 1 0 0 nc-left-1.sym
{
T 25700 35700 5 10 0 0 0 0 1
value=NoConnection
T 25700 36100 5 10 0 0 0 0 1
device=DRC_Directive
}
C 25700 41600 1 0 0 nc-left-1.sym
{
T 25700 42000 5 10 0 0 0 0 1
value=NoConnection
T 25700 42400 5 10 0 0 0 0 1
device=DRC_Directive
}
C 25700 41300 1 0 0 nc-left-1.sym
{
T 25700 41700 5 10 0 0 0 0 1
value=NoConnection
T 25700 42100 5 10 0 0 0 0 1
device=DRC_Directive
}
C 29900 40400 1 0 0 nc-right-1.sym
{
T 30000 40900 5 10 0 0 0 0 1
value=NoConnection
T 30000 41100 5 10 0 0 0 0 1
device=DRC_Directive
}
C 29900 40100 1 0 0 nc-right-1.sym
{
T 30000 40600 5 10 0 0 0 0 1
value=NoConnection
T 30000 40800 5 10 0 0 0 0 1
device=DRC_Directive
}
C 29900 39800 1 0 0 nc-right-1.sym
{
T 30000 40300 5 10 0 0 0 0 1
value=NoConnection
T 30000 40500 5 10 0 0 0 0 1
device=DRC_Directive
}
C 29900 39500 1 0 0 nc-right-1.sym
{
T 30000 40000 5 10 0 0 0 0 1
value=NoConnection
T 30000 40200 5 10 0 0 0 0 1
device=DRC_Directive
}
C 29900 37500 1 0 0 nc-right-1.sym
{
T 30000 38000 5 10 0 0 0 0 1
value=NoConnection
T 30000 38200 5 10 0 0 0 0 1
device=DRC_Directive
}
C 29900 37200 1 0 0 nc-right-1.sym
{
T 30000 37700 5 10 0 0 0 0 1
value=NoConnection
T 30000 37900 5 10 0 0 0 0 1
device=DRC_Directive
}
C 29900 35700 1 0 0 nc-right-1.sym
{
T 30000 36200 5 10 0 0 0 0 1
value=NoConnection
T 30000 36400 5 10 0 0 0 0 1
device=DRC_Directive
}
C 29900 35400 1 0 0 nc-right-1.sym
{
T 30000 35900 5 10 0 0 0 0 1
value=NoConnection
T 30000 36100 5 10 0 0 0 0 1
device=DRC_Directive
}
C 33900 36700 1 180 1 out-1.sym
{
T 33900 36400 5 10 0 0 180 6 1
device=OUTPUT
T 34000 36500 5 10 0 1 180 6 1
refdes=RES2
T 34300 36500 5 10 1 1 180 0 1
netname=RES
}
C 23800 40500 1 0 0 in-1.sym
{
T 23800 40800 5 10 0 0 0 0 1
device=INPUT
T 23900 40700 5 10 0 1 0 0 1
refdes=RES1
T 24000 40700 5 10 1 1 0 0 1
netname=RES
}
N 24400 40600 24600 40600 4
N 24600 40600 24600 41100 4
N 24600 41100 26200 41100 4
C 25700 40100 1 0 0 nc-left-1.sym
{
T 25700 40500 5 10 0 0 0 0 1
value=NoConnection
T 25700 40900 5 10 0 0 0 0 1
device=DRC_Directive
}
C 18400 44100 1 180 0 resistor-2.sym
{
T 18000 43750 5 10 0 0 180 0 1
device=RESISTOR
T 17600 43900 5 10 1 1 180 0 1
refdes=R24
T 17600 43700 5 10 1 1 180 0 1
value=4.7k
T 18400 44100 5 10 0 1 90 0 1
footprint=0805
}
N 17200 44000 17500 44000 4
N 18400 44000 18600 44000 4
T 26300 43800 9 10 1 0 0 0 1
Critical - voltage here is only a few hundred millivolts
C 21700 42000 1 0 0 con_SMA.sym
{
T 21200 41900 5 10 1 1 0 0 1
refdes=CONN5
T 21200 42100 5 10 1 1 0 0 1
value=SMA
T 22500 42150 5 8 0 1 0 0 1
footprint=SMA_VERT
}
N 21200 42400 21700 42400 4
C 22000 41500 1 0 0 gnd-1.sym
N 22100 41800 22100 42000 4
