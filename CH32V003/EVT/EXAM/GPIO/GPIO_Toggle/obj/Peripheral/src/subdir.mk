################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_adc.c \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_dbgmcu.c \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_dma.c \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_exti.c \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_flash.c \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_gpio.c \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_i2c.c \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_iwdg.c \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_misc.c \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_opa.c \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_pwr.c \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_rcc.c \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_spi.c \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_tim.c \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_usart.c \
/home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_wwdg.c 

OBJS += \
./Peripheral/src/ch32v00x_adc.o \
./Peripheral/src/ch32v00x_dbgmcu.o \
./Peripheral/src/ch32v00x_dma.o \
./Peripheral/src/ch32v00x_exti.o \
./Peripheral/src/ch32v00x_flash.o \
./Peripheral/src/ch32v00x_gpio.o \
./Peripheral/src/ch32v00x_i2c.o \
./Peripheral/src/ch32v00x_iwdg.o \
./Peripheral/src/ch32v00x_misc.o \
./Peripheral/src/ch32v00x_opa.o \
./Peripheral/src/ch32v00x_pwr.o \
./Peripheral/src/ch32v00x_rcc.o \
./Peripheral/src/ch32v00x_spi.o \
./Peripheral/src/ch32v00x_tim.o \
./Peripheral/src/ch32v00x_usart.o \
./Peripheral/src/ch32v00x_wwdg.o 

C_DEPS += \
./Peripheral/src/ch32v00x_adc.d \
./Peripheral/src/ch32v00x_dbgmcu.d \
./Peripheral/src/ch32v00x_dma.d \
./Peripheral/src/ch32v00x_exti.d \
./Peripheral/src/ch32v00x_flash.d \
./Peripheral/src/ch32v00x_gpio.d \
./Peripheral/src/ch32v00x_i2c.d \
./Peripheral/src/ch32v00x_iwdg.d \
./Peripheral/src/ch32v00x_misc.d \
./Peripheral/src/ch32v00x_opa.d \
./Peripheral/src/ch32v00x_pwr.d \
./Peripheral/src/ch32v00x_rcc.d \
./Peripheral/src/ch32v00x_spi.d \
./Peripheral/src/ch32v00x_tim.d \
./Peripheral/src/ch32v00x_usart.d \
./Peripheral/src/ch32v00x_wwdg.d 


# Each subdirectory must supply rules for building sources it contributes
Peripheral/src/ch32v00x_adc.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_adc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/src/ch32v00x_dbgmcu.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_dbgmcu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/src/ch32v00x_dma.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_dma.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/src/ch32v00x_exti.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_exti.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/src/ch32v00x_flash.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/src/ch32v00x_gpio.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/src/ch32v00x_i2c.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/src/ch32v00x_iwdg.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_iwdg.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/src/ch32v00x_misc.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_misc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/src/ch32v00x_opa.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_opa.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/src/ch32v00x_pwr.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_pwr.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/src/ch32v00x_rcc.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_rcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/src/ch32v00x_spi.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/src/ch32v00x_tim.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/src/ch32v00x_usart.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Peripheral/src/ch32v00x_wwdg.o: /home/william/Documents/Projects/WCH\ CH\ ICs/CH32V003/EVT/EXAM/SRC/Peripheral/src/ch32v00x_wwdg.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ec -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Debug" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Core" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/GPIO/GPIO_Toggle/User" -I"/home/william/Documents/Projects/WCH CH ICs/CH32V003/EVT/EXAM/SRC/Peripheral/inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


