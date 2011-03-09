v 20100214 2
C 41200 46000 1 0 0 ft2232h-control.sym
{
T 41600 46100 5 10 1 1 0 0 1
device=FT2232 Control
T 43000 46100 5 10 1 1 0 0 1
footprint=QFP64
T 42500 47700 5 10 1 1 0 0 1
refdes=U3
}
C 42000 42100 1 0 0 ft2232h-power.sym
{
T 42300 43300 5 10 1 1 0 0 1
device=FT2232 Power
T 43700 43300 5 10 1 1 0 0 1
footprint=QFP64
T 43600 43900 5 10 1 1 0 0 1
refdes=U3
}
C 46400 46000 1 0 0 93c66.sym
{
T 46700 46200 5 10 1 1 0 0 1
device=93c66
T 47400 46200 5 10 1 1 0 0 1
footprint=MSOP8
T 47200 47200 5 10 1 1 0 0 1
refdes=U71
}
T 45400 45200 6 20 1 0 0 0 2
Sheet 7 - USB Analog
and misc.
C 39300 47500 1 0 0 conn5.sym
{
T 41100 48400 5 10 0 0 0 0 1
device=CONNECTOR_4
T 39300 49200 5 10 1 1 0 0 1
refdes=CONN71
}
N 40100 48600 41300 48600 4
N 40100 48300 41300 48300 4
C 40000 47400 1 0 0 gnd-1.sym
C 40700 47700 1 90 0 capacitor.sym
{
T 40000 47900 5 10 0 0 90 0 1
device=CAPACITOR
T 40500 48200 5 10 1 1 180 0 1
refdes=C701
T 39800 47900 5 10 0 0 90 0 1
symversion=0.1
T 40700 47700 5 10 0 1 0 0 1
footprint=0603
}
N 40100 47700 40500 47700 4
N 40100 48900 40500 48900 4
C 46400 47800 1 90 0 resistor-1.sym
{
T 46000 48100 5 10 0 0 90 0 1
device=RESISTOR
T 46600 48000 5 10 1 1 90 0 1
refdes=R701
T 46400 47800 5 10 0 1 0 0 1
footprint=0603
}
C 45800 47800 1 90 0 resistor-1.sym
{
T 45400 48100 5 10 0 0 90 0 1
device=RESISTOR
T 45600 47800 5 10 1 1 90 0 1
refdes=R702
T 45800 47800 5 10 0 1 0 0 1
footprint=0603
}
C 46100 47800 1 90 0 resistor-1.sym
{
T 45700 48100 5 10 0 0 90 0 1
device=RESISTOR
T 46200 47500 5 10 1 1 90 0 1
refdes=R703
T 46100 47800 5 10 0 1 0 0 1
footprint=0603
}
C 45400 46500 1 0 0 resistor-1.sym
{
T 45700 46900 5 10 0 0 0 0 1
device=RESISTOR
T 45600 46200 5 10 1 1 0 0 1
refdes=R704
T 45400 46500 5 10 0 1 0 0 1
footprint=0603
}
N 43900 46900 46400 46900 4
N 43900 47200 46400 47200 4
N 43900 47500 46400 47500 4
N 45400 46600 45400 46900 4
N 46300 46600 46400 46600 4
N 45700 47800 45700 47500 4
N 46000 47800 46000 47200 4
C 45800 48700 1 0 0 3.3v-digital-1.sym
N 48300 47500 48400 47500 4
N 48400 47500 48400 46900 4
N 48400 46900 48300 46900 4
C 48900 46600 1 90 0 capacitor.sym
{
T 48200 46800 5 10 0 0 90 0 1
device=CAPACITOR
T 48900 47300 5 10 1 1 180 0 1
refdes=C704
T 48000 46800 5 10 0 0 90 0 1
symversion=0.1
T 48900 46600 5 10 0 1 0 0 1
footprint=0603
}
N 48700 47100 48400 47100 4
N 48300 46600 48700 46600 4
C 48600 46300 1 0 0 gnd-1.sym
C 39500 44000 1 0 0 fuse-2.sym
{
T 39700 44550 5 10 0 0 0 0 1
device=FUSE
T 39900 44300 5 10 1 1 0 0 1
refdes=FB72
T 39700 44750 5 10 0 0 0 0 1
symversion=0.1
}
C 39500 43500 1 0 0 fuse-2.sym
{
T 39700 44050 5 10 0 0 0 0 1
device=FUSE
T 39500 43300 5 10 1 1 0 0 1
refdes=FB73
T 39700 44250 5 10 0 0 0 0 1
symversion=0.1
}
C 41600 43000 1 90 0 capacitor.sym
{
T 40900 43200 5 10 0 0 90 0 1
device=CAPACITOR
T 41700 43800 5 10 1 1 180 0 1
refdes=C702
T 40700 43200 5 10 0 0 90 0 1
symversion=0.1
}
C 42100 43000 1 90 0 capacitor.sym
{
T 41400 43200 5 10 0 0 90 0 1
device=CAPACITOR
T 42100 42900 5 10 1 1 180 0 1
refdes=C703
T 41200 43200 5 10 0 0 90 0 1
symversion=0.1
}
N 40400 43000 41900 43000 4
N 40400 43600 42000 43600 4
N 40400 44100 42000 44100 4
N 39500 43600 39500 44100 4
N 41400 43500 41400 43600 4
N 41900 43500 41900 44100 4
C 41300 42700 1 0 0 gnd-1.sym
C 39300 44100 1 0 0 3.3v-digital-1.sym
N 40500 48200 40500 49100 4
N 42400 42200 42400 42000 4
N 42400 42000 45100 42000 4
N 45100 42000 45100 42200 4
N 42700 42200 42700 42000 4
N 43000 42200 43000 42000 4
N 43300 42200 43300 42000 4
N 43600 42200 43600 42000 4
N 43900 42200 43900 42000 4
N 44200 42200 44200 42000 4
N 44500 42200 44500 42000 4
N 44800 42200 44800 42000 4
C 43600 41700 1 0 0 gnd-1.sym
N 43000 45200 43000 45400 4
N 43000 45400 43600 45400 4
N 43600 45400 43600 45200 4
N 43300 45200 43300 45400 4
N 44200 45200 44200 45400 4
N 44200 45400 45100 45400 4
N 45100 45400 45100 45200 4
N 44800 45200 44800 45400 4
N 44500 45200 44500 45400 4
C 43100 45400 1 0 0 1.8v-digital-1.sym
C 44400 45400 1 0 0 3.3v-digital-1.sym
C 45900 43900 1 90 0 capacitor.sym
{
T 45200 44100 5 10 0 0 90 0 1
device=CAPACITOR
T 45900 44600 5 10 1 1 180 0 1
refdes=C707
T 45000 44100 5 10 0 0 90 0 1
symversion=0.1
}
C 46400 43900 1 90 0 capacitor.sym
{
T 45700 44100 5 10 0 0 90 0 1
device=CAPACITOR
T 46400 43800 5 10 1 1 180 0 1
refdes=C709
T 45500 44100 5 10 0 0 90 0 1
symversion=0.1
}
C 46900 43900 1 90 0 capacitor.sym
{
T 46200 44100 5 10 0 0 90 0 1
device=CAPACITOR
T 46900 44600 5 10 1 1 180 0 1
refdes=C708
T 46000 44100 5 10 0 0 90 0 1
symversion=0.1
}
C 47400 43900 1 90 0 capacitor.sym
{
T 46700 44100 5 10 0 0 90 0 1
device=CAPACITOR
T 47400 44600 5 10 1 1 180 0 1
refdes=C710
T 46500 44100 5 10 0 0 90 0 1
symversion=0.1
}
C 47900 43900 1 90 0 capacitor.sym
{
T 47200 44100 5 10 0 0 90 0 1
device=CAPACITOR
T 47900 43800 5 10 1 1 180 0 1
refdes=C712
T 47000 44100 5 10 0 0 90 0 1
symversion=0.1
}
C 48400 43900 1 90 0 capacitor.sym
{
T 47700 44100 5 10 0 0 90 0 1
device=CAPACITOR
T 48400 44600 5 10 1 1 180 0 1
refdes=C711
T 47500 44100 5 10 0 0 90 0 1
symversion=0.1
}
C 48900 43900 1 90 0 capacitor.sym
{
T 48200 44100 5 10 0 0 90 0 1
device=CAPACITOR
T 48900 43800 5 10 1 1 180 0 1
refdes=C713
T 48000 44100 5 10 0 0 90 0 1
symversion=0.1
}
N 45700 44400 46700 44400 4
N 45700 43900 48700 43900 4
N 47200 44400 48700 44400 4
C 46000 44400 1 0 0 1.8v-digital-1.sym
C 47500 44400 1 0 0 3.3v-digital-1.sym
C 47100 43600 1 0 0 gnd-1.sym
C 40000 46500 1 0 0 3.3v-digital-1.sym
N 40200 46500 41300 46500 4
C 41000 46500 1 90 0 resistor-1.sym
{
T 40600 46800 5 10 0 0 90 0 1
device=RESISTOR
T 40700 46700 5 10 1 1 90 0 1
refdes=R705
T 41000 46500 5 10 0 1 0 0 1
footprint=0603
}
N 40900 47400 40900 48000 4
N 40900 48000 41300 48000 4
C 44600 47800 1 0 0 crystal-1.sym
{
T 44800 48300 5 10 0 0 0 0 1
device=CRYSTAL
T 44800 47600 5 10 1 1 0 0 1
refdes=Q71
T 44800 48500 5 10 0 0 0 0 1
symversion=0.1
}
N 43900 47900 44600 47900 4
N 43900 48200 45300 48200 4
N 45300 47900 45300 49000 4
C 44800 49000 1 90 0 capacitor.sym
{
T 44100 49200 5 10 0 0 90 0 1
device=CAPACITOR
T 44500 48700 5 10 1 1 90 0 1
refdes=C705
T 43900 49200 5 10 0 0 90 0 1
symversion=0.1
T 44800 49000 5 10 0 1 0 0 1
footprint=0603
}
C 45500 49000 1 90 0 capacitor.sym
{
T 44800 49200 5 10 0 0 90 0 1
device=CAPACITOR
T 45200 48700 5 10 1 1 90 0 1
refdes=C706
T 44600 49200 5 10 0 0 90 0 1
symversion=0.1
T 45500 49000 5 10 0 1 0 0 1
footprint=0603
}
C 44100 48600 1 90 0 resistor-1.sym
{
T 43700 48900 5 10 0 0 90 0 1
device=RESISTOR
T 43800 49000 5 10 1 1 90 0 1
refdes=R706
T 44100 48600 5 10 0 1 0 0 1
footprint=0603
}
N 43900 48600 44000 48600 4
N 44600 47900 44600 49000 4
N 44000 49500 46000 49500 4
C 45900 49200 1 0 0 gnd-1.sym
N 46300 47800 46300 46600 4
N 45700 48700 46300 48700 4
C 48200 47500 1 0 0 3.3v-digital-1.sym
C 40600 43000 1 90 0 capacitor.sym
{
T 39900 43200 5 10 0 0 90 0 1
device=CAPACITOR
T 40800 43800 5 10 1 1 180 0 1
refdes=C714
T 39700 43200 5 10 0 0 90 0 1
symversion=0.1
}
C 41100 43000 1 90 0 capacitor.sym
{
T 40400 43200 5 10 0 0 90 0 1
device=CAPACITOR
T 41000 42900 5 10 1 1 180 0 1
refdes=C715
T 40200 43200 5 10 0 0 90 0 1
symversion=0.1
}
N 40400 43600 40400 43500 4
N 40900 43500 40900 44100 4
C 41200 49100 1 0 0 5V-plus-1.sym
C 40500 49000 1 0 0 fuse-2.sym
{
T 40700 49550 5 10 0 0 0 0 1
device=FUSE
T 40700 49300 5 10 1 1 0 0 1
refdes=FB71
T 40700 49750 5 10 0 0 0 0 1
symversion=0.1
}
