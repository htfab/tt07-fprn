v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -100 200 -100 {
lab=VSS}
N 180 -160 200 -160 {
lab=VDD}
N 180 -140 200 -140 {
lab=A}
N 180 -120 200 -120 {
lab=B}
N 500 -160 520 -160 {
lab=#net1}
N 520 -160 520 -130 {
lab=#net1}
N 520 -130 580 -130 {
lab=#net1}
N 880 -150 900 -150 {
lab=OUT}
C {devices/iopin.sym} 180 -100 2 0 {name=p1 lab=VSS}
C {devices/iopin.sym} 180 -160 2 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 180 -140 2 1 {name=p3 lab=A}
C {devices/opin.sym} 900 -150 0 0 {name=p4 lab=OUT}
C {devices/ipin.sym} 180 -120 2 1 {name=p5 lab=B}
C {nand_gate.sym} 350 -130 0 0 {name=x1}
C {inverter.sym} 730 -130 0 0 {name=x2}
C {devices/lab_pin.sym} 580 -110 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 580 -150 0 0 {name=p7 sig_type=std_logic lab=VDD}
