v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -260 120 -260 {
lab=A2}
N 120 -400 200 -400 {
lab=A2}
N 500 -420 520 -420 {
lab=#net1}
N 520 -420 520 -350 {
lab=#net1}
N 140 -350 520 -350 {
lab=#net1}
N 140 -260 200 -260 {
lab=#net1}
N 120 -260 120 -120 {
lab=A2}
N 120 -120 200 -120 {
lab=A2}
N 100 -180 140 -180 {
lab=EN}
N 140 -240 140 -180 {
lab=EN}
N 140 -240 200 -240 {
lab=EN}
N 140 -180 140 -100 {
lab=EN}
N 140 -100 200 -100 {
lab=EN}
N 910 -290 930 -290 {
lab=D0}
N 910 -270 930 -270 {
lab=D1}
N 910 -250 930 -250 {
lab=D2}
N 910 -230 930 -230 {
lab=D3}
N 500 -280 520 -280 {
lab=#net2}
N 500 -140 520 -140 {
lab=#net3}
N 910 -150 930 -150 {
lab=D4}
N 910 -130 930 -130 {
lab=D5}
N 910 -110 930 -110 {
lab=D6}
N 910 -90 930 -90 {
lab=D7}
N 120 -400 120 -260 {
lab=A2}
N 140 -350 140 -260 {
lab=#net1}
N 100 -330 560 -330 {
lab=A0}
N 560 -330 560 -270 {
lab=A0}
N 560 -270 610 -270 {
lab=A0}
N 560 -270 560 -130 {
lab=A0}
N 560 -130 610 -130 {
lab=A0}
N 100 -310 540 -310 {
lab=A1}
N 540 -310 540 -250 {
lab=A1}
N 540 -250 610 -250 {
lab=A1}
N 540 -250 540 -110 {
lab=A1}
N 540 -110 610 -110 {
lab=A1}
N 520 -280 520 -230 {
lab=#net2}
N 520 -230 610 -230 {
lab=#net2}
N 520 -140 520 -90 {
lab=#net3}
N 520 -90 610 -90 {
lab=#net3}
C {and_gate.sym} 350 -110 0 0 {name=x1}
C {and_gate.sym} 350 -250 0 0 {name=x2}
C {inverter.sym} 350 -400 0 0 {name=x3}
C {devices/lab_pin.sym} 200 -80 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 -220 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 -380 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 -140 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 200 -280 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 200 -420 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 100 -80 2 0 {name=p7 lab=VSS}
C {devices/iopin.sym} 100 -420 2 0 {name=p8 lab=VDD}
C {devices/ipin.sym} 100 -330 2 1 {name=p9 lab=A0}
C {devices/ipin.sym} 100 -180 2 1 {name=p10 lab=EN}
C {devices/opin.sym} 930 -290 0 0 {name=p11 lab=D0}
C {devices/opin.sym} 930 -270 0 0 {name=p12 lab=D1}
C {devices/ipin.sym} 100 -310 2 1 {name=p13 lab=A1}
C {decoder_2bit.sym} 760 -110 0 0 {name=x4}
C {decoder_2bit.sym} 760 -250 0 0 {name=x5}
C {devices/opin.sym} 930 -250 0 0 {name=p14 lab=D2}
C {devices/opin.sym} 930 -230 0 0 {name=p15 lab=D3}
C {devices/lab_pin.sym} 610 -70 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 610 -210 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 610 -150 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 610 -290 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 100 -260 2 1 {name=p20 lab=A2}
C {devices/opin.sym} 930 -150 0 0 {name=p21 lab=D4}
C {devices/opin.sym} 930 -130 0 0 {name=p22 lab=D5}
C {devices/opin.sym} 930 -110 0 0 {name=p23 lab=D6}
C {devices/opin.sym} 930 -90 0 0 {name=p24 lab=D7}
