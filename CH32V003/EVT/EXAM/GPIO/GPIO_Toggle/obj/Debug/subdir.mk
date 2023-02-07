################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Debug/debug.c 

OBJS += \
./Debug/debug.o 

C_DEPS += \
./Debug/debug.d 


# Each subdirectory must supply rules for building sources it contributes
Debug/debug.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Debug/debug.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


