################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LoRaWAN/Core/src/adc.c \
../LoRaWAN/Core/src/adc_if.c \
../LoRaWAN/Core/src/dma.c \
../LoRaWAN/Core/src/rtc.c \
../LoRaWAN/Core/src/rtc_if.c \
../LoRaWAN/Core/src/stm32_lpm_if.c \
../LoRaWAN/Core/src/sys_app.c \
../LoRaWAN/Core/src/sys_debug.c \
../LoRaWAN/Core/src/sys_sensors.c \
../LoRaWAN/Core/src/usart_if.c 

C_DEPS += \
./LoRaWAN/Core/src/adc.d \
./LoRaWAN/Core/src/adc_if.d \
./LoRaWAN/Core/src/dma.d \
./LoRaWAN/Core/src/rtc.d \
./LoRaWAN/Core/src/rtc_if.d \
./LoRaWAN/Core/src/stm32_lpm_if.d \
./LoRaWAN/Core/src/sys_app.d \
./LoRaWAN/Core/src/sys_debug.d \
./LoRaWAN/Core/src/sys_sensors.d \
./LoRaWAN/Core/src/usart_if.d 

OBJS += \
./LoRaWAN/Core/src/adc.o \
./LoRaWAN/Core/src/adc_if.o \
./LoRaWAN/Core/src/dma.o \
./LoRaWAN/Core/src/rtc.o \
./LoRaWAN/Core/src/rtc_if.o \
./LoRaWAN/Core/src/stm32_lpm_if.o \
./LoRaWAN/Core/src/sys_app.o \
./LoRaWAN/Core/src/sys_debug.o \
./LoRaWAN/Core/src/sys_sensors.o \
./LoRaWAN/Core/src/usart_if.o 


# Each subdirectory must supply rules for building sources it contributes
LoRaWAN/Core/src/%.o: ../LoRaWAN/Core/src/%.c LoRaWAN/Core/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -DEI_CLASSIFIER_TFLITE_ENABLE_CMSIS_NN=1 -DEIDSP_QUANTIZE_FILTERBANK=0 -c -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I"D:/Temp/ChirpBox-master/ChirpBox-master/Miscellaneous/Toggle/Inc" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/third_party/flatbuffers/include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/third_party/gemmlowp" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/third_party/ruy" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/PrivateInclude" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/classifier" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/App/includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Core/Inc" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Utilities/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/Drivers/BSP" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Target/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/MAC/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/SubGhz_Phy/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/Lmhandler/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/Crypto/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/Drivers/CMSIS/Include" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

