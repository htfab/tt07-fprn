# Initialize the TT demoboard

print("Booting up")
import gc
gc.threshold(10000)
from ttboard.demoboard import DemoBoard
from ttboard.mode import RPMode
from ttboard.boot.demoboard_detect import DemoboardDetect
DemoboardDetect.probe()
tt = DemoBoard.get()
tt.mode = RPMode.ASIC_RP_CONTROL

# Do a quick check to catch setup issues early

print("Performing self test")
tt.shuttle.tt_um_chip_rom.enable()
tt.ui_in.value = 0
assert tt.uo_out.value == 0b01111000

# Make sure every input is initialized. We will set them once
# again quite soon, this is just to ensure that everything is
# deterministic.

tt.ui_in.value  = 0
tt.uio_in.value = 0
tt.clk.value    = 0
tt.rst_n.value  = 0
tt.uio_oe_pico.value = 0
