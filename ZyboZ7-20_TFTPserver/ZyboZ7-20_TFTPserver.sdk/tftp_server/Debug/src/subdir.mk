################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/iic_phyreset.c \
../src/main.c \
../src/mfs_filesys.c \
../src/mfs_filesys_util.c \
../src/prot_malloc.c \
../src/tftpserver.c \
../src/tftputils.c 

OBJS += \
./src/iic_phyreset.o \
./src/main.o \
./src/mfs_filesys.o \
./src/mfs_filesys_util.o \
./src/prot_malloc.o \
./src/tftpserver.o \
./src/tftputils.o 

C_DEPS += \
./src/iic_phyreset.d \
./src/main.d \
./src/mfs_filesys.d \
./src/mfs_filesys_util.d \
./src/prot_malloc.d \
./src/tftpserver.d \
./src/tftputils.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../tftp_server_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


