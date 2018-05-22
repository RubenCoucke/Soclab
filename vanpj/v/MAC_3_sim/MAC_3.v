// (C) 2001-2016 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module  MAC_3  (
            aclr0,
            clock0,
            dataa_0,
            dataa_1,
            dataa_2,
            datab_0,
            datab_1,
            datab_2,
            result);

            input  aclr0;
            input  clock0;
            input [7:0] dataa_0;
            input [7:0] dataa_1;
            input [7:0] dataa_2;
            input [16:0] datab_0;
            input [16:0] datab_1;
            input [16:0] datab_2;
            output [26:0] result;

            wire [26:0] sub_wire0;
            wire [26:0] result = sub_wire0[26:0];    

            wire [23:0] wire_dataa;   
            assign wire_dataa[7:0] = dataa_0;
            assign wire_dataa[15:8] = dataa_1;
            assign wire_dataa[23:16] = dataa_2;

            wire [50:0] wire_datab;   
            assign wire_datab[16:0] = datab_0;
            assign wire_datab[33:17] = datab_1;
            assign wire_datab[50:34] = datab_2;

            altera_mult_add        altera_mult_add_component (
                                        .aclr0 (aclr0),
                                        .clock0 (clock0),
                                        .dataa (wire_dataa),
                                        .datab (wire_datab),
                                        .result (sub_wire0),
                                        .accum_sload (1'b0),
                                        .aclr1 (1'b0),
                                        .aclr2 (1'b0),
                                        .aclr3 (1'b0),
                                        .addnsub1 (1'b1),
                                        .addnsub1_round (1'b0),
                                        .addnsub3 (1'b1),
                                        .addnsub3_round (1'b0),
                                        .chainin (1'b0),
                                        .chainout_round (1'b0),
                                        .chainout_sat_overflow (),
                                        .chainout_saturate (1'b0),
                                        .clock1 (1'b1),
                                        .clock2 (1'b1),
                                        .clock3 (1'b1),
                                        .coefsel0 ({3{1'b0}}),
                                        .coefsel1 ({3{1'b0}}),
                                        .coefsel2 ({3{1'b0}}),
                                        .coefsel3 ({3{1'b0}}),
                                        .datac ({48{1'b0}}),
                                        .ena0 (1'b1),
                                        .ena1 (1'b1),
                                        .ena2 (1'b1),
                                        .ena3 (1'b1),
                                        .mult01_round (1'b0),
                                        .mult01_saturation (1'b0),
                                        .mult0_is_saturated (),
                                        .mult1_is_saturated (),
                                        .mult23_round (1'b0),
                                        .mult23_saturation (1'b0),
                                        .mult2_is_saturated (),
                                        .mult3_is_saturated (),
                                        .negate (1'b0),
                                        .output_round (1'b0),
                                        .output_saturate (1'b0),
                                        .overflow (),
                                        .rotate (1'b0),
                                        .scanina ({8{1'b0}}),
                                        .scaninb ({17{1'b0}}),
                                        .scanouta (),
                                        .scanoutb (),
                                        .sclr0 (1'b0),
                                        .sclr1 (1'b0),
                                        .sclr2 (1'b0),
                                        .sclr3 (1'b0),
                                        .shift_right (1'b0),
                                        .signa (1'b0),
                                        .signb (1'b0),
                                        .sload_accum (1'b0),
                                        .sourcea ({3{1'b0}}),
                                        .sourceb ({3{1'b0}}),
                                        .zero_chainout (1'b0),
                                        .zero_loopback (1'b0));
            defparam
                    altera_mult_add_component.number_of_multipliers = 3,
                    altera_mult_add_component.width_a = 8,
                    altera_mult_add_component.width_b = 17,
                    altera_mult_add_component.width_result = 27,
                    altera_mult_add_component.output_register = "CLOCK0",
                    altera_mult_add_component.output_aclr = "ACLR0",
                    altera_mult_add_component.output_sclr = "NONE",
                    altera_mult_add_component.multiplier1_direction = "ADD",
                    altera_mult_add_component.port_addnsub1 = "PORT_UNUSED",
                    altera_mult_add_component.addnsub_multiplier_register1 = "UNREGISTERED",
                    altera_mult_add_component.addnsub_multiplier_aclr1 = "NONE",
                    altera_mult_add_component.addnsub_multiplier_sclr1 = "NONE",
                    altera_mult_add_component.multiplier3_direction = "ADD",
                    altera_mult_add_component.port_addnsub3 = "PORT_UNUSED",
                    altera_mult_add_component.addnsub_multiplier_register3 = "UNREGISTERED",
                    altera_mult_add_component.addnsub_multiplier_aclr3 = "NONE",
                    altera_mult_add_component.addnsub_multiplier_sclr3 = "NONE",
                    altera_mult_add_component.use_subnadd = "NO",
                    altera_mult_add_component.representation_a = "UNSIGNED",
                    altera_mult_add_component.port_signa = "PORT_UNUSED",
                    altera_mult_add_component.signed_register_a = "UNREGISTERED",
                    altera_mult_add_component.signed_aclr_a = "NONE",
                    altera_mult_add_component.signed_sclr_a = "NONE",
                    altera_mult_add_component.port_signb = "PORT_UNUSED",
                    altera_mult_add_component.representation_b = "SIGNED",
                    altera_mult_add_component.signed_register_b = "UNREGISTERED",
                    altera_mult_add_component.signed_aclr_b = "NONE",
                    altera_mult_add_component.signed_sclr_b = "NONE",
                    altera_mult_add_component.input_register_a0 = "CLOCK0",
                    altera_mult_add_component.input_register_a1 = "CLOCK0",
                    altera_mult_add_component.input_register_a2 = "CLOCK0",
                    altera_mult_add_component.input_register_a3 = "UNREGISTERED",
                    altera_mult_add_component.input_aclr_a0 = "ACLR0",
                    altera_mult_add_component.input_aclr_a1 = "ACLR0",
                    altera_mult_add_component.input_aclr_a2 = "ACLR0",
                    altera_mult_add_component.input_aclr_a3 = "NONE",
                    altera_mult_add_component.input_sclr_a0 = "NONE",
                    altera_mult_add_component.input_sclr_a1 = "NONE",
                    altera_mult_add_component.input_sclr_a2 = "NONE",
                    altera_mult_add_component.input_sclr_a3 = "NONE",
                    altera_mult_add_component.input_register_b0 = "CLOCK0",
                    altera_mult_add_component.input_register_b1 = "CLOCK0",
                    altera_mult_add_component.input_register_b2 = "CLOCK0",
                    altera_mult_add_component.input_register_b3 = "UNREGISTERED",
                    altera_mult_add_component.input_aclr_b0 = "ACLR0",
                    altera_mult_add_component.input_aclr_b1 = "ACLR0",
                    altera_mult_add_component.input_aclr_b2 = "ACLR0",
                    altera_mult_add_component.input_aclr_b3 = "NONE",
                    altera_mult_add_component.input_sclr_b0 = "NONE",
                    altera_mult_add_component.input_sclr_b1 = "NONE",
                    altera_mult_add_component.input_sclr_b2 = "NONE",
                    altera_mult_add_component.input_sclr_b3 = "NONE",
                    altera_mult_add_component.scanouta_register = "UNREGISTERED",
                    altera_mult_add_component.scanouta_aclr = "NONE",
                    altera_mult_add_component.scanouta_sclr = "NONE",
                    altera_mult_add_component.input_source_a0 = "DATAA",
                    altera_mult_add_component.input_source_a1 = "DATAA",
                    altera_mult_add_component.input_source_a2 = "DATAA",
                    altera_mult_add_component.input_source_a3 = "DATAA",
                    altera_mult_add_component.input_source_b0 = "DATAB",
                    altera_mult_add_component.input_source_b1 = "DATAB",
                    altera_mult_add_component.input_source_b2 = "DATAB",
                    altera_mult_add_component.input_source_b3 = "DATAB",
                    altera_mult_add_component.multiplier_register0 = "UNREGISTERED",
                    altera_mult_add_component.multiplier_register1 = "UNREGISTERED",
                    altera_mult_add_component.multiplier_register2 = "UNREGISTERED",
                    altera_mult_add_component.multiplier_register3 = "UNREGISTERED",
                    altera_mult_add_component.multiplier_aclr0 = "NONE",
                    altera_mult_add_component.multiplier_aclr1 = "NONE",
                    altera_mult_add_component.multiplier_aclr2 = "NONE",
                    altera_mult_add_component.multiplier_aclr3 = "NONE",
                    altera_mult_add_component.multiplier_sclr0 = "NONE",
                    altera_mult_add_component.multiplier_sclr1 = "NONE",
                    altera_mult_add_component.multiplier_sclr2 = "NONE",
                    altera_mult_add_component.multiplier_sclr3 = "NONE",
                    altera_mult_add_component.preadder_mode = "SIMPLE",
                    altera_mult_add_component.preadder_direction_0 = "ADD",
                    altera_mult_add_component.preadder_direction_1 = "ADD",
                    altera_mult_add_component.preadder_direction_2 = "ADD",
                    altera_mult_add_component.preadder_direction_3 = "ADD",
                    altera_mult_add_component.width_c = 16,
                    altera_mult_add_component.input_register_c0 = "UNREGISTERED",
                    altera_mult_add_component.input_register_c1 = "UNREGISTERED",
                    altera_mult_add_component.input_register_c2 = "UNREGISTERED",
                    altera_mult_add_component.input_register_c3 = "UNREGISTERED",
                    altera_mult_add_component.input_aclr_c0 = "NONE",
                    altera_mult_add_component.input_aclr_c1 = "NONE",
                    altera_mult_add_component.input_aclr_c2 = "NONE",
                    altera_mult_add_component.input_aclr_c3 = "NONE",
                    altera_mult_add_component.input_sclr_c0 = "NONE",
                    altera_mult_add_component.input_sclr_c1 = "NONE",
                    altera_mult_add_component.input_sclr_c2 = "NONE",
                    altera_mult_add_component.input_sclr_c3 = "NONE",
                    altera_mult_add_component.width_coef = 18,
                    altera_mult_add_component.coefsel0_register = "UNREGISTERED",
                    altera_mult_add_component.coefsel1_register = "UNREGISTERED",
                    altera_mult_add_component.coefsel2_register = "UNREGISTERED",
                    altera_mult_add_component.coefsel3_register = "UNREGISTERED",
                    altera_mult_add_component.coefsel0_aclr = "NONE",
                    altera_mult_add_component.coefsel1_aclr = "NONE",
                    altera_mult_add_component.coefsel2_aclr = "NONE",
                    altera_mult_add_component.coefsel3_aclr = "NONE",
                    altera_mult_add_component.coefsel0_sclr = "NONE",
                    altera_mult_add_component.coefsel1_sclr = "NONE",
                    altera_mult_add_component.coefsel2_sclr = "NONE",
                    altera_mult_add_component.coefsel3_sclr = "NONE",
                    altera_mult_add_component.coef0_0 = 0,
                    altera_mult_add_component.coef0_1 = 0,
                    altera_mult_add_component.coef0_2 = 0,
                    altera_mult_add_component.coef0_3 = 0,
                    altera_mult_add_component.coef0_4 = 0,
                    altera_mult_add_component.coef0_5 = 0,
                    altera_mult_add_component.coef0_6 = 0,
                    altera_mult_add_component.coef0_7 = 0,
                    altera_mult_add_component.coef1_0 = 0,
                    altera_mult_add_component.coef1_1 = 0,
                    altera_mult_add_component.coef1_2 = 0,
                    altera_mult_add_component.coef1_3 = 0,
                    altera_mult_add_component.coef1_4 = 0,
                    altera_mult_add_component.coef1_5 = 0,
                    altera_mult_add_component.coef1_6 = 0,
                    altera_mult_add_component.coef1_7 = 0,
                    altera_mult_add_component.coef2_0 = 0,
                    altera_mult_add_component.coef2_1 = 0,
                    altera_mult_add_component.coef2_2 = 0,
                    altera_mult_add_component.coef2_3 = 0,
                    altera_mult_add_component.coef2_4 = 0,
                    altera_mult_add_component.coef2_5 = 0,
                    altera_mult_add_component.coef2_6 = 0,
                    altera_mult_add_component.coef2_7 = 0,
                    altera_mult_add_component.coef3_0 = 0,
                    altera_mult_add_component.coef3_1 = 0,
                    altera_mult_add_component.coef3_2 = 0,
                    altera_mult_add_component.coef3_3 = 0,
                    altera_mult_add_component.coef3_4 = 0,
                    altera_mult_add_component.coef3_5 = 0,
                    altera_mult_add_component.coef3_6 = 0,
                    altera_mult_add_component.coef3_7 = 0,
                    altera_mult_add_component.accumulator = "NO",
                    altera_mult_add_component.accum_direction = "ADD",
                    altera_mult_add_component.use_sload_accum_port = "NO",
                    altera_mult_add_component.loadconst_value = 64,
                    altera_mult_add_component.accum_sload_register = "UNREGISTERED",
                    altera_mult_add_component.accum_sload_aclr = "NONE",
                    altera_mult_add_component.accum_sload_sclr = "NONE",
                    altera_mult_add_component.double_accum = "NO",
                    altera_mult_add_component.width_chainin = 1,
                    altera_mult_add_component.chainout_adder = "NO",
                    altera_mult_add_component.chainout_adder_direction = "ADD",
                    altera_mult_add_component.port_negate = "PORT_UNUSED",
                    altera_mult_add_component.negate_register = "UNREGISTERED",
                    altera_mult_add_component.negate_aclr = "NONE",
                    altera_mult_add_component.negate_sclr = "NONE",
                    altera_mult_add_component.systolic_delay1 = "UNREGISTERED",
                    altera_mult_add_component.systolic_aclr1 = "NONE",
                    altera_mult_add_component.systolic_sclr1 = "NONE",
                    altera_mult_add_component.systolic_delay3 = "UNREGISTERED",
                    altera_mult_add_component.systolic_aclr3 = "NONE",
                    altera_mult_add_component.systolic_sclr3 = "NONE",
                    altera_mult_add_component.latency = 2,
                    altera_mult_add_component.input_a0_latency_clock = "CLOCK0",
                    altera_mult_add_component.input_a1_latency_clock = "CLOCK0",
                    altera_mult_add_component.input_a2_latency_clock = "CLOCK0",
                    altera_mult_add_component.input_a3_latency_clock = "UNREGISTERED",
                    altera_mult_add_component.input_a0_latency_aclr = "ACLR0",
                    altera_mult_add_component.input_a1_latency_aclr = "ACLR0",
                    altera_mult_add_component.input_a2_latency_aclr = "ACLR0",
                    altera_mult_add_component.input_a3_latency_aclr = "NONE",
                    altera_mult_add_component.input_a0_latency_sclr = "NONE",
                    altera_mult_add_component.input_a1_latency_sclr = "NONE",
                    altera_mult_add_component.input_a2_latency_sclr = "NONE",
                    altera_mult_add_component.input_a3_latency_sclr = "NONE",
                    altera_mult_add_component.input_b0_latency_clock = "CLOCK0",
                    altera_mult_add_component.input_b1_latency_clock = "CLOCK0",
                    altera_mult_add_component.input_b2_latency_clock = "CLOCK0",
                    altera_mult_add_component.input_b3_latency_clock = "UNREGISTERED",
                    altera_mult_add_component.input_b0_latency_aclr = "ACLR0",
                    altera_mult_add_component.input_b1_latency_aclr = "ACLR0",
                    altera_mult_add_component.input_b2_latency_aclr = "ACLR0",
                    altera_mult_add_component.input_b3_latency_aclr = "NONE",
                    altera_mult_add_component.input_b0_latency_sclr = "NONE",
                    altera_mult_add_component.input_b1_latency_sclr = "NONE",
                    altera_mult_add_component.input_b2_latency_sclr = "NONE",
                    altera_mult_add_component.input_b3_latency_sclr = "NONE",
                    altera_mult_add_component.input_c0_latency_clock = "UNREGISTERED",
                    altera_mult_add_component.input_c1_latency_clock = "UNREGISTERED",
                    altera_mult_add_component.input_c2_latency_clock = "UNREGISTERED",
                    altera_mult_add_component.input_c3_latency_clock = "UNREGISTERED",
                    altera_mult_add_component.input_c0_latency_aclr = "NONE",
                    altera_mult_add_component.input_c1_latency_aclr = "NONE",
                    altera_mult_add_component.input_c2_latency_aclr = "NONE",
                    altera_mult_add_component.input_c3_latency_aclr = "NONE",
                    altera_mult_add_component.input_c0_latency_sclr = "NONE",
                    altera_mult_add_component.input_c1_latency_sclr = "NONE",
                    altera_mult_add_component.input_c2_latency_sclr = "NONE",
                    altera_mult_add_component.input_c3_latency_sclr = "NONE",
                    altera_mult_add_component.coefsel0_latency_clock = "UNREGISTERED",
                    altera_mult_add_component.coefsel1_latency_clock = "UNREGISTERED",
                    altera_mult_add_component.coefsel2_latency_clock = "UNREGISTERED",
                    altera_mult_add_component.coefsel3_latency_clock = "UNREGISTERED",
                    altera_mult_add_component.coefsel0_latency_aclr = "NONE",
                    altera_mult_add_component.coefsel1_latency_aclr = "NONE",
                    altera_mult_add_component.coefsel2_latency_aclr = "NONE",
                    altera_mult_add_component.coefsel3_latency_aclr = "NONE",
                    altera_mult_add_component.coefsel0_latency_sclr = "NONE",
                    altera_mult_add_component.coefsel1_latency_sclr = "NONE",
                    altera_mult_add_component.coefsel2_latency_sclr = "NONE",
                    altera_mult_add_component.coefsel3_latency_sclr = "NONE",
                    altera_mult_add_component.signed_latency_clock_a = "UNREGISTERED",
                    altera_mult_add_component.signed_latency_aclr_a = "NONE",
                    altera_mult_add_component.signed_latency_sclr_a = "NONE",
                    altera_mult_add_component.signed_latency_clock_b = "UNREGISTERED",
                    altera_mult_add_component.signed_latency_aclr_b = "NONE",
                    altera_mult_add_component.signed_latency_sclr_b = "NONE",
                    altera_mult_add_component.addnsub_multiplier_latency_clock1 = "UNREGISTERED",
                    altera_mult_add_component.addnsub_multiplier_latency_aclr1 = "NONE",
                    altera_mult_add_component.addnsub_multiplier_latency_sclr1 = "NONE",
                    altera_mult_add_component.addnsub_multiplier_latency_clock3 = "UNREGISTERED",
                    altera_mult_add_component.addnsub_multiplier_latency_aclr3 = "NONE",
                    altera_mult_add_component.addnsub_multiplier_latency_sclr3 = "NONE",
                    altera_mult_add_component.accum_sload_latency_clock = "UNREGISTERED",
                    altera_mult_add_component.accum_sload_latency_aclr = "NONE",
                    altera_mult_add_component.accum_sload_latency_sclr = "NONE",
                    altera_mult_add_component.negate_latency_clock = "UNREGISTERED",
                    altera_mult_add_component.negate_latency_aclr = "NONE",
                    altera_mult_add_component.negate_latency_sclr = "NONE",
                    altera_mult_add_component.selected_device_family = "Cyclone V";


endmodule


