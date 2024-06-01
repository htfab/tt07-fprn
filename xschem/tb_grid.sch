v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 140 -1160 940 -760 {flags=graph
y1=0
y2=1.9
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
node="#V_SEL_0
#V_SEL_1
#V_SEL_2
#H_SEL_0
#H_SEL_1
#H_SEL_2
NODE_00
x1.NODE_06
#m.x1.x1.x4.x1.x1.x2.x4.xm1.msky130_fd_pr__nfet_g5v0d10v5#dbody
#x1.x1.x4.x3.net1"
color="4 5 6 7 8 10 9 21 18 17"
dataset=-1
unitx=1
logx=0
logy=0
}
C {grid.sym} 1000 -250 0 0 {name=x1}
C {devices/lab_pin.sym} 850 -110 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 850 -130 0 0 {name=p2 sig_type=std_logic lab=SEL_EN}
C {devices/lab_pin.sym} 850 -150 0 0 {name=p3 sig_type=std_logic lab=H_SEL_2
}
C {devices/lab_pin.sym} 850 -170 0 0 {name=p4 sig_type=std_logic lab=H_SEL_1
}
C {devices/lab_pin.sym} 850 -190 0 0 {name=p5 sig_type=std_logic lab=H_SEL_0
}
C {devices/lab_pin.sym} 850 -210 0 0 {name=p6 sig_type=std_logic lab=V_SEL_2
}
C {devices/lab_pin.sym} 850 -230 0 0 {name=p7 sig_type=std_logic lab=V_SEL_1
}
C {devices/lab_pin.sym} 850 -250 0 0 {name=p8 sig_type=std_logic lab=V_SEL_0
}
C {devices/lab_pin.sym} 850 -270 0 0 {name=p9 sig_type=std_logic lab=HD_RES
}
C {devices/lab_pin.sym} 850 -290 0 0 {name=p10 sig_type=std_logic lab=HD_SHORT
}
C {devices/lab_pin.sym} 850 -310 0 0 {name=p11 sig_type=std_logic lab=HD_LINE
}
C {devices/lab_pin.sym} 850 -330 0 0 {name=p12 sig_type=std_logic lab=VD_RES
}
C {devices/lab_pin.sym} 850 -350 0 0 {name=p13 sig_type=std_logic lab=VD_SHORT
}
C {devices/lab_pin.sym} 850 -370 0 0 {name=p14 sig_type=std_logic lab=VD_LINE
}
C {devices/lab_pin.sym} 850 -390 0 0 {name=p15 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1150 -390 0 1 {name=p16 sig_type=std_logic lab=NODE_00
}
C {devices/lab_pin.sym} 1150 -370 0 1 {name=p17 sig_type=std_logic lab=NODE_04
}
C {devices/lab_pin.sym} 1150 -350 0 1 {name=p18 sig_type=std_logic lab=NODE_08
}
C {devices/lab_pin.sym} 1150 -330 0 1 {name=p19 sig_type=std_logic lab=NODE_40
}
C {devices/lab_pin.sym} 1150 -310 0 1 {name=p20 sig_type=std_logic lab=NODE_44
}
C {devices/lab_pin.sym} 1150 -290 0 1 {name=p21 sig_type=std_logic lab=NODE_48
}
C {devices/lab_pin.sym} 1150 -270 0 1 {name=p22 sig_type=std_logic lab=NODE_80
}
C {devices/lab_pin.sym} 1150 -250 0 1 {name=p23 sig_type=std_logic lab=NODE_84
}
C {devices/code_shown.sym} 40 -490 0 0 {name=STIMULI only_toplevel=false value="V1 VSS GND 0.0
V2 VDD GND 1.8
V3 VD_LINE GND 0.0
V4 VD_SHORT GND 0.0
V5 VD_RES GND 1.8
V6 HD_LINE GND 0.0
V7 HD_SHORT GND 0.0
V8 HD_RES GND 1.8
V9 V_SEL_0 GND pwl(0 0.0 9u 0.0 10u 1.8 19u 1.8 20u 0.0) r=0
V10 V_SEL_1 GND pwl(0 0.0 19u 0.0 20u 1.8 39u 1.8 40u 0.0) r=0
V11 V_SEL_2 GND pwl(0 0.0 39u 0.0 40u 1.8 79u 1.8 80u 0.0) r=0
V12 H_SEL_0 GND pwl(0 0.0 79u 0.0 80u 1.8 159u 1.8 160u 0.0) r=0
V13 H_SEL_1 GND pwl(0 0.0 159u 0.0 160u 1.8 319u 1.8 320u 0.0) r=0
V14 H_SEL_2 GND pwl(0 0.0 319u 0.0 320u 1.8 639u 1.8 640u 0.0) r=0
V15 SEL_EN GND pwl(0 0.0 1u 0.0 2u 1.8 7u 1.8 8u 0.0 10u 0.0) r=0
V16 NODE_08 VSS 0.0
V17 NODE_80 VDD 0.0"}
C {devices/code_shown.sym} 200 -670 0 0 {name=CONTROL only_toplevel=false value=".control
save all
tran 1u 1000u
remzerovec
write tb_grid.raw
.endc"}
C {devices/lab_pin.sym} 930 -440 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 930 -460 0 0 {name=p25 sig_type=std_logic lab=SEL_EN}
C {devices/lab_pin.sym} 930 -480 0 0 {name=p26 sig_type=std_logic lab=H_SEL_2
}
C {devices/lab_pin.sym} 930 -500 0 0 {name=p27 sig_type=std_logic lab=H_SEL_1
}
C {devices/lab_pin.sym} 930 -520 0 0 {name=p28 sig_type=std_logic lab=H_SEL_0
}
C {devices/lab_pin.sym} 930 -540 0 0 {name=p29 sig_type=std_logic lab=V_SEL_2
}
C {devices/lab_pin.sym} 930 -560 0 0 {name=p30 sig_type=std_logic lab=V_SEL_1
}
C {devices/lab_pin.sym} 930 -580 0 0 {name=p31 sig_type=std_logic lab=V_SEL_0
}
C {devices/lab_pin.sym} 930 -600 0 0 {name=p32 sig_type=std_logic lab=HD_RES
}
C {devices/lab_pin.sym} 930 -620 0 0 {name=p33 sig_type=std_logic lab=HD_SHORT
}
C {devices/lab_pin.sym} 930 -640 0 0 {name=p34 sig_type=std_logic lab=HD_LINE
}
C {devices/lab_pin.sym} 930 -660 0 0 {name=p35 sig_type=std_logic lab=VD_RES
}
C {devices/lab_pin.sym} 930 -680 0 0 {name=p36 sig_type=std_logic lab=VD_SHORT
}
C {devices/lab_pin.sym} 930 -700 0 0 {name=p37 sig_type=std_logic lab=VD_LINE
}
C {devices/lab_pin.sym} 930 -720 0 0 {name=p38 sig_type=std_logic lab=VDD
}
C {ignore.sym} 930 -720 0 0 {}
C {ignore.sym} 930 -700 0 0 {}
C {ignore.sym} 930 -680 0 0 {}
C {ignore.sym} 930 -660 0 0 {}
C {ignore.sym} 930 -640 0 0 {}
C {ignore.sym} 930 -620 0 0 {}
C {ignore.sym} 930 -600 0 0 {}
C {ignore.sym} 930 -580 0 0 {}
C {ignore.sym} 930 -560 0 0 {}
C {ignore.sym} 930 -540 0 0 {}
C {ignore.sym} 930 -520 0 0 {}
C {ignore.sym} 930 -500 0 0 {}
C {ignore.sym} 930 -480 0 0 {}
C {ignore.sym} 930 -460 0 0 {}
C {ignore.sym} 930 -440 0 0 {}
C {devices/lab_pin.sym} 1050 -720 0 1 {name=p39 sig_type=std_logic lab=NODE_00}
C {devices/lab_pin.sym} 1050 -700 0 1 {name=p40 sig_type=std_logic lab=NODE_04}
C {devices/lab_pin.sym} 1050 -680 0 1 {name=p41 sig_type=std_logic lab=NODE_08}
C {devices/lab_pin.sym} 1050 -660 0 1 {name=p42 sig_type=std_logic lab=NODE_40}
C {devices/lab_pin.sym} 1050 -640 0 1 {name=p43 sig_type=std_logic lab=NODE_44}
C {devices/lab_pin.sym} 1050 -620 0 1 {name=p44 sig_type=std_logic lab=NODE_48}
C {devices/lab_pin.sym} 1050 -600 0 1 {name=p45 sig_type=std_logic lab=NODE_80}
C {devices/lab_pin.sym} 1050 -580 0 1 {name=p46 sig_type=std_logic lab=NODE_84}
C {ignore.sym} 1050 -720 0 1 {}
C {ignore.sym} 1050 -700 0 1 {}
C {ignore.sym} 1050 -680 0 1 {}
C {ignore.sym} 1050 -660 0 1 {}
C {ignore.sym} 1050 -640 0 1 {}
C {ignore.sym} 1050 -620 0 1 {}
C {ignore.sym} 1050 -600 0 1 {}
C {ignore.sym} 1050 -580 0 1 {}
C {sky130_fd_pr/corner.sym} 40 -670 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 430 -710 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_grid.raw tran"
}
