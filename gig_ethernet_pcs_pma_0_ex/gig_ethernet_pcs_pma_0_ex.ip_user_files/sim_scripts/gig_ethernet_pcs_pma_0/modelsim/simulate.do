onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L gtwizard_ultrascale_v1_7_13 -L xil_defaultlib -L gig_ethernet_pcs_pma_v16_2_8 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.gig_ethernet_pcs_pma_0 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {gig_ethernet_pcs_pma_0.udo}

run -all

quit -force
