v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 540 -320 560 -320 {
lab=#net1}
N 130 -120 240 -120 {
lab=UA}
N 180 -140 240 -140 {
lab=#net1}
N 180 -220 180 -140 {
lab=#net1}
N 180 -220 560 -220 {
lab=#net1}
N 560 -320 560 -220 {
lab=#net1}
N 540 -340 580 -340 {
lab=Q}
N 580 -340 580 -200 {
lab=Q}
N 160 -200 580 -200 {
lab=Q}
N 160 -200 160 -100 {
lab=Q}
N 160 -100 240 -100 {
lab=Q}
N 580 -340 610 -340 {
lab=Q}
N 180 -320 240 -320 {
lab=#net2}
N 180 -380 180 -320 {
lab=#net2}
N 180 -380 560 -380 {
lab=#net2}
N 540 -460 560 -460 {
lab=#net2}
N 560 -460 560 -380 {
lab=#net2}
N 160 -440 160 -280 {
lab=GATE}
N 160 -280 240 -280 {
lab=GATE}
N 130 -300 240 -300 {
lab=D}
N 130 -280 160 -280 {
lab=GATE}
N 160 -440 240 -440 {
lab=GATE}
N 540 -160 610 -160 {
lab=OUT}
C {pass_gate.sym} 390 -120 0 0 {name=x1}
C {latch.sym} 390 -300 0 0 {name=x2}
C {inverter.sym} 390 -440 0 0 {name=x3}
C {devices/iopin.sym} 130 -80 0 1 {name=p1 lab=VSS}
C {devices/iopin.sym} 610 -160 0 0 {name=p2 lab=UB}
C {devices/lab_pin.sym} 240 -260 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 130 -460 0 1 {name=p4 lab=VDD}
C {devices/lab_pin.sym} 240 -340 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 240 -420 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 -460 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 130 -120 0 1 {name=p8 lab=UA}
C {devices/ipin.sym} 130 -300 0 0 {name=p9 lab=D}
C {devices/ipin.sym} 130 -280 0 0 {name=p10 lab=GATE}
C {devices/opin.sym} 610 -340 0 0 {name=p14 lab=Q}
C {devices/lab_pin.sym} 240 -80 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 -160 0 0 {name=p18 sig_type=std_logic lab=VDD}
