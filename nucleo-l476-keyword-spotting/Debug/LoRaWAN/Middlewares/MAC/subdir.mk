################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LoRaWAN/Middlewares/MAC/LoRaMac.c \
../LoRaWAN/Middlewares/MAC/LoRaMacAdr.c \
../LoRaWAN/Middlewares/MAC/LoRaMacClassB.c \
../LoRaWAN/Middlewares/MAC/LoRaMacCommands.c \
../LoRaWAN/Middlewares/MAC/LoRaMacConfirmQueue.c \
../LoRaWAN/Middlewares/MAC/LoRaMacCrypto.c \
../LoRaWAN/Middlewares/MAC/LoRaMacParser.c \
../LoRaWAN/Middlewares/MAC/LoRaMacSerializer.c 

C_DEPS += \
./LoRaWAN/Middlewares/MAC/LoRaMac.d \
./LoRaWAN/Middlewares/MAC/LoRaMacAdr.d \
./LoRaWAN/Middlewares/MAC/LoRaMacClassB.d \
./LoRaWAN/Middlewares/MAC/LoRaMacCommands.d \
./LoRaWAN/Middlewares/MAC/LoRaMacConfirmQueue.d \
./LoRaWAN/Middlewares/MAC/LoRaMacCrypto.d \
./LoRaWAN/Middlewares/MAC/LoRaMacParser.d \
./LoRaWAN/Middlewares/MAC/LoRaMacSerializer.d 

OBJS += \
./LoRaWAN/Middlewares/MAC/LoRaMac.o \
./LoRaWAN/Middlewares/MAC/LoRaMacAdr.o \
./LoRaWAN/Middlewares/MAC/LoRaMacClassB.o \
./LoRaWAN/Middlewares/MAC/LoRaMacCommands.o \
./LoRaWAN/Middlewares/MAC/LoRaMacConfirmQueue.o \
./LoRaWAN/Middlewares/MAC/LoRaMacCrypto.o \
./LoRaWAN/Middlewares/MAC/LoRaMacParser.o \
./LoRaWAN/Middlewares/MAC/LoRaMacSerializer.o 


# Each subdirectory must supply rules for building sources it contributes
LoRaWAN/Middlewares/MAC/%.o: ../LoRaWAN/Middlewares/MAC/%.c LoRaWAN/Middlewares/MAC/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -DEI_CLASSIFIER_TFLITE_ENABLE_CMSIS_NN=1 -DEIDSP_QUANTIZE_FILTERBANK=0 -c -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I"D:/Temp/ChirpBox-master/ChirpBox-master/Miscellaneous/Toggle/Inc" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/third_party/flatbuffers/include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/third_party/gemmlowp" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/third_party/ruy" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/Include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/CMSIS/DSP/PrivateInclude" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/classifier" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/ei-keyword-spotting/edge-impulse-sdk/CMSIS/NN/Include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/App/includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Utilities/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Target/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/MAC/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/SubGhz_Phy/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/Lmhandler/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Middlewares/Crypto/Includes" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/Drivers/CMSIS/Include" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/Drivers/BSP" -I"D:/master/code/LoRaWAN_code/AILRWAN/nucleo-l476-keyword-spotting/LoRaWAN/Core/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

