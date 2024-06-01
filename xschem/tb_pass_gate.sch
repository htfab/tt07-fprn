v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 360 -820 1160 -420 {flags=graph
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
node="vss
vdd
ua
ub
en
enb"
color="15 16 5 12 8 10"
dataset=-1
unitx=1
logx=0
logy=0
}
C {devices/lab_pin.sym} 660 -50 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 30 -370 0 0 {name=STIMULI only_toplevel=false value="V1 VSS GND 0.0
V2 VDD GND 1.8
V3 EN GND pwl(0 0.0 90u 0.0 100u 1.8 190u 1.8 200u 0.0) r=0
V4 ENB GND pwl(0 1.8 90u 1.8 100u 0.0 190u 0.0 200u 1.8) r=0
V5 UA GND pwl(0 0.0 70u 1.8 140u 0.0) r=0
R1 UB GND 1meg"}
C {devices/code_shown.sym} 30 -570 0 0 {name=CONTROL only_toplevel=false value=".control
save all
tran 1u 1000u
remzerovec
write tb_pass_gate.raw
.endc"}
C {devices/lab_pin.sym} 740 -200 0 0 {name=p32 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 740 -220 0 0 {name=p33 sig_type=std_logic lab=EN
}
C {devices/lab_pin.sym} 740 -240 0 0 {name=p34 sig_type=std_logic lab=UA
}
C {devices/lab_pin.sym} 740 -260 0 0 {name=p35 sig_type=std_logic lab=ENB
}
C {devices/lab_pin.sym} 740 -280 0 0 {name=p36 sig_type=std_logic lab=VDD
}
C {ignore.sym} 740 -280 0 0 {}
C {ignore.sym} 740 -260 0 0 {}
C {ignore.sym} 740 -240 0 0 {}
C {ignore.sym} 740 -220 0 0 {}
C {ignore.sym} 740 -200 0 0 {}
C {devices/lab_pin.sym} 860 -280 0 1 {name=p40 sig_type=std_logic lab=UB}
C {ignore.sym} 860 -280 0 1 {}
C {devices/lab_pin.sym} 660 -70 0 0 {name=p2 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} 660 -90 0 0 {name=p3 sig_type=std_logic lab=UA}
C {devices/lab_pin.sym} 660 -110 0 0 {name=p4 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 660 -130 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 960 -130 0 1 {name=p8 sig_type=std_logic lab=UB}
C {pass_gate.sym} 810 -90 0 0 {name=x1}
C {sky130_fd_pr/corner.sym} 40 -170 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 760 -360 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_pass_gate.raw tran"
}
