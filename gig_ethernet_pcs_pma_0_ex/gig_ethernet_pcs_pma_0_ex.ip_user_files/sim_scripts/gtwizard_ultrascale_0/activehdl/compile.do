vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/gtwizard_ultrascale_v1_7_13
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap gtwizard_ultrascale_v1_7_13 activehdl/gtwizard_ultrascale_v1_7_13
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work gtwizard_ultrascale_v1_7_13  -v2k5 \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_bit_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gte4_drp_arb.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_reset.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_inv_sync.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gtwizard_ultrascale_0/sim/gtwizard_ultrascale_v1_7_gthe4_channel.v" \
"../../../../gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gtwizard_ultrascale_0/sim/gtwizard_ultrascale_0_gthe4_channel_wrapper.v" \
"../../../../gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gtwizard_ultrascale_0/sim/gtwizard_ultrascale_v1_7_gthe4_common.v" \
"../../../../gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gtwizard_ultrascale_0/sim/gtwizard_ultrascale_0_gthe4_common_wrapper.v" \
"../../../../gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gtwizard_ultrascale_0/sim/gtwizard_ultrascale_0_gtwizard_gthe4.v" \
"../../../../gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gtwizard_ultrascale_0/sim/gtwizard_ultrascale_0_gtwizard_top.v" \
"../../../../gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gtwizard_ultrascale_0/sim/gtwizard_ultrascale_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

