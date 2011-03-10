v 20100214 2
C 44700 40300 1 0 0 lm3s828-analog-debug.sym
{
T 45100 40500 5 10 1 1 0 0 1
device=LM3S828 Analog & Debug
T 46000 41200 5 10 1 1 0 0 1
footprint=QFN48
T 46200 42000 5 10 1 1 0 0 1
refdes=U5
}
C 46800 44400 1 0 0 spartan6-qfp144-bank0.sym
{
T 47600 44500 5 10 1 1 0 0 1
device=Spartan6 Bank 0
T 49100 44500 5 10 1 1 0 0 1
footprint=QFP144
T 48900 47700 5 10 1 1 0 0 1
refdes=U2
}
C 48000 40400 1 90 0 capacitor.sym
{
T 47300 40600 5 10 0 0 90 0 1
device=CAPACITOR
T 48300 40900 5 10 1 1 180 0 1
refdes=C604
T 47100 40600 5 10 0 0 90 0 1
symversion=0.1
T 47900 40300 5 10 1 1 0 0 1
value=1uF
}
N 47600 40900 47800 40900 4
C 47700 40100 1 0 0 gnd-1.sym
T 46700 49500 6 20 1 0 0 0 1
Sheet 6 - Misc IO
C 44700 40400 1 90 0 capacitor.sym
{
T 44000 40600 5 10 0 0 90 0 1
device=CAPACITOR
T 44400 40500 5 10 1 1 180 0 1
refdes=C602
T 43800 40600 5 10 0 0 90 0 1
symversion=0.1
T 44700 40400 5 10 0 1 0 0 1
footprint=0603
}
C 44400 40100 1 0 0 gnd-1.sym
N 44500 40900 44800 40900 4
C 43600 40800 1 0 0 resistor-1.sym
{
T 43900 41200 5 10 0 0 0 0 1
device=RESISTOR
T 43800 41100 5 10 1 1 0 0 1
refdes=R610
T 43500 40600 5 10 1 1 0 0 1
value=100k
T 43600 40800 5 10 0 1 0 0 1
footprint=0603
}
C 43400 40900 1 0 0 3.3v-digital-1.sym
T 43700 44100 8 10 1 0 0 0 1
FIXME - add voltage monitors?
C 50400 49300 1 0 0 resistor-1.sym
{
T 50700 49700 5 10 0 0 0 0 1
device=RESISTOR
T 50600 49600 5 10 1 1 0 0 1
refdes=R608
T 50400 49300 5 10 0 1 0 0 1
footprint=0603
}
C 50400 49300 1 0 1 resistor-1.sym
{
T 50100 49700 5 10 0 0 0 6 1
device=RESISTOR
T 50200 49100 5 10 1 1 0 6 1
refdes=R699
T 50400 49300 5 10 0 1 0 6 1
footprint=0603
}
C 49600 49100 1 0 1 gnd-1.sym
N 50400 48700 50400 49400 4
C 51100 49400 1 0 0 3.3v-digital-1.sym
C 53900 45600 1 0 1 txo-1.sym
{
T 53700 46500 5 10 1 1 0 6 1
refdes=U61
T 53700 47600 5 10 0 0 0 6 1
device=VTXO
}
N 53900 46300 53900 46000 4
N 53900 46000 52300 46000 4
C 51400 46200 1 0 0 resistor-1.sym
{
T 51700 46600 5 10 0 0 0 0 1
device=RESISTOR
T 51600 46500 5 10 1 1 0 0 1
refdes=R611
T 51400 46200 5 10 0 1 0 0 1
footprint=0603
}
N 50400 46300 51400 46300 4
C 51400 45900 1 0 0 resistor-1.sym
{
T 51700 46300 5 10 0 0 0 0 1
device=RESISTOR
T 51600 45700 5 10 1 1 0 0 1
refdes=R698
T 51400 45900 5 10 0 1 0 0 1
footprint=0603
}
N 51400 46000 50400 46000 4
C 46100 48600 1 0 0 resistor-1.sym
{
T 46400 49000 5 10 0 0 0 0 1
device=RESISTOR
T 46300 48800 5 10 1 1 0 0 1
refdes=R601
T 46100 48600 5 10 0 1 0 0 1
footprint=0603
}
C 46100 48000 1 0 0 resistor-1.sym
{
T 46400 48400 5 10 0 0 0 0 1
device=RESISTOR
T 46300 48300 5 10 1 1 0 0 1
refdes=R602
T 46100 48000 5 10 0 1 0 0 1
footprint=0603
}
C 46100 47400 1 0 0 resistor-1.sym
{
T 46400 47800 5 10 0 0 0 0 1
device=RESISTOR
T 46300 47700 5 10 1 1 0 0 1
refdes=R603
T 46100 47400 5 10 0 1 0 0 1
footprint=0603
}
C 46100 46200 1 0 0 resistor-1.sym
{
T 46400 46600 5 10 0 0 0 0 1
device=RESISTOR
T 46300 46500 5 10 1 1 0 0 1
refdes=R605
T 46100 46200 5 10 0 1 0 0 1
footprint=0603
}
C 46100 45600 1 0 0 resistor-1.sym
{
T 46400 46000 5 10 0 0 0 0 1
device=RESISTOR
T 46300 45900 5 10 1 1 0 0 1
refdes=R606
T 46100 45600 5 10 0 1 0 0 1
footprint=0603
}
C 46100 44700 1 0 0 resistor-1.sym
{
T 46400 45100 5 10 0 0 0 0 1
device=RESISTOR
T 46400 44400 5 10 1 1 0 0 1
refdes=R609
T 46100 44700 5 10 0 1 0 0 1
footprint=0603
}
C 46100 46800 1 0 0 resistor-1.sym
{
T 46400 47200 5 10 0 0 0 0 1
device=RESISTOR
T 46300 47100 5 10 1 1 0 0 1
refdes=R604
T 46100 46800 5 10 0 1 0 0 1
footprint=0603
}
C 46100 45000 1 0 0 resistor-1.sym
{
T 46400 45400 5 10 0 0 0 0 1
device=RESISTOR
T 46400 45200 5 10 1 1 0 0 1
refdes=R607
T 46100 45000 5 10 0 1 0 0 1
footprint=0603
}
C 43500 48100 1 90 0 led-3.sym
{
T 42850 49050 5 10 0 0 90 0 1
device=LED
T 43250 48950 5 10 1 1 180 0 1
refdes=D602
T 43100 48100 5 10 0 1 0 0 1
footprint=0805
}
C 44300 48100 1 90 0 led-3.sym
{
T 43650 49050 5 10 0 0 90 0 1
device=LED
T 44550 48350 5 10 1 1 180 0 1
refdes=D603
T 43900 48100 5 10 0 1 0 0 1
footprint=0805
}
C 44700 48700 1 90 0 led-3.sym
{
T 44050 49650 5 10 0 0 90 0 1
device=LED
T 44750 49850 5 10 1 1 180 0 1
refdes=D604
T 44300 48700 5 10 0 1 0 0 1
footprint=0805
}
C 45100 48100 1 90 0 led-3.sym
{
T 44450 49050 5 10 0 0 90 0 1
device=LED
T 45350 48350 5 10 1 1 180 0 1
refdes=D606
T 44700 48100 5 10 0 1 0 0 1
footprint=0805
}
C 45500 48700 1 90 0 led-3.sym
{
T 44850 49650 5 10 0 0 90 0 1
device=LED
T 45550 49850 5 10 1 1 180 0 1
refdes=D605
T 45100 48700 5 10 0 1 0 0 1
footprint=0805
}
C 45900 48100 1 90 0 led-3.sym
{
T 45250 49050 5 10 0 0 90 0 1
device=LED
T 45950 48050 5 10 1 1 180 0 1
refdes=D607
T 45500 48100 5 10 0 1 0 0 1
footprint=0805
}
C 46300 48700 1 90 0 led-3.sym
{
T 45650 49650 5 10 0 0 90 0 1
device=LED
T 46650 49450 5 10 1 1 180 0 1
refdes=D608
T 45900 48700 5 10 0 1 0 0 1
footprint=0805
}
N 43300 49600 46100 49600 4
N 45700 48100 46100 48100 4
N 45300 48700 45300 47500 4
N 45300 47500 46100 47500 4
N 44900 48100 44900 46900 4
N 44900 46900 46100 46900 4
N 44500 48700 44500 46300 4
N 44500 46300 46100 46300 4
N 44100 48100 44100 45700 4
N 44100 45700 46100 45700 4
C 43900 48700 1 90 0 led-3.sym
{
T 43250 49650 5 10 0 0 90 0 1
device=LED
T 43950 49850 5 10 1 1 180 0 1
refdes=D601
T 43500 48700 5 10 0 1 0 0 1
footprint=0805
}
N 43700 48700 43700 45100 4
N 43700 45100 46100 45100 4
N 43300 48100 43300 44800 4
N 43300 44800 46100 44800 4
N 43300 49000 43300 49600 4
N 44100 49000 44100 49600 4
N 44900 49000 44900 49600 4
N 45700 49000 45700 49600 4
C 50000 41600 1 0 1 connector8.sym
{
T 48200 43400 5 10 0 0 0 6 1
device=CONNECTOR_6
T 50100 41400 5 10 1 1 0 6 1
refdes=CONN61
}
C 54300 46600 1 90 0 capacitor.sym
{
T 53600 46800 5 10 0 0 90 0 1
device=CAPACITOR
T 54100 47300 5 10 1 1 180 0 1
refdes=C605
T 53400 46800 5 10 0 0 90 0 1
symversion=0.1
T 54300 46600 5 10 0 1 0 0 1
footprint=0603
}
N 53100 47100 54100 47100 4
N 54100 46600 54100 45600 4
N 54100 45600 53100 45600 4
C 52900 47100 1 0 0 3.3v-digital-1.sym
C 53500 45300 1 0 0 gnd-1.sym
T 48500 41000 8 10 1 0 0 0 1
FIXME - check pinout.
N 47600 43600 48200 43600 4
N 48200 43600 48200 41800 4
N 48200 41800 49200 41800 4
N 47600 42700 48400 42700 4
N 48400 42700 48400 42100 4
N 48400 42100 49200 42100 4
N 47600 43000 48600 43000 4
N 47600 42400 48800 42400 4
N 48800 42400 48800 43000 4
N 48800 43000 49200 43000 4
N 47600 43300 48800 43300 4
N 48800 43300 48800 43600 4
N 48800 43600 49200 43600 4
N 49200 43300 49000 43300 4
N 49000 43300 49000 43800 4
C 48800 43800 1 0 0 3.3v-digital-1.sym
N 48600 43000 48600 42700 4
N 48600 42700 49200 42700 4
N 49200 42400 49000 42400 4
N 49000 42400 49000 41600 4
C 48900 41300 1 0 0 gnd-1.sym
C 53600 48000 1 0 1 74aup1g04.sym
{
T 53300 48100 5 10 1 1 0 6 1
device=74 1G04
T 52500 48100 5 10 1 1 0 6 1
footprint=SC70-5
T 52800 48600 5 10 1 1 0 6 1
refdes=U62
}
N 50400 48400 51600 48400 4
C 54200 48200 1 90 0 capacitor.sym
{
T 53500 48400 5 10 0 0 90 0 1
device=CAPACITOR
T 54200 48100 5 10 1 1 180 0 1
refdes=C603
T 53300 48400 5 10 0 0 90 0 1
symversion=0.1
T 54200 48200 5 10 0 1 0 0 1
footprint=0603
}
C 54100 48700 1 90 0 resistor-1.sym
{
T 53700 49000 5 10 0 0 90 0 1
device=RESISTOR
T 53900 48800 5 10 1 1 90 0 1
refdes=R612
T 54100 48700 5 10 0 1 0 0 1
footprint=0603
}
C 51100 48800 1 0 0 capacitor.sym
{
T 51300 49500 5 10 0 0 0 0 1
device=CAPACITOR
T 51200 48600 5 10 1 1 0 0 1
refdes=C601
T 51300 49700 5 10 0 0 0 0 1
symversion=0.1
T 51100 48800 5 10 0 1 0 0 1
footprint=0603
}
N 53600 48400 53600 48200 4
N 53600 48200 54000 48200 4
C 53500 47900 1 0 0 gnd-1.sym
C 51000 48700 1 0 0 gnd-1.sym
C 52300 49500 1 0 0 input-2.sym
{
T 52300 49700 5 10 0 0 0 0 1
net=OVR:1
T 52900 50200 5 10 0 0 0 0 1
device=none
T 53400 49600 5 10 1 1 0 7 1
value=OVR
}
N 50400 45400 51700 45400 4
N 51700 45400 51700 43100 4
N 51700 43100 52600 43100 4
N 50400 45700 51500 45700 4
N 51500 45700 51500 42800 4
N 51500 42800 52600 42800 4
N 50400 46900 51300 46900 4
N 51300 46900 51300 42500 4
N 51300 42500 52600 42500 4
N 50400 47200 51100 47200 4
N 51100 47200 51100 42200 4
N 51100 42200 52600 42200 4
N 50400 47500 50900 47500 4
N 50900 41900 50900 47500 4
N 50900 41900 52600 41900 4
N 52600 41600 50700 41600 4
N 50700 41600 50700 47800 4
N 50700 47800 50400 47800 4
N 52600 43400 52600 43700 4
C 52000 43400 1 0 0 gnd-1.sym
N 52100 43700 52600 43700 4
N 52600 44000 52600 44300 4
N 52600 44300 52100 44300 4
C 51900 44300 1 0 0 3.3V-plus-1.sym
C 51900 40700 1 0 0 1.2V-plus-1.sym
N 52100 40700 52600 40700 4
N 52600 40400 52100 40400 4
N 52100 40400 52100 40700 4
N 53700 49600 54000 49600 4
N 53600 48700 53700 48700 4
N 53700 48700 53700 49600 4
C 52500 40200 1 0 0 conn7by2.sym
{
T 52900 44500 5 10 1 1 0 0 1
refdes=CONN62
}
T 43700 44400 8 10 1 0 0 0 1
FIXME - add switches.
