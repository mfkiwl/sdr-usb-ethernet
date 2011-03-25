v 20100214 2
C 43900 46100 1 0 0 ads41b49-analog.sym
{
T 44300 46300 5 10 1 1 0 0 1
device=ADS41B49 Analog
T 44900 47300 5 10 1 1 0 0 1
footprint=QFN48
T 45100 47800 5 10 1 1 0 0 1
refdes=U1
}
C 42300 47100 1 0 0 resistor-1.sym
{
T 42600 47500 5 10 0 0 0 0 1
device=RESISTOR
T 42500 47400 5 10 1 1 0 0 1
refdes=R103
T 42300 47100 5 10 0 1 0 0 1
footprint=0603
T 42300 47100 5 10 0 1 0 0 1
value=10R
}
C 40600 46500 1 0 0 transformer.sym
{
T 40800 48000 5 10 1 1 0 0 1
refdes=T11
T 40300 48100 5 10 0 0 0 0 1
device=TRANSFORMER
T 41000 47500 5 10 0 1 0 0 1
footprint=wbc-xfrmr-3-2.fp
}
C 42200 47200 1 90 0 resistor-1.sym
{
T 41800 47500 5 10 0 0 90 0 1
device=RESISTOR
T 41900 47400 5 10 1 1 90 0 1
refdes=R101
T 42200 47200 5 10 0 1 0 0 1
footprint=0603
T 42200 47200 5 10 0 1 0 0 1
value=200R
}
C 42200 46300 1 90 0 resistor-1.sym
{
T 41800 46600 5 10 0 0 90 0 1
device=RESISTOR
T 41900 46500 5 10 1 1 90 0 1
refdes=R102
T 42200 46300 5 10 0 1 0 0 1
footprint=0603
T 42200 46300 5 10 0 1 0 0 1
value=200R
}
C 43400 46700 1 90 0 capacitor.sym
{
T 42700 46900 5 10 0 0 90 0 1
device=CAPACITOR
T 43100 46800 5 10 1 1 180 0 1
refdes=C101
T 42500 46900 5 10 0 0 90 0 1
symversion=0.1
T 43400 46700 5 10 0 1 0 0 1
footprint=0603
T 43200 46900 5 10 0 1 0 0 1
value=100n
}
C 43100 46400 1 0 0 gnd-1.sym
N 41500 47800 41500 48100 4
N 41500 48100 43600 48100 4
N 41500 46600 41500 46300 4
N 41500 46300 43600 46300 4
N 43600 46300 43600 47100 4
N 46100 47000 46400 47000 4
N 39300 47800 40600 47800 4
N 39000 47500 39000 46600 4
N 39000 46600 40600 46600 4
C 40700 48900 1 0 0 ads41b49-power.sym
{
T 41100 50100 5 10 1 1 0 0 1
device=ADS41B49 Power
T 42700 50100 5 10 1 1 0 0 1
footprint=QFN48
T 42700 50500 5 10 1 1 0 0 1
refdes=U1
}
N 41300 49000 41300 48800 4
N 41300 48800 44200 48800 4
N 44200 48800 44200 49000 4
N 43900 49000 43900 48800 4
N 43600 49000 43600 48800 4
N 43300 49000 43300 48800 4
N 43000 49000 43000 48800 4
N 42700 49000 42700 48800 4
N 42100 49000 42100 48800 4
N 41600 49000 41600 48800 4
N 40800 51000 40600 51000 4
N 40600 51000 40600 51400 4
C 38600 50000 1 0 0 3.3V-plus-1.sym
C 38800 49900 1 0 0 fuse-2.sym
{
T 39000 50450 5 10 0 0 0 0 1
device=FUSE
T 39000 49700 5 10 1 1 0 0 1
refdes=FB11
T 39000 50650 5 10 0 0 0 0 1
symversion=0.1
T 38800 49900 5 10 0 1 0 0 1
footprint=s0805
}
N 39700 50000 40800 50000 4
C 40000 49500 1 90 0 capacitor.sym
{
T 39300 49700 5 10 0 0 90 0 1
device=CAPACITOR
T 40100 50200 5 10 1 1 180 0 1
refdes=C105
T 39100 49700 5 10 0 0 90 0 1
symversion=0.1
T 40000 49500 5 10 0 1 0 0 1
footprint=0603
T 39800 49600 5 10 0 1 0 0 1
value=4u7
}
C 40500 49500 1 90 0 capacitor.sym
{
T 39800 49700 5 10 0 0 90 0 1
device=CAPACITOR
T 40600 50200 5 10 1 1 180 0 1
refdes=C106
T 39600 49700 5 10 0 0 90 0 1
symversion=0.1
T 40500 49500 5 10 0 1 0 0 1
footprint=0603
T 40500 49500 5 10 0 1 0 0 1
value=100n
}
N 39800 49500 40300 49500 4
C 39900 49200 1 0 0 gnd-1.sym
C 42000 48500 1 0 0 gnd-1.sym
N 40600 51300 40800 51300 4
C 46200 50600 1 0 0 1.8V-plus-1.sym
C 46500 49700 1 90 0 fuse-2.sym
{
T 45950 49900 5 10 0 0 90 0 1
device=FUSE
T 46700 49900 5 10 1 1 90 0 1
refdes=FB13
T 45750 49900 5 10 0 0 90 0 1
symversion=0.1
T 46500 49700 5 10 0 1 0 0 1
footprint=s0805
}
C 45600 49200 1 90 0 capacitor.sym
{
T 44900 49400 5 10 0 0 90 0 1
device=CAPACITOR
T 45600 49900 5 10 1 1 180 0 1
refdes=C108
T 44700 49400 5 10 0 0 90 0 1
symversion=0.1
T 45600 49200 5 10 0 1 0 0 1
footprint=0603
T 45600 49200 5 10 0 1 0 0 1
value=100n
}
N 44900 49200 47900 49200 4
C 46300 48900 1 0 0 gnd-1.sym
C 45100 49200 1 90 0 capacitor.sym
{
T 44400 49400 5 10 0 0 90 0 1
device=CAPACITOR
T 45100 49100 5 10 1 1 180 0 1
refdes=C107
T 44200 49400 5 10 0 0 90 0 1
symversion=0.1
T 45100 49200 5 10 0 1 0 0 1
footprint=0603
T 45100 49200 5 10 0 1 0 0 1
value=100n
}
C 46100 49200 1 90 0 capacitor.sym
{
T 45400 49400 5 10 0 0 90 0 1
device=CAPACITOR
T 46100 49100 5 10 1 1 180 0 1
refdes=C109
T 45200 49400 5 10 0 0 90 0 1
symversion=0.1
T 46100 49200 5 10 0 1 0 0 1
footprint=0603
T 46100 49200 5 10 0 1 0 0 1
value=100n
}
C 46600 49200 1 90 0 capacitor.sym
{
T 45900 49400 5 10 0 0 90 0 1
device=CAPACITOR
T 46200 49900 5 10 1 1 180 0 1
refdes=C110
T 45700 49400 5 10 0 0 90 0 1
symversion=0.1
T 46600 49200 5 10 0 1 0 0 1
footprint=0603
T 46600 49200 5 10 0 1 0 0 1
value=100n
}
C 47100 49200 1 90 0 capacitor.sym
{
T 46400 49400 5 10 0 0 90 0 1
device=CAPACITOR
T 47100 49100 5 10 1 1 180 0 1
refdes=C111
T 46200 49400 5 10 0 0 90 0 1
symversion=0.1
T 47100 49200 5 10 0 1 0 0 1
footprint=0603
T 47100 49200 5 10 0 1 0 0 1
value=100n
}
C 47600 49200 1 90 0 capacitor.sym
{
T 46900 49400 5 10 0 0 90 0 1
device=CAPACITOR
T 47600 49900 5 10 1 1 180 0 1
refdes=C112
T 46700 49400 5 10 0 0 90 0 1
symversion=0.1
T 47600 49200 5 10 0 1 0 0 1
footprint=0603
T 47600 49200 5 10 0 1 0 0 1
value=100n
}
C 48100 49200 1 90 0 capacitor.sym
{
T 47400 49400 5 10 0 0 90 0 1
device=CAPACITOR
T 48000 49100 5 10 1 1 180 0 1
refdes=C113
T 47200 49400 5 10 0 0 90 0 1
symversion=0.1
T 48100 49200 5 10 0 1 0 0 1
footprint=0603
T 47800 49400 5 10 0 1 0 0 1
value=4u7
}
N 44700 50000 44900 50000 4
N 44900 49700 44900 51500 4
N 44900 51500 44700 51500 4
N 44700 51200 44900 51200 4
N 44700 50900 44900 50900 4
N 44700 50600 44900 50600 4
N 44700 50300 44900 50300 4
N 44600 49700 47900 49700 4
C 38400 51300 1 0 0 fuse-2.sym
{
T 38600 51850 5 10 0 0 0 0 1
device=FUSE
T 38700 51600 5 10 1 1 0 0 1
refdes=FB12
T 38600 52050 5 10 0 0 0 0 1
symversion=0.1
T 38400 51300 5 10 0 1 0 0 1
footprint=s0805
}
C 40000 50900 1 90 0 capacitor.sym
{
T 39300 51100 5 10 0 0 90 0 1
device=CAPACITOR
T 40000 51600 5 10 1 1 180 0 1
refdes=C103
T 39100 51100 5 10 0 0 90 0 1
symversion=0.1
T 40000 50900 5 10 0 1 0 0 1
footprint=0603
T 40000 50900 5 10 0 1 0 0 1
value=100n
}
N 39300 50900 40300 50900 4
C 39700 50600 1 0 0 gnd-1.sym
C 39500 50900 1 90 0 capacitor.sym
{
T 38800 51100 5 10 0 0 90 0 1
device=CAPACITOR
T 39200 51000 5 10 1 1 180 0 1
refdes=C102
T 38600 51100 5 10 0 0 90 0 1
symversion=0.1
T 39500 50900 5 10 0 1 0 0 1
footprint=0603
T 39200 51200 5 10 0 1 0 0 1
value=4u7
}
C 40500 50900 1 90 0 capacitor.sym
{
T 39800 51100 5 10 0 0 90 0 1
device=CAPACITOR
T 40500 50800 5 10 1 1 180 0 1
refdes=C104
T 39600 51100 5 10 0 0 90 0 1
symversion=0.1
T 40500 50900 5 10 0 1 0 0 1
footprint=0603
T 40500 50900 5 10 0 1 0 0 1
value=100n
}
N 39300 51400 40600 51400 4
N 44600 48600 46400 48600 4
N 46400 46700 46400 48600 4
T 38300 48400 6 20 1 0 0 0 2
Sheet 1 - Analog
Input to DAC
C 38750 47500 1 0 0 sma.sym
{
T 39150 47900 5 10 1 1 0 0 1
refdes=CONN11
T 39150 47500 5 10 1 1 0 0 1
footprint=sma
}
N 39100 47500 38700 47500 4
N 38700 47500 38700 48100 4
N 38700 48100 39100 48100 4
C 38200 51400 1 0 0 1.8V-plus-1.sym
N 46400 46700 46100 46700 4
N 44600 48600 44600 49700 4
N 40800 50600 40800 50000 4
C 40000 47600 1 270 0 diode-1.sym
{
T 40600 47200 5 10 0 0 270 0 1
device=DIODE
T 40100 47900 5 10 1 1 0 0 1
refdes=D12
T 40000 47600 5 10 0 1 0 0 1
footprint=0603
}
C 39900 46700 1 90 0 diode-1.sym
{
T 39300 47100 5 10 0 0 90 0 1
device=DIODE
T 39700 46900 5 10 1 1 180 0 1
refdes=D11
T 39900 46700 5 10 0 1 0 0 1
footprint=0603
}
N 39700 46700 39700 46600 4
N 40200 46700 40200 46600 4
N 40200 47600 40200 47800 4
N 39700 47600 39700 47800 4
C 39700 46300 1 0 0 resistor-1.sym
{
T 40000 46700 5 10 0 0 0 0 1
device=RESISTOR
T 40000 46100 5 10 1 1 0 0 1
refdes=R199
T 39700 46300 5 10 0 1 0 0 1
footprint=0603
T 40300 46400 5 10 0 1 0 0 1
value=DNP
}
N 39700 46400 39700 46600 4
C 40500 46100 1 0 0 gnd-1.sym
C 46700 48200 1 0 0 terminal-1.sym
{
T 47010 48950 5 10 0 0 0 0 1
device=terminal
T 47010 48800 5 10 0 1 0 0 1
footprint=testpoint
T 46950 48250 5 10 1 1 0 6 1
refdes=TP11
}
C 46700 47800 1 0 0 terminal-1.sym
{
T 47010 48550 5 10 0 0 0 0 1
device=terminal
T 47010 48400 5 10 0 1 0 0 1
footprint=testpoint
T 46950 47850 5 10 1 1 0 6 1
refdes=TP12
}
N 47600 48300 47600 47900 4
C 47500 47600 1 0 0 gnd-1.sym
N 43600 48100 43600 47400 4
N 43600 47400 44000 47400 4
N 43600 47100 44000 47100 4
N 41500 47200 42300 47200 4
