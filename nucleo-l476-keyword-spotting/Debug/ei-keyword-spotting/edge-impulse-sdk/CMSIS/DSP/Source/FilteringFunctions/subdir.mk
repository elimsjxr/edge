################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.c 

C_DEPS += \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.d 

OBJS += \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.o 


# Each subdirectory must supply rules for building sources it contributes
ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/%.o: ../ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/%.c ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -DEI_CLASSIFIER_TFLITE_ENABLE_CMSIS_NN=1 -DEIDSP_QUANTIZE_FILTERBANK=0 -c -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I"D:/Temp/ChirpBox-master/ChirpBox-master/Miscellaneous/Toggle/Inc" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/third_party/flatbuffers/include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/third_party/gemmlowp" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/third_party/ruy" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/PrivateInclude" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/classifier" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/App/includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Utilities/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Target/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/MAC/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/SubGhz_Phy/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/Lmhandler/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/Crypto/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/Drivers/CMSIS/Include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/Drivers/BSP" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Core/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

