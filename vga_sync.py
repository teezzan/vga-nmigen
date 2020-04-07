from nmigen import *
from nmigen.cli import main
from tick import *

HD=640
HF=48
HB=16
HR=96
VD=480
VF=10
VB=33
VR=2


class VGA_sync(Elaboratable):
    
    def __init__(self):
        self.tv_out = Signal()
        self.x   = Signal()
        self.y   = Signal()
        self.vsync   = Signal()
        self.hsync  = Signal()
       
    # def ports(self):
    #     return [self.tv_out, self.x, self.y, self.vsync, self.hsync]
    def elaborate(self, platform):
        m = Module()
        sys_clk_freq = int(50e6)
        hsync_count = Signal(10)
        vsync_count = Signal(10)
        tv_cond = Signal()
        tick = Tick(sys_clk_freq = sys_clk_freq, period = 4e-08)
        m.submodules += tick
        with m.If(tick.ce):            
            with m.If(hsync_count == 800):
                m.d.sync += hsync_count.eq(0)                
                with m.If(vsync_count == 800):
                    m.d.sync += vsync_count.eq(0)
                with m.Else():
                    m.d.sync += vsync_count.eq(vsync_count + 1)                
            with m.Else():
                m.d.sync +=  hsync_count.eq(hsync_count+1)

        with m.If((hsync_count >= (HB + HD)) & (hsync_count <= (HB + HD + HR - 1))):
            m.d.comb +=  self.hsync.eq(0)
        with m.Else():
            m.d.comb +=  self.hsync.eq(1)

        with m.If((vsync_count >= (VB + VD)) & (vsync_count <= (VB + VD + VR - 1))):
            m.d.comb +=  self.vsync.eq(0)            
        with m.Else():
            m.d.comb +=  self.vsync.eq(1)

        m.d.comb += [
            self.x.eq(hsync_count),
            self.y.eq(vsync_count),
            tv_cond.eq((vsync_count < VD) & (hsync_count < HD)),
            self.tv_out.eq(Mux(tv_cond, 1, 0))
        ]

        return m
   
if __name__ == "__main__":
#     from nmigen.back import verilog
    vga= VGA_sync()
    ports= [vga.tv_out, vga.x, vga.y, vga.vsync, vga.hsync]
#     print(verilog.convert(vga, ports=ports))
    main(vga, ports=ports)
