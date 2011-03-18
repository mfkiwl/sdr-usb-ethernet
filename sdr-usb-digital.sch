v 20100214 2
C 46900 45100 1 0 0 spartan6-qfp144-bank1.sym
{
T 49200 48300 5 10 1 1 0 0 1
refdes=U2
T 47500 45300 5 10 1 1 0 0 1
device=Spartan6 QFP144 Bank 1
T 49700 45300 5 10 1 1 0 0 1
footprint=QFP144
}
C 42500 46000 1 0 0 ft2232h-a.sym
{
T 42900 46300 5 10 1 1 0 0 1
device=FT2232 Bus A
T 44300 46300 5 10 1 1 0 0 1
footprint=QFP64
T 43800 47800 5 10 1 1 0 0 1
refdes=U3
}
N 51900 47700 50800 47700 4
N 50800 48000 51700 48000 4
N 51500 48300 50800 48300 4
N 45200 46700 47000 46700 4
N 45200 47000 47000 47000 4
N 45200 47300 47000 47300 4
N 45200 47600 47000 47600 4
N 45200 47900 47000 47900 4
N 47000 48200 46200 48200 4
N 45200 48500 47000 48500 4
N 45200 48800 47000 48800 4
N 52300 46800 50800 46800 4
N 52500 46500 50800 46500 4
N 51100 49200 50800 49200 4
N 51300 48900 50800 48900 4
C 42600 50000 1 0 0 spartan6-qfp144-misc.sym
{
T 44500 50800 5 10 1 1 0 0 1
refdes=U2
T 43400 50200 5 10 1 1 0 0 1
device=Spartan6 Misc
T 44700 50200 5 10 1 1 0 0 1
footprint=QFP144
}
C 41600 51800 1 0 0 resistor-1.sym
{
T 41900 52200 5 10 0 0 0 0 1
device=RESISTOR
T 42000 51600 5 10 1 1 0 0 1
refdes=R53
T 41600 51800 5 10 0 1 0 0 1
footprint=0603
}
C 40500 51300 1 0 0 resistor-1.sym
{
T 40800 51700 5 10 0 0 0 0 1
device=RESISTOR
T 40600 51600 5 10 1 1 0 0 1
refdes=R52
T 40500 51300 5 10 0 1 0 0 1
footprint=0603
}
N 41400 51400 42700 51400 4
C 40300 51900 1 0 0 3.3v-digital-1.sym
C 41600 52100 1 180 0 led-3.sym
{
T 40650 51450 5 10 0 0 180 0 1
device=LED
T 41350 52250 5 10 1 1 180 0 1
refdes=D51
T 41200 51900 5 10 0 1 90 0 1
footprint=s0805
}
C 42600 50200 1 0 0 gnd-1.sym
C 40500 50900 1 0 0 switch-pushbutton-no-1.sym
{
T 40600 51000 5 10 1 1 0 0 1
refdes=S51
T 40900 51500 5 10 0 0 0 0 1
device=SWITCH_PUSHBUTTON_NO
T 40500 50900 5 10 0 0 0 0 1
footprint=mini-push-button
}
N 41500 50500 41500 51400 4
C 40400 50200 1 0 0 gnd-1.sym
C 48800 49800 1 0 0 ft2232h-b.sym
{
T 49200 50100 5 10 1 1 0 0 1
device=FT2232 Bus B
T 50600 50100 5 10 1 1 0 0 1
footprint=QFP64
T 50100 51600 5 10 1 1 0 0 1
refdes=U3
}
N 48900 52000 48100 52000 4
N 48100 52000 48100 51700 4
N 48100 51700 47900 51700 4
N 48900 52300 48500 52300 4
N 48500 52300 48500 51100 4
N 48500 51100 47900 51100 4
N 48900 52600 48300 52600 4
N 48300 52600 48300 51400 4
N 48300 51400 47900 51400 4
N 48900 51700 48700 51700 4
N 48700 51700 48700 50800 4
N 48700 50800 47900 50800 4
T 42600 52000 8 10 1 0 0 0 1
FIXME - jtag pullups, termination, pinout
C 45300 48100 1 0 0 resistor-1.sym
{
T 45600 48500 5 10 0 0 0 0 1
device=RESISTOR
T 45300 48100 5 10 0 1 0 0 1
footprint=0603
T 46000 48300 5 10 1 1 0 0 1
refdes=R51
}
N 52100 47400 50800 47400 4
T 43100 45400 6 20 1 0 0 0 1
Sheet 5 - USB digital
C 40700 50300 1 0 0 capacitor.sym
{
T 40900 51000 5 10 0 0 0 0 1
device=CAPACITOR
T 41000 50300 5 10 1 1 0 0 1
refdes=C51
T 40900 51200 5 10 0 0 0 0 1
symversion=0.1
T 40900 50500 5 10 0 1 0 0 1
footprint=0603
}
N 40500 50900 40500 50500 4
N 40700 50500 40500 50500 4
N 41200 50500 41500 50500 4
C 46900 50600 1 0 0 conn6by2.sym
{
T 47100 52550 5 10 1 1 0 0 1
refdes=CONN51
T 47600 51000 5 10 0 1 0 0 1
footprint=header-female-50mil-6-by-2
}
N 46900 51400 46700 51400 4
N 46700 51400 46700 50500 4
N 46700 50500 46100 50500 4
N 46100 50800 46900 50800 4
N 46100 51400 46500 51400 4
N 46500 51400 46500 51100 4
N 46500 51100 46900 51100 4
N 46100 51100 46300 51100 4
N 46300 51100 46300 51700 4
N 46300 51700 46900 51700 4
C 46600 51700 1 0 0 gnd-1.sym
N 46700 52000 47900 52000 4
C 46500 52300 1 0 0 3.3v-digital-1.sym
N 46700 52300 47900 52300 4
C 51700 52500 1 0 0 resistor-1.sym
{
T 52000 52900 5 10 0 0 0 0 1
device=RESISTOR
T 52100 52300 5 10 1 1 0 0 1
refdes=R54
T 51700 52500 5 10 0 1 0 0 1
footprint=0603
}
C 51700 52000 1 0 0 resistor-1.sym
{
T 52000 52400 5 10 0 0 0 0 1
device=RESISTOR
T 51900 51800 5 10 1 1 0 0 1
refdes=R55
T 51700 52000 5 10 0 1 0 0 1
footprint=0603
}
N 51500 52600 51700 52600 4
N 51700 52100 51700 52600 4
C 52400 52600 1 0 0 5V-plus-1.sym
C 52500 51800 1 0 0 gnd-1.sym
N 45300 48200 45200 48200 4
N 51100 49200 51100 44900 4
N 51100 44900 42600 44900 4
N 42600 44900 42600 46700 4
N 51300 48900 51300 44700 4
N 51300 44700 42400 44700 4
N 42400 44700 42400 47000 4
N 42400 47000 42600 47000 4
N 51500 48300 51500 44500 4
N 51500 44500 42200 44500 4
N 42200 44500 42200 47300 4
N 42200 47300 42600 47300 4
N 51700 48000 51700 44300 4
N 51700 44300 42000 44300 4
N 42000 44300 42000 47600 4
N 42000 47600 42600 47600 4
N 51900 47700 51900 44100 4
N 51900 44100 41800 44100 4
N 41800 44100 41800 47900 4
N 41800 47900 42600 47900 4
N 52100 47400 52100 43900 4
N 52100 43900 41600 43900 4
N 41600 43900 41600 48200 4
N 41600 48200 42600 48200 4
N 52300 46800 52300 43700 4
N 52300 43700 41400 43700 4
N 41400 43700 41400 48500 4
N 41400 48500 42600 48500 4
N 52500 46500 52500 43500 4
N 52500 43500 41200 43500 4
N 41200 43500 41200 48800 4
N 41200 48800 42600 48800 4
N 47000 49100 46400 49100 4
N 46400 49100 46400 49400 4
C 46400 49500 1 180 0 output-2.sym
{
T 45500 49300 5 10 0 0 180 0 1
net=DEMP:1
T 46200 48800 5 10 0 0 180 0 1
device=none
T 46200 49400 5 10 1 1 180 1 1
value=DEMP
}
N 42500 51900 42500 51100 4
N 42500 51100 42700 51100 4
N 40500 51900 40500 51400 4
N 40700 51900 40500 51900 4
