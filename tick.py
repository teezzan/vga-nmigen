from nmigen import *
from nmigen.cli import main



class Tick(Elaboratable):
    def __init__(self, sys_clk_freq, period):
        self.enable = Signal(reset=1) # input
        self.ce = Signal()            # output
        self.period = period
        self.sys_clk_freq = sys_clk_freq

    def elaborate(self, platform):
        m = Module()
        counter_preload = int(self.period*self.sys_clk_freq - 1)
        counter = Signal(max=int(self.period*self.sys_clk_freq - 1))

        m.d.sync +=self.ce.eq(counter == 0)
        m.d.comb += self.enable.eq(1)

        with m.If((~self.enable | self.ce)):
            m.d.sync += counter.eq(counter_preload)
        with m.Else():
            m.d.sync += counter.eq(counter - 1)

        return m



if __name__ == "__main__":
    tick= Tick(sys_clk_freq = int(50), period = 1)
    ports= [tick.ce, tick.enable]
    main(tick, ports=ports)