v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 440 -960 1240 -560 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="d_line
d_short
d_res
gate
ua
ub
line"
color="4 15 6 8 5 12 9"
dataset=-1
unitx=1
logx=0
logy=0
}
C {devices/lab_pin.sym} 670 -100 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 40 -420 0 0 {name=STIMULI only_toplevel=false value="V1 VSS GND 0.0
V2 VDD GND 1.8
V3 D_LINE GND pwl(0 0.0 90u 0.0 100u 1.8 190u 1.8 200u 0.0) r=0
V4 D_SHORT GND pwl(0 0.0 190u 0.0 200u 1.8 390u 1.8 400u 0.0) r=0
V5 D_RES GND pwl(0 0.0 390u 0.0 400u 1.8 790u 1.8 800u 0.0) r=0
V6 GATE GND pwl(0 0.0 40u 0.0 50u 1.8 90u 1.8 100u 0.0) r=0
V7 UA GND pwl(0 0.0 70u 1.8 140u 0.0) r=0
R1 LINE GND 250k
R2 UB GND 250k"}
C {devices/code_shown.sym} 40 -620 0 0 {name=CONTROL only_toplevel=false value=".control
save all
tran 1u 1000u
remzerovec
write tb_resistor_cell.raw
.endc"}
C {devices/lab_pin.sym} 750 -310 0 0 {name=p32 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 750 -330 0 0 {name=p33 sig_type=std_logic lab=UA
}
C {devices/lab_pin.sym} 750 -350 0 0 {name=p34 sig_type=std_logic lab=GATE
}
C {devices/lab_pin.sym} 750 -370 0 0 {name=p35 sig_type=std_logic lab=D_RES
}
C {devices/lab_pin.sym} 750 -390 0 0 {name=p36 sig_type=std_logic lab=D_SHORT
}
C {devices/lab_pin.sym} 750 -410 0 0 {name=p37 sig_type=std_logic lab=D_LINE
}
C {devices/lab_pin.sym} 750 -430 0 0 {name=p38 sig_type=std_logic lab=VDD
}
C {ignore.sym} 750 -430 0 0 {}
C {ignore.sym} 750 -410 0 0 {}
C {ignore.sym} 750 -390 0 0 {}
C {ignore.sym} 750 -370 0 0 {}
C {ignore.sym} 750 -350 0 0 {}
C {ignore.sym} 750 -330 0 0 {}
C {ignore.sym} 750 -310 0 0 {}
C {devices/lab_pin.sym} 870 -430 0 1 {name=p39 sig_type=std_logic lab=LINE}
C {devices/lab_pin.sym} 870 -410 0 1 {name=p40 sig_type=std_logic lab=UB}
C {ignore.sym} 870 -430 0 1 {}
C {ignore.sym} 870 -410 0 1 {}
C {resistor_cell.sym} 820 -160 0 0 {name=x1}
C {devices/lab_pin.sym} 670 -120 0 0 {name=p2 sig_type=std_logic lab=UA}
C {devices/lab_pin.sym} 670 -140 0 0 {name=p3 sig_type=std_logic lab=GATE}
C {devices/lab_pin.sym} 670 -160 0 0 {name=p4 sig_type=std_logic lab=D_RES}
C {devices/lab_pin.sym} 670 -180 0 0 {name=p5 sig_type=std_logic lab=D_SHORT}
C {devices/lab_pin.sym} 670 -200 0 0 {name=p6 sig_type=std_logic lab=D_LINE}
C {devices/lab_pin.sym} 670 -220 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 970 -200 0 1 {name=p8 sig_type=std_logic lab=UB}
C {devices/lab_pin.sym} 970 -220 0 1 {name=p9 sig_type=std_logic lab=LINE}
C {sky130_fd_pr/corner.sym} 50 -200 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 790 -510 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_resistor_cell.raw tran"
}
