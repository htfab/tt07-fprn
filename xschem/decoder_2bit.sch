v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -260 120 -260 {
lab=A1}
N 120 -380 120 -260 {
lab=A1}
N 120 -380 200 -380 {
lab=A1}
N 500 -400 520 -400 {
lab=#net1}
N 520 -400 520 -330 {
lab=#net1}
N 140 -330 520 -330 {
lab=#net1}
N 140 -330 140 -260 {
lab=#net1}
N 140 -260 200 -260 {
lab=#net1}
N 120 -260 120 -120 {
lab=A1}
N 120 -120 200 -120 {
lab=A1}
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
N 890 -280 910 -280 {
lab=D0}
N 890 -260 910 -260 {
lab=D1}
N 890 -140 910 -140 {
lab=D2}
N 890 -120 910 -120 {
lab=D3}
N 500 -280 520 -280 {
lab=#net2}
N 520 -280 520 -240 {
lab=#net2}
N 520 -240 590 -240 {
lab=#net2}
N 500 -140 520 -140 {
lab=#net3}
N 520 -140 520 -100 {
lab=#net3}
N 520 -100 590 -100 {
lab=#net3}
N 100 -310 540 -310 {
lab=A0}
N 540 -310 540 -260 {
lab=A0}
N 540 -260 590 -260 {
lab=A0}
N 540 -260 540 -120 {
lab=A0}
N 540 -120 590 -120 {
lab=A0}
C {and_gate.sym} 350 -110 0 0 {name=x1}
C {and_gate.sym} 350 -250 0 0 {name=x2}
C {inverter.sym} 350 -380 0 0 {name=x3}
C {devices/lab_pin.sym} 200 -80 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 -220 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 -360 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 -140 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 200 -280 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 200 -400 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 100 -80 2 0 {name=p7 lab=VSS}
C {devices/iopin.sym} 100 -400 2 0 {name=p8 lab=VDD}
C {devices/ipin.sym} 100 -310 2 1 {name=p9 lab=A0}
C {devices/ipin.sym} 100 -180 2 1 {name=p10 lab=EN}
C {devices/opin.sym} 910 -280 0 0 {name=p11 lab=D0}
C {devices/opin.sym} 910 -260 0 0 {name=p12 lab=D1}
C {devices/ipin.sym} 100 -260 2 1 {name=p13 lab=A1}
C {decoder_1bit.sym} 740 -110 0 0 {name=x4}
C {decoder_1bit.sym} 740 -250 0 0 {name=x5}
C {devices/opin.sym} 910 -140 0 0 {name=p14 lab=D2}
C {devices/opin.sym} 910 -120 0 0 {name=p15 lab=D3}
C {devices/lab_pin.sym} 590 -80 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 590 -220 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 590 -140 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 590 -280 0 0 {name=p19 sig_type=std_logic lab=VDD}
