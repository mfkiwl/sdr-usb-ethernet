v 20100214 2
C 39300 44800 1 0 0 spartan6-qfp144-bank2.sym
{
T 41100 48500 5 10 1 1 0 0 1
refdes=U2
T 40000 45000 5 10 1 1 0 0 1
device=Spartan6 Bank 2
T 41900 45000 5 10 1 1 0 0 1
footprint=QFP144
}
C 47100 46500 1 0 0 at45db081.sym
{
T 47900 47700 5 10 1 1 0 0 1
device=AT45D081
T 48200 47400 5 10 1 1 0 0 1
refdes=U31
T 48700 47100 5 10 1 1 0 0 1
footprint=SO8
}
N 45600 47700 47100 47700 4
N 39300 49800 49700 49800 4
N 49700 48000 49700 49800 4
N 39300 49800 39300 49200 4
N 39300 49200 39500 49200 4
N 43300 49200 46100 49200 4
N 46100 47400 47100 47400 4
N 50400 47700 50400 49400 4
N 50400 49400 46500 49400 4
N 46500 49400 46500 48000 4
N 46500 48000 43300 48000 4
N 43300 46800 44700 46800 4
N 44700 46800 44700 46400 4
C 44700 46300 1 0 0 resistor-1.sym
{
T 45000 46700 5 10 0 0 0 0 1
device=RESISTOR
T 44900 46100 5 10 1 1 0 0 1
refdes=R302
T 44700 46300 5 10 0 1 0 0 1
footprint=0603
}
C 44700 46700 1 0 0 resistor-1.sym
{
T 45000 47100 5 10 0 0 0 0 1
device=RESISTOR
T 44900 47000 5 10 1 1 0 0 1
refdes=R398
T 44700 46700 5 10 0 1 0 0 1
footprint=0603
}
C 44700 48800 1 0 0 resistor-1.sym
{
T 45000 49200 5 10 0 0 0 0 1
device=RESISTOR
T 44900 49000 5 10 1 1 0 0 1
refdes=R301
T 44700 48800 5 10 0 1 0 0 1
footprint=0603
}
C 44700 48400 1 0 0 resistor-1.sym
{
T 45000 48800 5 10 0 0 0 0 1
device=RESISTOR
T 44700 48200 5 10 1 1 0 0 1
refdes=R399
T 44700 48400 5 10 0 1 0 0 1
footprint=0603
}
N 43300 48900 44700 48900 4
N 44700 48500 44700 48900 4
C 45500 48200 1 0 0 gnd-1.sym
C 45500 46100 1 0 0 gnd-1.sym
N 48300 48600 48300 48900 4
N 46900 48900 49500 48900 4
N 46900 48900 46900 47000 4
N 46900 47100 47100 47100 4
N 47100 48000 46900 48000 4
C 48200 46200 1 0 0 gnd-1.sym
C 47100 46500 1 90 0 capacitor.sym
{
T 46400 46700 5 10 0 0 90 0 1
device=CAPACITOR
T 46800 46600 5 10 1 1 180 0 1
refdes=C301
T 46200 46700 5 10 0 0 90 0 1
symversion=0.1
T 47800 46700 5 10 0 1 0 0 1
footprint=0603
}
N 46900 46500 48300 46500 4
C 38600 48800 1 0 0 resistor-1.sym
{
T 38900 49200 5 10 0 0 0 0 1
device=RESISTOR
T 38900 49000 5 10 1 1 0 0 1
refdes=R303
T 38600 48800 5 10 0 1 0 0 1
footprint=0603
}
C 46000 49200 1 270 0 resistor-1.sym
{
T 46400 48900 5 10 0 0 270 0 1
device=RESISTOR
T 45800 48900 5 10 1 1 270 0 1
refdes=R305
T 46000 49200 5 10 0 1 270 0 1
footprint=0603
}
C 44700 47600 1 0 0 resistor-1.sym
{
T 45000 48000 5 10 0 0 0 0 1
device=RESISTOR
T 45100 47400 5 10 1 1 0 0 1
refdes=R304
T 44700 47600 5 10 0 1 0 0 1
footprint=0603
}
C 49500 47600 1 0 0 resistor-1.sym
{
T 49800 48000 5 10 0 0 0 0 1
device=RESISTOR
T 49700 47400 5 10 1 1 0 0 1
refdes=R307
T 49500 47600 5 10 0 1 0 0 1
footprint=0603
}
C 49600 48000 1 90 0 resistor-1.sym
{
T 49200 48300 5 10 0 0 90 0 1
device=RESISTOR
T 49400 48800 5 10 1 1 180 0 1
refdes=R306
T 49600 48000 5 10 0 1 0 0 1
footprint=0603
}
C 38400 48900 1 0 0 3.3v-digital-1.sym
C 45400 46800 1 0 0 3.3v-digital-1.sym
C 45400 49300 1 0 0 3.3v-digital-1.sym
N 45600 49300 45600 48900 4
C 48100 48900 1 0 0 3.3v-digital-1.sym
N 44500 43300 44500 48600 4
T 40000 41400 6 20 1 0 0 0 2
Sheet 3 - FPGA control
and audio.
C 38400 49200 1 180 0 lm3s828-gpio.sym
{
T 38000 49000 5 10 1 1 180 0 1
device=LM3S828 GPIO
T 36400 49000 5 10 1 1 180 0 1
footprint=QFN48
T 36900 46200 5 10 1 1 180 0 1
refdes=U5
}
C 38600 47000 1 0 0 resistor-1.sym
{
T 38900 47400 5 10 0 0 0 0 1
device=RESISTOR
T 38700 46800 5 10 1 1 0 0 1
refdes=R310
T 38600 47000 5 10 0 1 0 0 1
footprint=0603
}
N 38300 47400 39500 47400 4
N 38300 47700 39500 47700 4
N 38300 48000 39500 48000 4
N 38300 46500 38500 46500 4
N 38500 42400 38500 46500 4
N 38300 46800 38700 46800 4
N 38700 42700 38700 46800 4
C 45600 41400 1 0 0 pcm1771.sym
{
T 46700 44300 5 10 1 1 0 0 1
device=PCM1771
T 47000 43700 5 10 1 1 0 0 1
refdes=U32
T 46700 42900 5 10 1 1 0 0 1
footprint=TSSOP16
}
N 44500 43300 45700 43300 4
N 44300 43000 45700 43000 4
N 45600 42700 45700 42700 4
N 44100 42100 45700 42100 4
C 48200 41100 1 0 0 gnd-1.sym
C 44700 42600 1 0 0 resistor-1.sym
{
T 45000 43000 5 10 0 0 0 0 1
device=RESISTOR
T 44900 42400 5 10 1 1 0 0 1
refdes=R308
T 44700 42600 5 10 0 1 0 0 1
footprint=0603
}
C 44700 43800 1 0 0 resistor-1.sym
{
T 45000 44200 5 10 0 0 0 0 1
device=RESISTOR
T 45000 43600 5 10 1 1 0 0 1
refdes=R309
T 44700 43800 5 10 0 1 90 0 1
footprint=0603
}
N 46800 41400 49600 41400 4
C 50400 44600 1 90 0 capacitor.sym
{
T 49700 44800 5 10 0 0 90 0 1
device=CAPACITOR
T 50100 45100 5 10 1 1 180 0 1
refdes=C305
T 49500 44800 5 10 0 0 90 0 1
symversion=0.1
T 50100 44800 5 10 0 1 0 0 1
footprint=0603
}
C 49700 45300 1 90 0 capacitor.sym
{
T 49000 45500 5 10 0 0 90 0 1
device=CAPACITOR
T 49700 46000 5 10 1 1 180 0 1
refdes=C304
T 48800 45500 5 10 0 0 90 0 1
symversion=0.1
T 49700 45300 5 10 0 1 0 0 1
footprint=s0805
}
C 51000 44600 1 90 0 capacitor.sym
{
T 50300 44800 5 10 0 0 90 0 1
device=CAPACITOR
T 51300 44700 5 10 1 1 180 0 1
refdes=C308
T 50100 44800 5 10 0 0 90 0 1
symversion=0.1
T 51000 44600 5 10 0 1 0 0 1
footprint=s0805
}
C 49800 42500 1 90 0 capacitor.sym
{
T 49100 42700 5 10 0 0 90 0 1
device=CAPACITOR
T 50100 42600 5 10 1 1 180 0 1
refdes=C310
T 48900 42700 5 10 0 0 90 0 1
symversion=0.1
T 49800 42500 5 10 0 1 0 0 1
footprint=0603
}
C 49200 42800 1 90 0 capacitor.sym
{
T 48500 43000 5 10 0 0 90 0 1
device=CAPACITOR
T 48900 42900 5 10 1 1 180 0 1
refdes=C306
T 48300 43000 5 10 0 0 90 0 1
symversion=0.1
T 49200 42800 5 10 0 1 0 0 1
footprint=0603
}
C 48900 41400 1 90 0 capacitor.sym
{
T 48200 41600 5 10 0 0 90 0 1
device=CAPACITOR
T 48900 41300 5 10 1 1 180 0 1
refdes=C311
T 48000 41600 5 10 0 0 90 0 1
symversion=0.1
T 48300 41400 5 10 1 1 0 0 1
value=10u
T 48700 41600 5 10 0 1 0 0 1
footprint=s0805
}
C 49100 41900 1 90 0 resistor-1.sym
{
T 48700 42200 5 10 0 0 90 0 1
device=RESISTOR
T 48800 42100 5 10 1 1 90 0 1
refdes=R312
T 49100 41900 5 10 0 1 0 0 1
footprint=0603
}
C 49700 41600 1 90 0 resistor-1.sym
{
T 49300 41900 5 10 0 0 90 0 1
device=RESISTOR
T 49400 41800 5 10 1 1 90 0 1
refdes=R313
T 49700 41600 5 10 0 1 0 0 1
footprint=0603
}
C 49100 45300 1 90 0 capacitor.sym
{
T 48400 45500 5 10 0 0 90 0 1
device=CAPACITOR
T 49100 46000 5 10 1 1 180 0 1
refdes=C303
T 48200 45500 5 10 0 0 90 0 1
symversion=0.1
T 48600 45000 5 10 0 1 0 0 1
footprint=0603
}
C 51400 44100 1 180 0 audio-jack.sym
{
T 51300 44100 5 10 1 1 180 0 1
refdes=CONN32
T 50800 43700 5 10 0 1 0 0 1
footprint=audio-jack
}
N 48700 41900 48500 41900 4
N 49000 41900 49000 41400 4
N 49600 41600 49600 41400 4
N 48500 43300 49700 43300 4
N 48500 43900 49700 43900 4
N 49600 43000 49600 43900 4
C 49800 45700 1 0 0 fuse-2.sym
{
T 50000 46250 5 10 0 0 0 0 1
device=FUSE
T 50000 46000 5 10 1 1 0 0 1
refdes=FB31
T 50000 46450 5 10 0 0 0 0 1
symversion=0.1
T 49800 45700 5 10 1 1 0 0 1
footprint=s0805
}
C 50500 45800 1 0 0 3.3V-plus-1.sym
N 47600 45800 49800 45800 4
N 48900 45300 49500 45300 4
C 49100 45000 1 0 0 gnd-1.sym
N 50200 44600 50800 44600 4
N 50200 45100 50800 45100 4
N 45600 43900 45700 43900 4
C 50300 45100 1 0 0 3.3v-digital-1.sym
C 50400 44300 1 0 0 gnd-1.sym
C 45500 44200 1 0 0 gnd-1.sym
N 45600 44800 45600 44500 4
N 45600 44500 45700 44500 4
N 45600 44800 45700 44800 4
N 38600 47100 38300 47100 4
C 46600 45800 1 0 0 3.3v-digital-1.sym
C 50000 42700 1 0 0 gnd-1.sym
N 50200 43000 50100 43000 4
C 49700 43700 1 0 0 cap-polar.sym
{
T 49700 44400 5 10 0 0 0 0 1
device=POLARIZED_CAPACITOR
T 49700 44200 5 10 1 1 0 0 1
refdes=C307
T 49700 44600 5 10 0 0 0 0 1
symversion=0.1
T 49800 43900 5 10 0 1 0 0 1
footprint=smt-can-6.3mm
}
C 49700 43100 1 0 0 cap-polar.sym
{
T 49700 43800 5 10 0 0 0 0 1
device=POLARIZED_CAPACITOR
T 49700 43500 5 10 1 1 0 0 1
refdes=C309
T 49700 44000 5 10 0 0 0 0 1
symversion=0.1
T 50000 43300 5 10 0 1 0 0 1
footprint=smt-can-6.3mm
}
N 49700 48000 49500 48000 4
N 46100 48300 46100 47400 4
N 43300 47700 44700 47700 4
N 44500 48600 43300 48600 4
N 44300 43000 44300 48300 4
N 44300 48300 43300 48300 4
N 43300 47100 43900 47100 4
N 43900 47100 43900 43900 4
N 44100 42100 44100 47400 4
N 44100 47400 43300 47400 4
N 43900 43900 44700 43900 4
N 43300 46200 43700 46200 4
N 43700 46200 43700 42700 4
N 43700 42700 44700 42700 4
C 44300 45000 1 0 0 input-2.sym
{
T 44300 45200 5 10 0 0 0 0 1
net=DEMP:1
T 44900 45700 5 10 0 0 0 0 1
device=none
T 45400 45100 5 10 1 1 0 7 1
value=DEMP
}
N 35500 47100 34900 47100 4
N 34900 47100 34900 43500 4
N 34900 43500 35500 43500 4
N 35500 47400 34700 47400 4
N 34700 47400 34700 43200 4
N 34700 43200 35500 43200 4
N 35500 45600 35300 45600 4
N 35300 45600 35300 44100 4
N 35300 44100 35500 44100 4
N 35500 45900 35100 45900 4
N 35100 45900 35100 43800 4
N 35100 43800 35500 43800 4
C 35500 43400 1 0 0 output-2.sym
{
T 36400 43400 5 10 1 0 0 0 1
net=SDA:1
T 35700 44100 5 10 0 0 0 0 1
device=none
T 35800 43500 5 10 1 1 0 1 1
value=SDA
}
C 35500 43100 1 0 0 output-2.sym
{
T 36400 43100 5 10 1 0 0 0 1
net=SCL:1
T 35700 43800 5 10 0 0 0 0 1
device=none
T 35800 43200 5 10 1 1 0 1 1
value=SCL
}
C 35500 44000 1 0 0 output-2.sym
{
T 36400 44000 5 10 1 0 0 0 1
net=PB5:1
T 35700 44700 5 10 0 0 0 0 1
device=none
T 35800 44100 5 10 1 1 0 1 1
value=PB5
}
C 35500 43700 1 0 0 output-2.sym
{
T 36400 43700 5 10 1 0 0 0 1
net=PB6:1
T 35700 44400 5 10 0 0 0 0 1
device=none
T 35800 43800 5 10 1 1 0 1 1
value=PB6
}
C 38700 42600 1 0 0 output-2.sym
{
T 39600 42600 5 10 1 0 0 0 1
net=U0Tx:1
T 38900 43300 5 10 0 0 0 0 1
device=none
T 39000 42700 5 10 1 1 0 1 1
value=U0Tx
}
C 38500 42300 1 0 0 output-2.sym
{
T 39400 42300 5 10 1 0 0 0 1
net=U0Rx:1
T 38700 43000 5 10 0 0 0 0 1
device=none
T 38800 42400 5 10 1 1 0 1 1
value=U0Rx
}
N 38300 48300 39500 48300 4
N 38300 48600 39500 48600 4
C 35200 48600 1 180 0 tactile-switch.sym
{
T 34800 47900 5 10 1 1 180 0 1
refdes=S31
T 35000 48800 5 10 0 1 180 0 1
footprint=tactile-switch
T 34700 48200 5 10 0 1 0 0 1
footprint=tactile-switch
}
C 33600 48000 1 0 0 gnd-1.sym
N 35200 48600 35500 48600 4
N 35200 48300 35500 48300 4
N 35200 48000 35500 48000 4
N 33900 48000 33900 47700 4
N 33900 47700 35500 47700 4
N 33700 48300 33900 48300 4
N 33900 48600 33500 48600 4
N 33500 48600 33500 46800 4
N 33500 46800 35500 46800 4
N 39500 46800 38900 46800 4
N 38900 46800 38900 43500 4
N 39500 46500 39100 46500 4
N 39100 46500 39100 43800 4
N 39500 46200 39300 46200 4
N 39300 46200 39300 44100 4
N 39500 45900 39500 44400 4
C 39500 44300 1 0 0 output-2.sym
{
T 40400 44300 5 10 1 0 0 0 1
net=P51:1
T 39700 45000 5 10 0 0 0 0 1
device=none
T 39800 44400 5 10 1 1 0 1 1
value=P51
}
C 39300 44000 1 0 0 output-2.sym
{
T 40200 44000 5 10 1 0 0 0 1
net=P50:1
T 39500 44700 5 10 0 0 0 0 1
device=none
T 39600 44100 5 10 1 1 0 1 1
value=P50
}
C 39100 43700 1 0 0 output-2.sym
{
T 40000 43700 5 10 1 0 0 0 1
net=P48:1
T 39300 44400 5 10 0 0 0 0 1
device=none
T 39400 43800 5 10 1 1 0 1 1
value=P48
}
C 38900 43400 1 0 0 output-2.sym
{
T 39800 43400 5 10 1 0 0 0 1
net=P47:1
T 39100 44100 5 10 0 0 0 0 1
device=none
T 39200 43500 5 10 1 1 0 1 1
value=P47
}
C 43300 44400 1 180 0 output-2.sym
{
T 42500 44300 5 10 1 0 180 0 1
net=P55:1
T 43100 43700 5 10 0 0 180 0 1
device=none
T 43000 44300 5 10 1 1 180 1 1
value=P55
}
C 43500 43700 1 180 0 output-2.sym
{
T 42700 43600 5 10 1 0 180 0 1
net=P56:1
T 43300 43000 5 10 0 0 180 0 1
device=none
T 43200 43600 5 10 1 1 180 1 1
value=P56
}
N 43300 45600 43500 45600 4
N 43500 45600 43500 43600 4
N 43300 45300 43300 44300 4
