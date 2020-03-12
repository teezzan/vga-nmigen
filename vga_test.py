from nmigen import *
from vga_sync import *
from de10_lite import *

from nmigen.build import *
from nmigen.vendor.intel import *

platform = DE10LitePlatform()

class VGA_test(Elaboratable):
    
    def __init__(self):
        self.tv_out = Signal()
        self.x   = Signal()
        self.y   = Signal()
        self.vsync   = Signal()
        self.hsync  = Signal()
    def elaborate(self):
        m = Module()
        vga_tem = VGA_sync()
        m.submodules += vga_tem        
        vga = platform.request("vga")
        m.d.comb += [
            vga.vsync_n.eq(~vga_tem.vsync),
            vga.hsync_n.eq(~vga_tem.hsync)]
        with m.If(vga_tem.tv_out):

            m.d.comb += [
                vga.r.eq(7),
                vga.g.eq(7),
                vga.b.eq(7)]
        with m.Else():
            m.d.comb += [
                vga.r.eq(0),
                vga.g.eq(0),
                vga.b.eq(0)]
        
        return m

platform.build(VGA_test(), do_program=True)