################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc \
../ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc \
../ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc \
../ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc \
../ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc \
../ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_optional_debug_tools.cc \
../ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc \
../ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc \
../ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc \
../ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc \
../ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc \
../ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.cc \
../ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.cc \
../ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc 

CC_DEPS += \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.d \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.d \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.d \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.d \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.d \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_optional_debug_tools.d \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.d \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_string.d \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_time.d \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.d \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.d \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.d \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.d \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.d 

OBJS += \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.o \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.o \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.o \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.o \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.o \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_optional_debug_tools.o \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.o \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_string.o \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_time.o \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.o \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.o \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.o \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.o \
./ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.o 


# Each subdirectory must supply rules for building sources it contributes
ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/%.o: ../ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/%.cc ei-keyword-spotting/edge-impulse-sdk/tensorflow/lite/micro/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DEI_CLASSIFIER_TFLITE_ENABLE_CMSIS_NN=1 -DSTM32L476xx -DDEBUG -DEIDSP_QUANTIZE_FILTERBANK=0 -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/third_party/flatbuffers/include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/third_party/gemmlowp" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/third_party/ruy" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/PrivateInclude" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/classifier" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Core/Inc" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Utilities/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Target" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/App/includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Target/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/MAC/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/SubGhz_Phy" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/SubGhz_Phy/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/Lmhandler/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/Crypto/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/Drivers/BSP" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

