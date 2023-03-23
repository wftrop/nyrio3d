G21 ; set units to millimeters
M82 ; use absolute distances for extrusion
G90 ; use absolute coordinates
M117 Homing X/Y ...
G28 X0 Y0
M117 Homing Z ...
G28 Z0
M117 Start heating bed ...
M190 S55 ; wait for bed temperature to be reached
M117 Start heating ...
M104 S210 ; set temperature
M117 Heating ...
M109 S210 ; wait for temperature to be reached
M117 Purge line ...
G92 E0
G1 Z1.0 F3000 ; move z up little to prevent scratching of surface
G1 X20 Y10 Z0.3 F5000.0 ; move to start-line position
G1 X150 Y10 Z0.3 F1500.0 E15 ; draw 1st line
G1 X150 Y10 Z0.3 F5000.0 ; move to side a little
G1 X20 Y10.3 Z0.3 F1500.0 E30 ; draw 2nd line
G92 E0 ; reset extruder
; done purging extruder
M117 Printing ...

; <IceSL Dec 20 2021 17:10:40>
; add_brim : 	True
; add_raft : 	False
; auto_spiralize : 	True
; bed_part_offset_x_mm : 	0
; bed_part_offset_y_mm : 	0
; bed_size_x_mm : 	220
; bed_size_y_mm : 	220
; bed_size_z_mm : 	250
; bed_temp_degree_c : 	55
; brim_distance_to_print_mm : 	1
; brim_num_contours : 	4
; button_cover_density_field_0 : 	
; button_distance_density_field_0 : 	
; button_optimize_z_layer_height_mm : 	
; button_overhangs : 	
; button_spiralize : 	
; cavity_brush : 	0
; cavity_num_iterations : 	5
; cavity_tearing_method : 	Cross
; chamber_temp_degree_c : 	0
; continuous_double_height_0 : 	False
; cover_density_crust_mm_0 : 	1
; cover_density_max_density_0 : 	90
; cover_filter_diameter_mm_0 : 	0
; cover_flow_multiplier_0 : 	1
; cover_print_speed_mm_per_sec : 	35
; cover_thickness_bottom_mm_0 : 	1.2
; cover_thickness_mm_0 : 	0.84
; cover_thickness_top_mm_0 : 	1.2
; cycle_gap_mm : 	-1
; distance_density_crust_mm_0 : 	10
; distance_density_max_density_0 : 	90
; enable_active_temperature_control : 	False
; enable_curved_covers_0 : 	False
; enable_different_top_bottom_covers_0 : 	False
; enable_fan : 	True
; enable_fan_first_layer : 	False
; enable_fit_single_path : 	True
; enable_ironing_0 : 	False
; enable_min_layer_time : 	False
; enable_z_lift : 	False
; enable_zigzag_cover_strict_ordering_0 : 	False
; extruder_0 : 	0
; extruder_count : 	1
; extruder_degrees_per_sec_0 : 	2
; extruder_mix_count_0 : 	1
; extruder_mix_ratios_0 : 	(1)
; extruder_purge_volume_mm3 : 	24
; extruder_swap_retract_length_mm : 	6
; extruder_swap_retract_speed_mm_per_sec : 	20
; extruder_swap_zlift_mm : 	1
; extruder_temp_degree_c_0 : 	210
; fan_speed_percent : 	100
; fan_speed_percent_on_bridges : 	100
; filament_diameter_mm_0 : 	1.75
; filament_priming_mm_0 : 	7
; fill_tiny_gaps_0 : 	True
; first_layer_print_speed_mm_per_sec : 	20
; first_layer_saved : 	0
; flow_dampener_e_length_mm : 	3
; flow_dampener_path_length_end_mm : 	1
; flow_dampener_path_length_start_mm : 	1
; flow_multiplier_0 : 	1
; force_auto_spiralize : 	False
; force_backtrack_0 : 	True
; gen_cavity : 	False
; gen_shield : 	False
; gen_supports : 	False
; gen_tower : 	False
; idle_extruder_temp_degree_c_0 : 	100
; infill_angle_0 : 	0
; infill_extruder_0 : 	0
; infill_percentage_0 : 	20
; infill_type_0 : 	Default
; infill_type_fallback_0 : 	Default
; ironing_flow_0 : 	0.1
; ironing_line_spacing_mm_0 : 	0.1
; ironing_nb_passes_0 : 	2
; ironing_only_top_0 : 	True
; ironing_speed_mm_per_sec_0 : 	20
; ironing_thickness_mm_0 : 	0.2
; ironing_type_0 : 	Zigzag
; ironing_z_offset_mm_0 : 	0
; is_support_0 : 	False
; kgon_min_angle_0 : 	45
; kgon_norm_alpha_0 : 	0.5
; kgon_x_shrink_0 : 	1
; labeling_mm_per_pixels_0 : 	0.01
; labeling_x_offset_mm_0 : 	0
; labeling_y_offset_mm_0 : 	0
; material_mixing_enable_optimizer : 	True
; max_backtrack_len_mm_0 : 	10
; micro_mixing_field : 	
; min_layer_time_method : 	Tower
; min_layer_time_sec : 	3
; mixing_ratio_min_threshold : 	0.07
; mixing_shield_speed_multiplier : 	1.5
; mixing_wipe_length_mm : 	0
; nozzle_diameter_mm_0 : 	0.4
; num_shells_0 : 	0
; number_layers_saved : 	0
; output_machine_code : 	Default
; overhang_points : 	
; path_priority_bridge : 	1
; path_priority_infill : 	2
; path_priority_perimeter : 	3
; path_priority_shell : 	4
; path_priority_use_default : 	True
; path_width_speed_adjustment_exponent : 	3
; perimeter_print_speed_mm_per_sec : 	35
; pfoam_min_percentage_0 : 	20
; phasor_infill_iso_0 : 	50
; phasor_infill_phi_0 : 	0
; phasor_infill_theta_0 : 	0
; phasor_seed_0 : 	1
; preserve_contour_orientations : 	True
; preserve_zigzag_strict_ordering_0 : 	False
; priming_mm_per_sec_0 : 	30
; print_perimeter_0 : 	True
; print_speed_microlayers_mm_per_sec : 	200
; print_speed_mm_per_sec : 	60
; printer : 	Anycubic_Mega_Zero
; process_thin_features : 	False
; raft_extruder : 	0
; raft_layer_height_mm : 	0.3
; raft_layers : 	3
; raft_lines_spacing_mm : 	1
; raft_offset_mm : 	0.2
; raft_speed_multiplier : 	1
; raft_top_layer_height_mm : 	0.1
; raft_top_layers : 	2
; raft_top_lines_spacing_mm : 	0.8
; raft_xy_margin_mm : 	5
; retract_inwards_perimeter_end : 	True
; retract_mm_per_sec_0 : 	30
; retract_perimeter_safety_distance_mm : 	1.2
; save_layer_subset : 	False
; seam_location_field : 	
; shell_flow_multiplier_0 : 	1
; shield_brim_num_contours : 	3
; shield_distance_to_part_mm : 	2
; shield_num_contours : 	1
; slicing_algorithm : 	Auto select
; speed_multiplier_0 : 	1
; support_algorithm : 	Wings
; support_anchor_diameter : 	7.2
; support_extruder : 	0
; support_flow_multiplier : 	1
; support_infills : 	False
; support_interdiction_field : 	
; support_max_bridge_len_mm : 	5
; support_max_connector_height : 	8
; support_min_connector_height : 	2
; support_overhang_overlap_fraction : 	0.5
; support_pillar_cross_length : 	2.5
; support_print_speed_mm_per_sec : 	20
; support_spacing_min_mm : 	2
; support_wing_angle : 	25
; support_wing_min_width : 	4
; support_wing_rib_width : 	2
; thickening_ratio : 	1.25
; tile_size_mm : 	30
; tower_at_location : 	False
; tower_brim_num_contours : 	12
; tower_location_x_mm : 	0
; tower_location_y_mm : 	0
; tower_side_x_mm : 	10
; tower_side_y_mm : 	15
; travel_avoid_top_covers : 	False
; travel_max_length_without_retract : 	20
; travel_speed_mm_per_sec : 	120
; travel_straight : 	False
; use_different_thickness_first_layer : 	False
; vwc_bead_max_width_mm_0 : 	0.7
; vwc_bead_min_width_mm_0 : 	0.3
; vwc_num_beads_0 : 	4
; vwc_overtakes_icesl_0 : 	False
; xy_max_deviation_mm : 	0.005
; xy_mm_per_int : 	0.001
; xy_mm_per_pixels : 	0.05
; z_layer_height_first_layer_mm : 	0.3
; z_layer_height_mm : 	0.28
; z_lift_mm : 	0.6
; zigzag_cover_strict_ordering_angle_0 : 	0
M106 S0
; <layer 0>
G1 Z0.280
; retract
G1 F1800 E-7.000000
G0 F7200 X109.200 Y106.600 Z0.280000
; prime
G1 F1800 E0.000000
G1 F1200 X108.776 Y106.639 E0.019826
G1 X108.623 Y106.666 E0.027061
G1 X108.314 Y106.757 E0.042060
G1 X107.869 Y106.971 E0.065053
G1 X107.808 Y107.008 E0.068375
G1 X107.510 Y107.228 E0.085622
G1 X107.459 Y107.274 E0.088821
G1 X107.160 Y107.594 E0.109213
G1 X106.951 Y107.901 E0.126507
G1 X106.790 Y108.230 E0.143563
G1 X106.664 Y108.645 E0.163757
G1 X106.606 Y109.075 E0.183961
G1 X106.600 Y110.799 E0.264239
G1 X106.639 Y111.224 E0.284112
G1 X106.666 Y111.377 E0.291346
G1 X106.757 Y111.686 E0.306345
G1 X106.971 Y112.131 E0.329338
G1 X107.008 Y112.192 E0.332660
G1 X107.228 Y112.490 E0.349908
G1 X107.274 Y112.541 E0.353106
G1 X107.594 Y112.840 E0.373499
G1 X107.901 Y113.049 E0.390792
G1 X108.230 Y113.210 E0.407848
G1 X108.645 Y113.336 E0.428043
G1 X109.075 Y113.394 E0.448247
G1 X110.799 Y113.400 E0.528524
G1 X111.224 Y113.361 E0.548397
G1 X111.377 Y113.334 E0.555631
G1 X111.686 Y113.243 E0.570631
G1 X112.131 Y113.029 E0.593623
G1 X112.192 Y112.992 E0.596945
G1 X112.490 Y112.772 E0.614193
G1 X112.541 Y112.726 E0.617391
G1 X112.840 Y112.406 E0.637784
G1 X113.049 Y112.099 E0.655077
G1 X113.210 Y111.770 E0.672133
G1 X113.336 Y111.355 E0.692328
G1 X113.394 Y110.925 E0.712532
G1 X113.400 Y109.201 E0.792809
G1 X113.361 Y108.776 E0.812682
G1 X113.334 Y108.623 E0.819916
G1 X113.183 Y108.171 E0.842107
G1 X112.977 Y107.785 E0.862480
G1 X112.757 Y107.491 E0.879578
G1 X112.391 Y107.149 E0.902903
G1 X112.023 Y106.909 E0.923361
G1 X111.682 Y106.758 E0.940727
G1 X111.264 Y106.645 E0.960889
G1 X110.800 Y106.600 E0.982596
G1 X109.300 Y106.600 E1.052443
G0 F7200 X109.200 Y106.600
G0 X108.431 Y107.140
G1 F1200 X108.046 Y107.330 E1.072434
G1 X107.748 Y107.550 E1.089682
G1 X107.491 Y107.819 E1.107006
G1 X107.282 Y108.126 E1.124299
G1 X107.152 Y108.401 E1.138463
G1 X107.048 Y108.757 E1.155733
G1 X107.003 Y109.124 E1.172950
G1 X107.000 Y110.800 E1.250992
G1 X107.037 Y111.186 E1.269048
G1 X107.059 Y111.304 E1.274637
G1 X107.140 Y111.569 E1.287540
G1 X107.330 Y111.954 E1.307532
G1 X107.550 Y112.252 E1.324779
G1 X107.819 Y112.509 E1.342103
G1 X108.126 Y112.718 E1.359396
G1 X108.401 Y112.848 E1.373560
G1 X108.757 Y112.952 E1.390830
G1 X109.124 Y112.997 E1.408047
G1 X110.800 Y113.000 E1.486089
G1 X111.186 Y112.963 E1.504145
G1 X111.304 Y112.941 E1.509734
G1 X111.569 Y112.860 E1.522637
G1 X111.954 Y112.670 E1.542629
G1 X112.252 Y112.450 E1.559876
G1 X112.509 Y112.181 E1.577200
G1 X112.718 Y111.874 E1.594493
G1 X112.848 Y111.599 E1.608657
G1 X112.952 Y111.243 E1.625927
G1 X112.997 Y110.876 E1.643144
G1 X113.000 Y109.200 E1.721186
G1 X112.963 Y108.814 E1.739242
G1 X112.941 Y108.696 E1.744831
G1 X112.805 Y108.301 E1.764284
G1 X112.627 Y107.978 E1.781457
G1 X112.440 Y107.736 E1.795697
G1 X112.169 Y107.481 E1.813024
G1 X111.861 Y107.275 E1.830278
G1 X111.520 Y107.124 E1.847644
G1 X111.164 Y107.032 E1.864765
G1 X110.800 Y107.000 E1.881780
G1 X109.200 Y107.000 E1.956283
G1 X108.814 Y107.037 E1.974339
G1 X108.696 Y107.059 E1.979928
G1 X108.497 Y107.120 E1.989605
G0 F7200 X108.431 Y107.140
G0 X107.818 Y108.049
G1 F1200 X107.644 Y108.297 E2.003712
G1 X107.514 Y108.572 E2.017876
G1 X107.433 Y108.864 E2.031986
G1 X107.401 Y109.166 E2.046127
G1 X107.400 Y110.800 E2.122213
G1 X107.435 Y111.146 E2.138407
G1 X107.451 Y111.223 E2.142069
G1 X107.522 Y111.449 E2.153099
G1 X107.655 Y111.721 E2.167198
G1 X107.831 Y111.967 E2.181282
G1 X108.049 Y112.182 E2.195539
G1 X108.297 Y112.356 E2.209646
G1 X108.572 Y112.486 E2.223810
G1 X108.864 Y112.567 E2.237920
G1 X109.166 Y112.599 E2.252061
G1 X110.800 Y112.600 E2.328148
G1 X111.146 Y112.565 E2.344341
G1 X111.223 Y112.549 E2.348003
G1 X111.449 Y112.478 E2.359033
G1 X111.721 Y112.345 E2.373132
G1 X111.967 Y112.169 E2.387217
G1 X112.182 Y111.951 E2.401474
G1 X112.356 Y111.703 E2.415580
G1 X112.486 Y111.428 E2.429744
G1 X112.567 Y111.136 E2.443854
G1 X112.599 Y110.834 E2.457996
G1 X112.600 Y109.200 E2.534082
G1 X112.565 Y108.854 E2.550275
G1 X112.549 Y108.777 E2.553937
G1 X112.452 Y108.489 E2.568088
G1 X112.310 Y108.223 E2.582128
G1 X112.123 Y107.981 E2.596369
G1 X111.899 Y107.776 E2.610508
G1 X111.644 Y107.611 E2.624651
G1 X111.364 Y107.492 E2.638818
G1 X111.070 Y107.421 E2.652901
G1 X110.800 Y107.400 E2.665511
G1 X109.200 Y107.400 E2.740014
G1 X108.854 Y107.435 E2.756207
G1 X108.777 Y107.451 E2.759869
G1 X108.551 Y107.522 E2.770900
G1 X108.279 Y107.655 E2.784998
G1 X108.033 Y107.831 E2.799083
G1 X107.872 Y107.994 E2.809776
G0 F7200 X107.818 Y108.049
G0 X107.800 Y109.200
G1 F1200 X107.800 Y110.800 E2.884279
G1 X107.833 Y111.103 E2.898471
G1 X107.904 Y111.329 E2.909502
G1 X108.011 Y111.539 E2.920476
G1 X108.152 Y111.729 E2.931493
G1 X108.324 Y111.892 E2.942528
G1 X108.520 Y112.024 E2.953531
G1 X108.736 Y112.121 E2.964557
G1 X108.964 Y112.180 E2.975523
G1 X109.200 Y112.200 E2.986551
G1 X110.800 Y112.200 E3.061054
G1 X111.103 Y112.167 E3.075246
G1 X111.329 Y112.096 E3.086277
G1 X111.539 Y111.989 E3.097252
G1 X111.729 Y111.848 E3.108269
G1 X111.892 Y111.676 E3.119303
G1 X112.024 Y111.480 E3.130306
G1 X112.121 Y111.264 E3.141332
G1 X112.180 Y111.036 E3.152298
G1 X112.200 Y110.800 E3.163327
G1 X112.200 Y109.200 E3.237830
G1 X112.167 Y108.897 E3.252022
G1 X112.096 Y108.671 E3.263053
G1 X111.989 Y108.461 E3.274027
G1 X111.848 Y108.271 E3.285045
G1 X111.676 Y108.108 E3.296078
G1 X111.480 Y107.976 E3.307082
G1 X111.264 Y107.879 E3.318107
G1 X111.036 Y107.820 E3.329074
G1 X110.800 Y107.800 E3.340102
G1 X109.200 Y107.800 E3.414605
G1 X108.897 Y107.833 E3.428797
G1 X108.671 Y107.904 E3.439828
G1 X108.461 Y108.011 E3.450803
G1 X108.271 Y108.152 E3.461820
G1 X108.108 Y108.324 E3.472854
G1 X107.976 Y108.520 E3.483857
G1 X107.879 Y108.736 E3.494883
G1 X107.820 Y108.964 E3.505849
G1 X107.810 Y109.082 E3.511364
G0 F7200 X107.800 Y109.200
; retract
G1 F1800 E-3.488636
G0 F7200 X108.400 Y109.410
G0 X109.200 Y109.689
G0 X109.500 Y109.794
G0 X109.951 Y109.951
; prime
G1 F1800 E3.511364
G0 F7200 X110.800 Y110.800
G1 F1200 X110.800 Y109.200 E3.585867
G1 X109.200 Y109.200 E3.660370
G1 X109.200 Y110.800 E3.734873
G1 X110.700 Y110.800 E3.804719
G0 F7200 X110.800 Y110.800
G0 X109.951 Y109.951
G0 X110.600 Y110.462
G1 F1200 X110.462 Y110.600 E3.813807
G0 F7200 X109.400 Y109.966
G1 F1200 X109.965 Y109.400 E3.851046
G0 F7200 X110.530 Y109.400
G1 F1200 X109.400 Y110.530 E3.925458
G0 F7200 X109.896 Y110.600
G1 F1200 X110.600 Y109.896 E3.971817
; retract
G1 F1800 E-3.028183
G0 F7200 X110.048 Y109.951
G92 E0
; </layer>
M106 S255
; <layer 1>
G1 Z0.560
; prime
G1 F1800 E7.000000
G0 F7200 X109.200 Y110.800 Z0.560000
G1 F2100 X110.800 Y110.800 E7.074503
G1 X110.800 Y109.200 E7.149006
G1 X109.200 Y109.200 E7.223509
G1 X109.200 Y110.700 E7.293356
G0 F7200 X109.200 Y110.800
G0 X110.048 Y109.951
G0 X109.400 Y110.462
G1 F2100 X109.537 Y110.600 E7.302410
G0 F7200 X110.600 Y109.966
G1 F2100 X110.034 Y109.400 E7.339683
G0 F7200 X109.469 Y109.400
G1 F2100 X110.600 Y110.531 E7.414161
G0 F7200 X110.103 Y110.600
G1 F2100 X109.400 Y109.896 E7.460487
; retract
G1 F1800 E0.460487
G0 F7200 X109.951 Y109.951
G92 E0
; </layer>
; <layer 2>
G1 Z0.840
; prime
G1 F1800 E7.000000
G0 F7200 X110.800 Y110.800 Z0.840000
G1 F2100 X110.800 Y109.200 E7.074503
G1 X109.200 Y109.200 E7.149006
G1 X109.200 Y110.800 E7.223509
G1 X110.700 Y110.800 E7.293356
G0 F7200 X110.800 Y110.800
G0 X109.951 Y109.951
G0 X110.462 Y110.600
G1 F2100 X110.600 Y110.462 E7.302443
G0 F7200 X109.965 Y109.400
G1 F2100 X109.400 Y109.966 E7.339682
G0 F7200 X109.400 Y110.530
G1 F2100 X110.530 Y109.400 E7.414094
G0 F7200 X110.600 Y109.896
G1 F2100 X109.896 Y110.600 E7.460454
; retract
G1 F1800 E0.460454
G0 F7200 X110.048 Y110.048
G92 E0
; </layer>
; <layer 3>
G1 Z1.120
; prime
G1 F1800 E7.000000
G0 F7200 X109.200 Y109.200 Z1.120000
G1 F2100 X109.200 Y110.800 E7.074503
G1 X110.800 Y110.800 E7.149006
G1 X110.800 Y109.200 E7.223509
G1 X109.300 Y109.200 E7.293356
G0 F7200 X109.200 Y109.200
G0 X110.048 Y110.048
G0 X109.400 Y109.774
G1 F3600 X109.774 Y109.400 E7.317984
G1 F7200 X109.774 Y109.400 E7.317984
G1 X109.400 Y109.774 E7.317984
; retract
G1 F1800 E0.317984
G0 F7200 X109.951 Y109.951
G92 E0
; </layer>
; <layer 4>
G1 Z1.400
; prime
G1 F1800 E7.000000
G0 F7200 X110.800 Y110.800 Z1.400000
G1 F2100 X110.800 Y109.200 E7.074503
G1 X109.200 Y109.200 E7.149006
G1 X109.200 Y110.800 E7.223509
G1 X110.700 Y110.800 E7.293356
G0 F7200 X110.800 Y110.800
G0 X109.951 Y109.951
G0 X110.600 Y110.462
G1 F2100 X110.462 Y110.600 E7.302443
G0 F7200 X109.400 Y109.966
G1 F2100 X109.965 Y109.400 E7.339682
G0 F7200 X110.530 Y109.400
G1 F2100 X109.400 Y110.530 E7.414094
G0 F7200 X109.896 Y110.600
G1 F2100 X110.600 Y109.896 E7.460454
; retract
G1 F1800 E0.460454
G0 F7200 X110.048 Y109.951
G92 E0
; </layer>
; <layer 5>
G1 Z1.680
; prime
G1 F1800 E7.000000
G0 F7200 X109.200 Y110.800 Z1.680000
G1 F2100 X110.800 Y110.800 E7.074503
G1 X110.800 Y109.200 E7.149006
G1 X109.200 Y109.200 E7.223509
G1 X109.200 Y110.700 E7.293356
G0 F7200 X109.200 Y110.800
G0 X110.048 Y109.951
G0 X109.400 Y110.462
G1 F2100 X109.537 Y110.600 E7.302410
G0 F7200 X110.600 Y109.966
G1 F2100 X110.034 Y109.400 E7.339683
G0 F7200 X109.469 Y109.400
G1 F2100 X110.600 Y110.531 E7.414161
G0 F7200 X110.103 Y110.600
G1 F2100 X109.400 Y109.896 E7.460487
; retract
G1 F1800 E0.460487
G0 F7200 X109.951 Y109.951
G92 E0
; </layer>
; <layer 6>
G1 Z1.960
; prime
G1 F1800 E7.000000
G0 F7200 X110.800 Y110.800 Z1.960000
G1 F2100 X110.800 Y109.200 E7.074503
G1 X109.200 Y109.200 E7.149006
G1 X109.200 Y110.800 E7.223509
G1 X110.700 Y110.800 E7.293356
G0 F7200 X110.800 Y110.800
G0 X109.951 Y109.951
G0 X110.600 Y110.462
G1 F2100 X110.462 Y110.600 E7.302443
G0 F7200 X109.896 Y110.600
G1 F2100 X110.600 Y109.896 E7.348802
G0 F7200 X110.530 Y109.400
G1 F2100 X109.400 Y110.530 E7.423215
G0 F7200 X109.400 Y109.966
G1 F2100 X109.965 Y109.400 E7.460454
; retract
G1 F1800 E0.460454
G0 F7200 X109.488 Y109.200
G0 X108.993 Y108.993
G92 E0
; </layer>
; <layer 7>
G1 Z2.240
G92 E0
; </layer>
G92 E0
M107       ; fan off
M104 S0    ; turn off temperature
M140 S0
M107
G1 X0 Y0   ; move back X and Y to origin
G1 Y200	   ; move Y to front to "present" the print 
M84        ; disable motors
M117 Finished

