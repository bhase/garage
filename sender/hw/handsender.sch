v 20110115 2
C 35200 41000 1 0 0 gnd-1.sym
N 35300 42500 35300 43000 4
N 35300 41300 35300 41800 4
C 35100 43000 1 0 0 vcc-1.sym
C 16400 33700 0 0 0 title-A2.sym
C 23300 41200 1 0 0 RFM12-1.sym
{
T 25700 44600 5 10 1 1 0 6 1
refdes=U?
T 23700 44800 5 10 0 0 0 0 1
device=RFM12
T 23300 41200 5 10 0 1 0 0 1
footprint=RFM12-SMD
}
N 26000 43700 28000 43700 4
N 26000 44100 27500 44100 4
N 23000 45300 29000 45300 4
N 23000 45300 23000 44100 4
N 23000 44100 23400 44100 4
C 26800 42300 1 0 0 vcc-1.sym
C 26500 42400 1 90 0 gnd-1.sym
N 26000 42500 26200 42500 4
C 26000 42800 1 0 0 nc-right-1.sym
{
T 26100 43300 5 10 0 0 0 0 1
value=NoConnection
T 26100 43500 5 10 0 0 0 0 1
device=DRC_Directive
}
C 22900 42800 1 0 0 nc-left-1.sym
{
T 22900 43200 5 10 0 0 0 0 1
value=NoConnection
T 22900 43600 5 10 0 0 0 0 1
device=DRC_Directive
}
C 22900 42400 1 0 0 nc-left-1.sym
{
T 22900 42800 5 10 0 0 0 0 1
value=NoConnection
T 22900 43200 5 10 0 0 0 0 1
device=DRC_Directive
}
C 22900 42000 1 0 0 nc-left-1.sym
{
T 22900 42400 5 10 0 0 0 0 1
value=NoConnection
T 22900 42800 5 10 0 0 0 0 1
device=DRC_Directive
}
C 22900 41100 1 0 0 gnd-1.sym
N 23000 41400 23000 41700 4
N 23000 41700 23400 41700 4
N 26000 42100 27500 42100 4
N 27500 41500 27500 42100 4
C 21800 43500 1 0 0 vcc-1.sym
N 22000 43300 22000 43500 4
C 23200 43400 1 180 0 resistor-2.sym
{
T 22800 43050 5 10 0 0 180 0 1
device=RESISTOR
T 22400 43200 5 10 1 1 180 0 1
refdes=R24
T 22400 43000 5 10 1 1 180 0 1
value=10k
T 23200 43400 5 10 0 1 90 0 1
footprint=0805
}
N 22000 43300 22300 43300 4
N 23200 43300 23400 43300 4
C 34000 41800 1 0 1 ATtiny13.sym
{
T 31700 44200 5 10 1 1 0 0 1
refdes=U?
T 33900 44450 5 10 0 0 0 6 1
device=ATtiny13
T 33900 44650 5 10 0 0 0 6 1
footprint=SOIC8
}
N 28000 43700 28000 43100 4
N 28000 43100 31100 43100 4
N 26000 43300 28500 43300 4
N 31100 43900 28500 43900 4
N 28500 43900 28500 43300 4
N 29000 45300 29000 43500 4
N 29000 43500 31100 43500 4
C 22900 43600 1 0 0 nc-left-1.sym
{
T 22900 44000 5 10 0 0 0 0 1
value=NoConnection
T 22900 44400 5 10 0 0 0 0 1
device=DRC_Directive
}
N 27500 44100 27500 42700 4
N 27500 42700 31100 42700 4
C 36100 41000 1 0 0 gnd-1.sym
N 36200 42600 36200 43000 4
N 36200 41300 36200 41700 4
C 36000 43000 1 0 0 vcc-1.sym
C 36400 41700 1 90 0 capacitor-1.sym
{
T 35700 41900 5 10 0 0 90 0 1
device=CAPACITOR
T 36000 41600 5 10 1 1 90 0 1
refdes=C?
T 35500 41900 5 10 0 0 90 0 1
symversion=0.1
T 36500 42300 5 10 1 1 90 0 1
value=100n
}
C 35500 42500 1 90 1 battery-1.sym
{
T 34600 42200 5 10 0 0 270 2 1
device=BATTERY
T 34800 41800 5 10 1 1 90 2 1
refdes=B?
T 34200 42200 5 10 0 0 270 2 1
symversion=0.1
T 35500 42500 5 10 0 0 0 0 1
footprint=cr2032-p1
}
C 29200 41400 1 0 0 resistor-2.sym
{
T 29600 41750 5 10 0 0 0 0 1
device=RESISTOR
T 29400 41700 5 10 1 1 0 0 1
refdes=R?
T 29400 41200 5 10 1 1 0 0 1
value=10k
T 29200 41400 5 10 0 1 180 0 1
footprint=0805
}
N 30100 41500 30500 41500 4
N 30500 41100 30500 42300 4
N 30500 42300 31100 42300 4
N 27500 41500 27800 41500 4
C 27800 41500 1 0 0 switch-pushbutton-no-1.sym
{
T 28200 41800 5 10 1 1 0 0 1
refdes=S1
T 28200 42100 5 10 0 0 0 0 1
device=SWITCH_PUSHBUTTON_NO
}
N 28800 41500 29200 41500 4
N 27000 42300 27000 42100 4
C 30600 40200 1 90 0 resistor-2.sym
{
T 30250 40600 5 10 0 0 90 0 1
device=RESISTOR
T 30300 40400 5 10 1 1 90 0 1
refdes=R?
T 30800 40400 5 10 1 1 90 0 1
value=100k
T 30600 40200 5 10 0 1 270 0 1
footprint=0805
}
C 30400 39300 1 0 0 gnd-1.sym
N 30500 39600 30500 40200 4
C 31600 40200 1 90 0 capacitor-1.sym
{
T 30900 40400 5 10 0 0 90 0 1
device=CAPACITOR
T 31300 40100 5 10 1 1 90 0 1
refdes=C?
T 30700 40400 5 10 0 0 90 0 1
symversion=0.1
T 31700 40800 5 10 1 1 90 0 1
value=47n
}
N 31400 41100 31400 41500 4
N 31400 41500 30500 41500 4
N 30500 39800 31400 39800 4
N 31400 39800 31400 40200 4
T 30900 45700 9 10 1 0 0 0 1
TODO: LED
T 25100 40800 9 10 1 0 0 0 1
PCB or chip antenna
