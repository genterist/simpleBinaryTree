# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/buildTree.c \
/traversals.c \
/main.c 

OBJS += \
./buildTree.o \
./traversals.o \
./main.o 

C_DEPS += \
./buildTree.d \
./traversals.d \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ./%.c
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished $<'
	@echo '--------------------'


