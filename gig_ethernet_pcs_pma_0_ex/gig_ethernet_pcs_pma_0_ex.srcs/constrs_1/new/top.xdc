# SW13.1
set_property PACKAGE_PIN AK13     [get_ports "reset"] ;# Bank  44 VCCO - VCC3V3   - IO_L1P_AD11P_44
set_property IOSTANDARD  LVCMOS33 [get_ports "reset"] ;# Bank  44 VCCO - VCC3V3   - IO_L1P_AD11P_44

set_property PACKAGE_PIN AL7      [get_ports "io_refclk_N"] ;# Bank  64 VCCO - VCC1V2   - IO_L12N_T1U_N11_GC_64
set_property IOSTANDARD  DIFF_SSTL12 [get_ports "io_refclk_N"] ;# Bank  64 VCCO - VCC1V2   - IO_L12N_T1U_N11_GC_64
set_property PACKAGE_PIN AL8      [get_ports "io_refclk_P"] ;# Bank  64 VCCO - VCC1V2   - IO_L12P_T1U_N10_GC_64
set_property IOSTANDARD  DIFF_SSTL12 [get_ports "io_refclk_P"] ;# Bank  64 VCCO - VCC1V2   - IO_L12P_T1U_N10_GC_64

set_property PACKAGE_PIN J27      [get_ports "clk_test_125M_p"] ;# Bank 128 - MGTHTXP3_128
set_property IOSTANDARD  SSTL12 [get_ports "clk_test_125M_p"] ;# Bank  64 VCCO - VCC1V2   - IO_L12P_T1U_N10_GC_64
set_property PACKAGE_PIN J28      [get_ports "clk_test_125M_n"] ;# Bank 128 - MGTHTXN3_128
set_property IOSTANDARD  SSTL12 [get_ports "clk_test_125M_n"] ;# Bank  64 VCCO - VCC1V2   - IO_L12P_T1U_N10_GC_64