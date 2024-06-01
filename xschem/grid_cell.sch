v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 550 -520 570 -520 {
lab=#net1}
N 570 -520 570 -420 {
lab=#net1}
N 190 -420 570 -420 {
lab=#net1}
N 190 -420 190 -300 {
lab=#net1}
N 190 -300 250 -300 {
lab=#net1}
N 190 -300 190 -100 {
lab=#net1}
N 190 -100 250 -100 {
lab=#net1}
N 140 -80 250 -80 {
lab=IN}
N 170 -280 170 -80 {
lab=IN}
N 170 -280 250 -280 {
lab=IN}
N 140 -500 250 -500 {
lab=H_GATE}
N 140 -480 250 -480 {
lab=V_GATE}
N 140 -360 250 -360 {
lab=VD_LINE}
N 140 -340 250 -340 {
lab=VD_SHORT}
N 140 -320 250 -320 {
lab=VD_RES}
N 140 -160 250 -160 {
lab=HD_LINE}
N 140 -140 250 -140 {
lab=HD_SHORT}
N 140 -120 250 -120 {
lab=HD_RES}
N 550 -380 600 -380 {
lab=V_LINE}
N 550 -360 600 -360 {
lab=V_NEXT}
N 550 -180 600 -180 {
lab=H_LINE}
N 550 -160 600 -160 {
lab=H_NEXT}
C {resistor_cell.sym} 400 -120 0 0 {name=x1}
C {resistor_cell.sym} 400 -320 0 0 {name=x2}
C {and_gate.sym} 400 -490 0 0 {name=x3}
C {devices/iopin.sym} 140 -60 0 1 {name=p1 lab=VSS}
C {devices/iopin.sym} 600 -160 0 0 {name=p2 lab=H_NEXT}
C {devices/lab_pin.sym} 250 -60 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 140 -520 0 1 {name=p4 lab=VDD}
C {devices/lab_pin.sym} 250 -260 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 250 -460 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 250 -180 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 250 -380 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 250 -520 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 140 -80 0 1 {name=p10 lab=NODE}
C {devices/ipin.sym} 140 -120 0 0 {name=p12 lab=HD_RES}
C {devices/ipin.sym} 140 -140 0 0 {name=p13 lab=HD_SHORT}
C {devices/ipin.sym} 140 -160 0 0 {name=p14 lab=HD_LINE}
C {devices/ipin.sym} 140 -320 0 0 {name=p15 lab=VD_RES}
C {devices/ipin.sym} 140 -340 0 0 {name=p16 lab=VD_SHORT}
C {devices/ipin.sym} 140 -360 0 0 {name=p17 lab=VD_LINE}
C {devices/ipin.sym} 140 -500 0 0 {name=p18 lab=H_GATE}
C {devices/ipin.sym} 140 -480 0 0 {name=p19 lab=V_GATE}
C {devices/iopin.sym} 600 -180 0 0 {name=p11 lab=H_LINE}
C {devices/iopin.sym} 600 -360 0 0 {name=p20 lab=V_NEXT}
C {devices/iopin.sym} 600 -380 0 0 {name=p21 lab=V_LINE}
