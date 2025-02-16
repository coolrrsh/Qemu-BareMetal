CC=arm-none-eabi-gcc
LD=arm-none-eabi-ld

MACH=cortex-m4

all: init.o startup.o output.elf output.bin
	
init.o:init.c
	$(CC) -c -mcpu=$(MACH) -g init.c -o init.o
   

startup.o: startup.s
	$(CC) -mcpu=$(MACH) -g startup.s -o startup.o

output.elf: init.o startup.o linker.ld
	${LD) -T linker.ld init.o startup.o -o final.elf

output.bin:
	arm-none-eabi-objcopy -O binary output.elf output.bin

clean:  
	rm -rf *.o *.elf *.bin


