/* Automatically generated by nMigen 0.2.dev12+g318274d. Do not edit. */
/* Generated by Yosys 0.9+932 (git sha1 dadaf7ed, clang 6.0.0-1ubuntu2 -fPIC -Os) */

(* generator = "nMigen" *)
(* \nmigen.hierarchy  = "top.U$$0" *)
module \U$$0 (hsync, tv_out, rst, clk, vsync);
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:35" *)
  wire \$1 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:40" *)
  wire [10:0] \$10 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:40" *)
  wire [10:0] \$11 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:44" *)
  wire \$13 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:44" *)
  wire \$15 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:44" *)
  wire \$17 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:49" *)
  wire \$19 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:49" *)
  wire \$21 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:49" *)
  wire \$23 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:59" *)
  wire \$25 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:59" *)
  wire \$27 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:59" *)
  wire \$29 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:42" *)
  wire [10:0] \$3 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:60" *)
  wire \$31 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:42" *)
  wire [10:0] \$4 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:35" *)
  wire \$6 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:37" *)
  wire \$8 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/tick.py:9" *)
  wire \U$$0_ce ;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/plat.py:104" *)
  input clk;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:22" *)
  output hsync;
  reg hsync;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:29" *)
  reg [9:0] hsync_count = 10'h000;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:29" *)
  reg [9:0] \hsync_count$next ;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/plat.py:104" *)
  input rst;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:31" *)
  wire tv_cond;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:18" *)
  output tv_out;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:21" *)
  output vsync;
  reg vsync;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:30" *)
  reg [9:0] vsync_count = 10'h000;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:30" *)
  reg [9:0] \vsync_count$next ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:19" *)
  wire x;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:20" *)
  wire y;
  assign \$11  = vsync_count + (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:40" *) 1'h1;
  assign \$13  = hsync_count >= (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:44" *) 10'h290;
  assign \$15  = hsync_count <= (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:44" *) 10'h2ef;
  assign \$17  = \$13  & (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:44" *) \$15 ;
  assign \$1  = hsync_count == (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:35" *) 10'h320;
  assign \$19  = vsync_count >= (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:49" *) 10'h201;
  assign \$21  = vsync_count <= (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:49" *) 10'h202;
  assign \$23  = \$19  & (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:49" *) \$21 ;
  assign \$25  = vsync_count < (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:59" *) 9'h1e0;
  assign \$27  = hsync_count < (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:59" *) 10'h280;
  assign \$29  = \$25  & (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:59" *) \$27 ;
  assign \$31  = tv_cond ? (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:60" *) 1'h1 : 1'h0;
  assign \$4  = hsync_count + (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:42" *) 1'h1;
  assign \$6  = hsync_count == (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:35" *) 10'h320;
  assign \$8  = vsync_count == (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:37" *) 10'h320;
  always @(posedge clk)
      vsync_count <= \vsync_count$next ;
  always @(posedge clk)
      hsync_count <= \hsync_count$next ;
  \U$$0$1  \U$$0  (
    .ce(\U$$0_ce ),
    .clk(clk),
    .rst(rst)
  );
  always @* begin
    \hsync_count$next  = hsync_count;
    (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:34" *)
    casez (\U$$0_ce )
      /* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:34" */
      1'h1:
          (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:35" *)
          casez (\$1 )
            /* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:35" */
            1'h1:
                \hsync_count$next  = 10'h000;
            /* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:41" */
            default:
                \hsync_count$next  = \$3 [9:0];
          endcase
    endcase
    (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/hdl/xfrm.py:528" *)
    casez (rst)
      1'h1:
          \hsync_count$next  = 10'h000;
    endcase
  end
  always @* begin
    \vsync_count$next  = vsync_count;
    (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:34" *)
    casez (\U$$0_ce )
      /* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:34" */
      1'h1:
          (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:35" *)
          casez (\$6 )
            /* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:35" */
            1'h1:
                (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:37" *)
                casez (\$8 )
                  /* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:37" */
                  1'h1:
                      \vsync_count$next  = 10'h000;
                  /* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:39" */
                  default:
                      \vsync_count$next  = \$10 [9:0];
                endcase
          endcase
    endcase
    (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/hdl/xfrm.py:528" *)
    casez (rst)
      1'h1:
          \vsync_count$next  = 10'h000;
    endcase
  end
  always @* begin
    (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:44" *)
    casez (\$17 )
      /* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:44" */
      1'h1:
          hsync = 1'h1;
      /* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:46" */
      default:
          hsync = 1'h0;
    endcase
  end
  always @* begin
    (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:49" *)
    casez (\$23 )
      /* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:49" */
      1'h1:
          vsync = 1'h1;
      /* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:51" */
      default:
          vsync = 1'h0;
    endcase
  end
  assign \$3  = \$4 ;
  assign \$10  = \$11 ;
  assign tv_out = \$31 ;
  assign tv_cond = \$29 ;
  assign y = vsync_count[0];
  assign x = hsync_count[0];
endmodule

(* generator = "nMigen" *)
(* \nmigen.hierarchy  = "top.U$$0.U$$0" *)
module \U$$0$1 (rst, clk, ce);
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/tick.py:18" *)
  wire \$1 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/tick.py:21" *)
  wire \$3 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/tick.py:21" *)
  wire \$5 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/tick.py:24" *)
  wire [1:0] \$7 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/tick.py:24" *)
  wire [1:0] \$8 ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/tick.py:9" *)
  output ce;
  reg ce = 1'h0;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/tick.py:9" *)
  reg \ce$next ;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/plat.py:104" *)
  input clk;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/tick.py:16" *)
  wire [-1:0] counter;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/tick.py:16" *)
  wire [-1:0] \counter$next ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/tick.py:8" *)
  wire enable;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/plat.py:104" *)
  input rst;
  assign \$1  = "" == (* src = "/home/gal3li0/Documents/electronic/vga nmgen/tick.py:18" *) 1'h0;
  assign \$3  = ~ (* src = "/home/gal3li0/Documents/electronic/vga nmgen/tick.py:21" *) enable;
  assign \$5  = \$3  | (* src = "/home/gal3li0/Documents/electronic/vga nmgen/tick.py:21" *) ce;
  assign \$8  = "" - (* src = "/home/gal3li0/Documents/electronic/vga nmgen/tick.py:24" *) 1'h1;
  always @(posedge clk)
      ce <= \ce$next ;
  always @* begin
    \ce$next  = \$1 ;
    (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/hdl/xfrm.py:528" *)
    casez (rst)
      1'h1:
          \ce$next  = 1'h0;
    endcase
  end
  assign \$7  = \$8 ;
  assign "" = "";
  assign enable = 1'h1;
endmodule

(* generator = "nMigen" *)
(* \nmigen.hierarchy  = "top.cd_sync" *)
module cd_sync(clk, clk50_0__i, rst);
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/plat.py:104" *)
  output clk;
  (* keep = 1 *)
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/res.py:137" *)
  input clk50_0__i;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/plat.py:104" *)
  output rst;
  reset_sync reset_sync (
    .clk(clk),
    .rst(rst)
  );
  assign clk = clk50_0__i;
endmodule

(* generator = "nMigen" *)
(* \nmigen.hierarchy  = "top.cd_sync.reset_sync" *)
module reset_sync(clk, rst);
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/vendor/intel.py:388" *)
  wire \$1 ;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/vendor/intel.py:392" *)
  wire \$3 ;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/plat.py:104" *)
  input clk;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/plat.py:104" *)
  output rst;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/vendor/intel.py:384" *)
  wire rst_n;
  assign \$1  = ~ (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/vendor/intel.py:388" *) 1'h0;
  assign \$3  = ~ (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/vendor/intel.py:392" *) rst_n;
  altera_std_synchronizer #(
    .depth(2)
  ) \U$$0  (
    .clk(clk),
    .din(1'h1),
    .dout(rst_n),
    .reset_n(\$1 )
  );
  assign rst = \$3 ;
endmodule

(* generator = "nMigen" *)
(* top =  1  *)
(* \nmigen.hierarchy  = "top" *)
module top(vga_0__g__io, vga_0__b__io, vga_0__hs__io, vga_0__vs__io, clk50_0__io, vga_0__r__io);
  (* src = "vga_test.py:24" *)
  wire \$1 ;
  (* src = "vga_test.py:25" *)
  wire \$3 ;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/plat.py:104" *)
  wire \U$$0_clk ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:22" *)
  wire \U$$0_hsync ;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/plat.py:104" *)
  wire \U$$0_rst ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:18" *)
  wire \U$$0_tv_out ;
  (* src = "/home/gal3li0/Documents/electronic/vga nmgen/vga_sync.py:21" *)
  wire \U$$0_vsync ;
  (* keep = 1 *)
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/res.py:137" *)
  wire cd_sync_clk50_0__i;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/res.py:129" *)
  input clk50_0__io;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/res.py:129" *)
  output [3:0] vga_0__b__io;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/res.py:137" *)
  reg [3:0] vga_0__b__o;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/res.py:129" *)
  output [3:0] vga_0__g__io;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/res.py:137" *)
  reg [3:0] vga_0__g__o;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/res.py:129" *)
  output vga_0__hs__io;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/res.py:137" *)
  wire vga_0__hs__o;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/res.py:129" *)
  output [3:0] vga_0__r__io;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/res.py:137" *)
  reg [3:0] vga_0__r__o;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/res.py:129" *)
  output vga_0__vs__io;
  (* src = "/home/gal3li0/.local/lib/python3.6/site-packages/nmigen/build/res.py:137" *)
  wire vga_0__vs__o;
  assign \$1  = ~ (* src = "vga_test.py:24" *) \U$$0_vsync ;
  assign \$3  = ~ (* src = "vga_test.py:25" *) \U$$0_hsync ;
  \U$$0  \U$$0  (
    .clk(\U$$0_clk ),
    .hsync(\U$$0_hsync ),
    .rst(\U$$0_rst ),
    .tv_out(\U$$0_tv_out ),
    .vsync(\U$$0_vsync )
  );
  cd_sync cd_sync (
    .clk(\U$$0_clk ),
    .clk50_0__i(cd_sync_clk50_0__i),
    .rst(\U$$0_rst )
  );
  altiobuf_in #(
    .enable_bus_hold("FALSE"),
    .number_of_channels(1),
    .use_differential_mode("FALSE")
  ) clk50_0 (
    .datain(clk50_0__io),
    .dataout(cd_sync_clk50_0__i)
  );
  altiobuf_out #(
    .enable_bus_hold("FALSE"),
    .number_of_channels(4),
    .use_differential_mode("FALSE"),
    .use_oe("FALSE")
  ) vga_0__b (
    .datain(vga_0__b__o),
    .dataout(vga_0__b__io)
  );
  altiobuf_out #(
    .enable_bus_hold("FALSE"),
    .number_of_channels(4),
    .use_differential_mode("FALSE"),
    .use_oe("FALSE")
  ) vga_0__g (
    .datain(vga_0__g__o),
    .dataout(vga_0__g__io)
  );
  altiobuf_out #(
    .enable_bus_hold("FALSE"),
    .number_of_channels(1),
    .use_differential_mode("FALSE"),
    .use_oe("FALSE")
  ) vga_0__hs (
    .datain(vga_0__hs__o),
    .dataout(vga_0__hs__io)
  );
  altiobuf_out #(
    .enable_bus_hold("FALSE"),
    .number_of_channels(4),
    .use_differential_mode("FALSE"),
    .use_oe("FALSE")
  ) vga_0__r (
    .datain(vga_0__r__o),
    .dataout(vga_0__r__io)
  );
  altiobuf_out #(
    .enable_bus_hold("FALSE"),
    .number_of_channels(1),
    .use_differential_mode("FALSE"),
    .use_oe("FALSE")
  ) vga_0__vs (
    .datain(vga_0__vs__o),
    .dataout(vga_0__vs__io)
  );
  always @* begin
    (* src = "vga_test.py:26" *)
    casez (\U$$0_tv_out )
      /* src = "vga_test.py:26" */
      1'h1:
          vga_0__r__o = 4'h7;
      /* src = "vga_test.py:31" */
      default:
          vga_0__r__o = 4'h0;
    endcase
  end
  always @* begin
    (* src = "vga_test.py:26" *)
    casez (\U$$0_tv_out )
      /* src = "vga_test.py:26" */
      1'h1:
          vga_0__g__o = 4'h7;
      /* src = "vga_test.py:31" */
      default:
          vga_0__g__o = 4'h0;
    endcase
  end
  always @* begin
    (* src = "vga_test.py:26" *)
    casez (\U$$0_tv_out )
      /* src = "vga_test.py:26" */
      1'h1:
          vga_0__b__o = 4'h7;
      /* src = "vga_test.py:31" */
      default:
          vga_0__b__o = 4'h0;
    endcase
  end
  assign vga_0__hs__o = \$3 ;
  assign vga_0__vs__o = \$1 ;
endmodule
