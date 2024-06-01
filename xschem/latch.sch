v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 480 -160 520 -160 {
lab=#net1}
N 520 -160 520 -120 {
lab=#net1}
N 940 -140 970 -140 {
lab=QB}
N 520 -120 640 -120 {
lab=#net1}
N 970 -200 970 -140 {
lab=QB}
N 940 -300 970 -300 {
lab=Q}
N 970 -380 970 -300 {
lab=Q}
N 480 -320 520 -320 {
lab=#net1}
N 520 -320 520 -160 {
lab=#net1}
N 100 -380 970 -380 {
lab=Q}
N 100 -380 100 -280 {
lab=Q}
N 100 -280 180 -280 {
lab=Q}
N 140 -80 180 -80 {
lab=VSS}
N 140 -160 180 -160 {
lab=VDD}
N 140 -100 180 -100 {
lab=GATE}
N 140 -140 180 -140 {
lab=GATEB}
N 140 -120 180 -120 {
lab=D}
N 580 -200 970 -200 {
lab=QB}
N 580 -280 580 -200 {
lab=QB}
N 580 -280 640 -280 {
lab=QB}
N 970 -300 1000 -300 {
lab=Q}
N 970 -140 1000 -140 {
lab=QB}
C {pass_gate.sym} 330 -120 0 0 {name=x1}
C {pass_gate.sym} 330 -280 0 0 {name=x2}
C {inverter.sym} 790 -120 0 0 {name=x3}
C {inverter.sym} 790 -280 0 0 {name=x4}
C {devices/lab_pin.sym} 180 -240 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 640 -100 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 640 -260 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 -320 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 640 -140 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 640 -300 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -260 0 0 {name=p11 sig_type=std_logic lab=GATEB}
C {devices/lab_pin.sym} 180 -300 0 0 {name=p12 sig_type=std_logic lab=GATE}
C {devices/iopin.sym} 140 -80 0 1 {name=p14 lab=VSS}
C {devices/iopin.sym} 140 -160 0 1 {name=p15 lab=VDD}
C {devices/ipin.sym} 140 -120 0 0 {name=p16 lab=D}
C {devices/ipin.sym} 140 -100 0 0 {name=p1 lab=GATE}
C {devices/ipin.sym} 140 -140 0 0 {name=p5 lab=GATEB}
C {devices/opin.sym} 1000 -300 0 0 {name=p9 lab=Q}
C {devices/opin.sym} 1000 -140 0 0 {name=p10 lab=QB}
