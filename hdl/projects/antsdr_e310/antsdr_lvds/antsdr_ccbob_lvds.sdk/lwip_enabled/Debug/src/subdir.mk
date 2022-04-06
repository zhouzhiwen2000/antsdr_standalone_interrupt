################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/ad9361.c \
../src/ad9361_api.c \
../src/ad9361_conv.c \
../src/adc_core.c \
../src/command.c \
../src/console.c \
../src/dac_core.c \
../src/i2c_access.c \
../src/iic_phyreset.c \
../src/main.c \
../src/platform.c \
../src/platform_mb.c \
../src/platform_zynq.c \
../src/platform_zynqmp.c \
../src/sdr.c \
../src/sfp.c \
../src/si5324.c \
../src/udp_perf_client.c \
../src/util.c 

OBJS += \
./src/ad9361.o \
./src/ad9361_api.o \
./src/ad9361_conv.o \
./src/adc_core.o \
./src/command.o \
./src/console.o \
./src/dac_core.o \
./src/i2c_access.o \
./src/iic_phyreset.o \
./src/main.o \
./src/platform.o \
./src/platform_mb.o \
./src/platform_zynq.o \
./src/platform_zynqmp.o \
./src/sdr.o \
./src/sfp.o \
./src/si5324.o \
./src/udp_perf_client.o \
./src/util.o 

C_DEPS += \
./src/ad9361.d \
./src/ad9361_api.d \
./src/ad9361_conv.d \
./src/adc_core.d \
./src/command.d \
./src/console.d \
./src/dac_core.d \
./src/i2c_access.d \
./src/iic_phyreset.d \
./src/main.d \
./src/platform.d \
./src/platform_mb.d \
./src/platform_zynq.d \
./src/platform_zynqmp.d \
./src/sdr.d \
./src/sfp.d \
./src/si5324.d \
./src/udp_perf_client.d \
./src/util.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../lwip_enabled_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


