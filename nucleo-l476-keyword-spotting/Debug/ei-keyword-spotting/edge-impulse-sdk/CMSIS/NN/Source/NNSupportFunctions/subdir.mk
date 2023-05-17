################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c \
../ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c 

C_DEPS += \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.d \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.d 

OBJS += \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.o \
./ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.o 


# Each subdirectory must supply rules for building sources it contributes
ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/%.o: ../ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/%.c ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -DEI_CLASSIFIER_TFLITE_ENABLE_CMSIS_NN=1 -DEIDSP_QUANTIZE_FILTERBANK=0 -c -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I"D:/Temp/ChirpBox-master/ChirpBox-master/Miscellaneous/Toggle/Inc" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/third_party/flatbuffers/include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/third_party/gemmlowp" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/third_party/ruy" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/PrivateInclude" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/classifier" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/App/includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Utilities/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Target/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/MAC/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/SubGhz_Phy/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/Lmhandler/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/Crypto/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/Drivers/CMSIS/Include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/Drivers/BSP" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Core/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

