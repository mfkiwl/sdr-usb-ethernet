v 20100214 2
C 42500 40300 1 0 0 lm3671.sym
{
T 43200 41500 5 10 1 1 0 0 1
device=LM3671
T 43300 41800 5 10 1 1 0 0 1
refdes=U41
T 43300 40900 5 10 1 1 0 0 1
footprint=LLP6
}
C 43300 47200 1 0 0 lmz12002.sym
{
T 43400 48100 5 10 1 1 0 0 1
device=LMZ12002
T 44700 48100 5 10 1 1 0 0 1
refdes=U42
T 45400 48100 5 10 1 1 0 0 1
footprint=TO-PMOD
}
C 43200 42800 1 0 0 pth08080w.sym
{
T 43600 43900 5 10 1 1 0 0 1
device=PTH0808W
T 44900 43900 5 10 1 1 0 0 1
refdes=U43
T 44100 43600 5 10 1 1 0 0 1
footprint=PTH-TH
}
N 45600 43200 46700 43200 4
C 46500 43200 1 0 0 3.3V-plus-1.sym
C 41600 41800 1 0 0 3.3V-plus-1.sym
N 46200 47100 47700 47100 4
N 41800 41800 42500 41800 4
C 46500 42700 1 90 0 capacitor.sym
{
T 45800 42900 5 10 0 0 90 0 1
device=CAPACITOR
T 46300 43400 5 10 1 1 180 0 1
refdes=C409
T 45600 42900 5 10 0 0 90 0 1
symversion=0.1
}
C 46000 42700 1 90 0 capacitor.sym
{
T 45300 42900 5 10 0 0 90 0 1
device=CAPACITOR
T 46000 42600 5 10 1 1 180 0 1
refdes=C407
T 45100 42900 5 10 0 0 90 0 1
symversion=0.1
}
C 46400 46600 1 90 0 capacitor.sym
{
T 45700 46800 5 10 0 0 90 0 1
device=CAPACITOR
T 46100 46300 5 10 1 1 90 0 1
refdes=C404
T 45500 46800 5 10 0 0 90 0 1
symversion=0.1
T 46400 46300 5 10 1 1 90 0 1
value=100u
}
C 46900 46600 1 90 0 capacitor.sym
{
T 46200 46800 5 10 0 0 90 0 1
device=CAPACITOR
T 46900 46300 5 10 1 1 90 0 1
refdes=C406
T 46000 46800 5 10 0 0 90 0 1
symversion=0.1
T 46900 46600 5 10 0 0 0 0 1
footprint=0603
}
C 42300 42700 1 90 0 capacitor.sym
{
T 41600 42900 5 10 0 0 90 0 1
device=CAPACITOR
T 42000 43300 5 10 1 1 180 0 1
refdes=C403
T 41400 42900 5 10 0 0 90 0 1
symversion=0.1
T 41600 42700 5 10 1 1 0 0 1
value=100u
}
C 43100 42700 1 90 0 capacitor.sym
{
T 42400 42900 5 10 0 0 90 0 1
device=CAPACITOR
T 43000 43500 5 10 1 1 180 0 1
refdes=C405
T 42200 42900 5 10 0 0 90 0 1
symversion=0.1
T 42900 42900 5 10 0 1 0 0 1
footprint=0603
}
C 43300 46600 1 90 0 capacitor.sym
{
T 42600 46800 5 10 0 0 90 0 1
device=CAPACITOR
T 43100 46700 5 10 1 1 180 0 1
refdes=C401
T 42400 46800 5 10 0 0 90 0 1
symversion=0.1
T 42700 46800 5 10 0 1 0 0 1
footprint=1206
}
C 43900 46600 1 90 0 capacitor.sym
{
T 43200 46800 5 10 0 0 90 0 1
device=CAPACITOR
T 43700 46700 5 10 1 1 180 0 1
refdes=C402
T 43000 46800 5 10 0 0 90 0 1
symversion=0.1
}
C 46700 43100 1 0 0 fuse-2.sym
{
T 46900 43650 5 10 0 0 0 0 1
device=FUSE
T 46900 42900 5 10 1 1 0 0 1
refdes=FB42
T 46900 43850 5 10 0 0 0 0 1
symversion=0.1
}
C 47400 43200 1 0 0 3.3v-digital-1.sym
C 42100 47000 1 0 0 fuse-2.sym
{
T 42300 47550 5 10 0 0 0 0 1
device=FUSE
T 42300 47300 5 10 1 1 0 0 1
refdes=FB44
T 42300 47750 5 10 0 0 0 0 1
symversion=0.1
}
C 42200 43500 1 90 0 fuse-2.sym
{
T 41650 43700 5 10 0 0 90 0 1
device=FUSE
T 41900 43700 5 10 1 1 90 0 1
refdes=FB45
T 41450 43700 5 10 0 0 90 0 1
symversion=0.1
}
N 42100 42700 46300 42700 4
N 44400 42700 44400 42800 4
N 43100 46200 46700 46200 4
N 44800 46200 44800 47200 4
N 43000 47100 43700 47100 4
N 43700 47100 43700 47200 4
N 42100 43500 42100 43200 4
N 43200 43200 42100 43200 4
C 44300 42400 1 0 0 gnd-1.sym
C 44700 45900 1 0 0 gnd-1.sym
C 44400 41700 1 0 0 inductor-1.sym
{
T 44600 42200 5 10 0 0 0 0 1
device=INDUCTOR
T 44600 42000 5 10 1 1 0 0 1
refdes=L41
T 44600 42400 5 10 0 0 0 0 1
symversion=0.1
}
C 42000 41300 1 90 0 capacitor.sym
{
T 41300 41500 5 10 0 0 90 0 1
device=CAPACITOR
T 41700 41900 5 10 1 1 180 0 1
refdes=C408
T 41100 41500 5 10 0 0 90 0 1
symversion=0.1
T 42000 41300 5 10 0 1 0 0 1
footprint=0603
}
C 45900 41300 1 90 0 capacitor.sym
{
T 45200 41500 5 10 0 0 90 0 1
device=CAPACITOR
T 45900 41200 5 10 1 1 180 0 1
refdes=C410
T 45000 41500 5 10 0 0 90 0 1
symversion=0.1
T 45900 41300 5 10 0 1 0 0 1
footprint=0603
}
C 46400 41300 1 90 0 capacitor.sym
{
T 45700 41500 5 10 0 0 90 0 1
device=CAPACITOR
T 46700 41400 5 10 1 1 180 0 1
refdes=C411
T 45500 41500 5 10 0 0 90 0 1
symversion=0.1
T 46400 41300 5 10 0 1 0 0 1
footprint=0603
}
N 41800 41300 41800 41200 4
N 41800 41200 42500 41200 4
N 45300 41800 46200 41800 4
N 45300 41800 45300 40600 4
N 45300 40600 44400 40600 4
N 45700 41300 46200 41300 4
C 41700 40900 1 0 0 gnd-1.sym
C 46100 41000 1 0 0 gnd-1.sym
C 46200 41700 1 0 0 fuse-2.sym
{
T 46400 42250 5 10 0 0 0 0 1
device=FUSE
T 46200 42000 5 10 1 1 0 0 1
refdes=FB43
T 46400 42450 5 10 0 0 0 0 1
symversion=0.1
}
N 46200 47100 46200 47200 4
N 42100 44400 42100 47100 4
C 40700 46100 1 180 0 header3-1.sym
{
T 39700 45450 5 10 0 0 180 0 1
device=HEADER3
T 40300 44800 5 10 1 1 180 0 1
refdes=J41
}
N 40700 45500 42100 45500 4
N 43100 46200 43100 46600 4
N 43700 46600 43700 46200 4
N 46200 46600 46200 46200 4
N 46700 46200 46700 46600 4
C 45600 44200 1 0 0 resistor-1.sym
{
T 45900 44600 5 10 0 0 0 0 1
device=RESISTOR
T 45800 44500 5 10 1 1 0 0 1
refdes=R405
}
C 45000 45400 1 0 0 resistor-1.sym
{
T 45300 45800 5 10 0 0 0 0 1
device=RESISTOR
T 45200 45700 5 10 1 1 0 0 1
refdes=R404
T 45000 45400 5 10 0 1 0 0 1
footprint=0603
}
C 46800 45400 1 0 0 resistor-1.sym
{
T 47100 45800 5 10 0 0 0 0 1
device=RESISTOR
T 47000 45200 5 10 1 1 0 0 1
refdes=R406
T 46800 45400 5 10 0 1 0 0 1
footprint=0603
}
C 46400 44000 1 0 0 gnd-1.sym
C 45800 46600 1 90 0 capacitor.sym
{
T 45100 46800 5 10 0 0 90 0 1
device=CAPACITOR
T 45500 46700 5 10 1 1 180 0 1
refdes=C412
T 44900 46800 5 10 0 0 90 0 1
symversion=0.1
T 45600 46700 5 10 0 1 0 0 1
footprint=0603
}
N 45600 46600 45600 46200 4
C 44100 46200 1 90 0 resistor-1.sym
{
T 43700 46500 5 10 0 0 90 0 1
device=RESISTOR
T 44300 46400 5 10 1 1 90 0 1
refdes=R402
T 44100 46200 5 10 0 1 0 0 1
footprint=0603
}
N 44000 47100 44000 47200 4
N 44800 47200 45100 47200 4
C 47200 45800 1 0 0 capacitor.sym
{
T 47400 46500 5 10 0 0 0 0 1
device=CAPACITOR
T 46900 46100 5 10 1 1 0 0 1
refdes=C413
T 47400 46700 5 10 0 0 0 0 1
symversion=0.1
T 47200 45800 5 10 0 1 0 0 1
footprint=0603
}
N 47700 47100 47700 45500 4
C 44900 45200 1 0 0 gnd-1.sym
N 45900 47200 45900 45500 4
N 46800 45500 45900 45500 4
N 47200 46000 46800 46000 4
N 46800 46000 46800 45500 4
C 44100 45400 1 0 0 resistor-1.sym
{
T 44400 45800 5 10 0 0 0 0 1
device=RESISTOR
T 44300 45700 5 10 1 1 0 0 1
refdes=R498
T 44100 45400 5 10 0 1 0 0 1
footprint=0603
}
C 43200 45400 1 0 0 resistor-1.sym
{
T 43500 45800 5 10 0 0 0 0 1
device=RESISTOR
T 43400 45700 5 10 1 1 0 0 1
refdes=R499
T 43200 45400 5 10 0 1 0 0 1
footprint=0603
}
N 42100 45500 43200 45500 4
N 44100 45500 44100 46000 4
N 44100 46000 44300 46000 4
N 44300 46000 44300 47200 4
C 40400 44300 1 180 1 pwrjack-1.sym
{
T 40500 43800 5 10 0 0 180 6 1
device=PWRJACK
T 40300 43800 5 10 1 1 180 6 1
refdes=CONN41
}
C 41500 44200 1 90 0 diode-1.sym
{
T 40900 44600 5 10 0 0 90 0 1
device=DIODE
T 41700 44500 5 10 1 1 90 0 1
refdes=D41
T 41200 44300 5 10 0 1 0 0 1
footprint=D0214
}
C 42900 44600 1 90 0 zener-1.sym
{
T 42300 45000 5 10 0 0 90 0 1
device=ZENER_DIODE
T 42400 44900 5 10 1 1 90 0 1
refdes=D42
T 42500 44700 5 10 0 1 0 0 1
footprint=D0214
}
C 42600 44300 1 0 0 gnd-1.sym
C 40500 45900 1 0 0 5V-plus-1.sym
C 41200 43700 1 0 0 gnd-1.sym
N 41300 45100 40700 45100 4
N 42500 40600 42200 40600 4
N 42200 40600 42200 41800 4
C 45500 41800 1 0 0 1.8V-plus-1.sym
C 46900 41800 1 0 0 1.8v-digital-1.sym
T 40300 46800 6 20 1 0 0 0 2
Sheet 4
Power
C 47300 47100 1 90 0 fuse-2.sym
{
T 46750 47300 5 10 0 0 90 0 1
device=FUSE
T 47500 47300 5 10 1 1 90 0 1
refdes=FB41
T 46550 47300 5 10 0 0 90 0 1
symversion=0.1
}
C 47000 48000 1 0 0 1.2V-plus-1.sym
N 45600 47100 45600 47200 4
T 43300 44800 8 10 1 0 0 0 1
FIXME - headers in main power feeds?
C 44300 40900 1 0 0 gnd-1.sym
