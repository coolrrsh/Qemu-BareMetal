default: hello.elf
hello.o: hello.c
	riscv64-linux-gnu-gcc -c -g -O0 -ffreestanding -march=rv32i -mabi=ilp32 -o hello.o hello.c

start.o: start.s
	riscv64-linux-gnu-as -march=rv32i -mabi=ilp32 -o start.o start.s
hello.elf: hello.o start.o hello.ld
	riscv64-linux-gnu-ld -T hello.ld -m elf32lriscv -o hello.elf hello.o start.o
run: hello.elf
	@echo "Ctrl-A C for QEMU console, then quite to exit"
	qemu-system-riscv32 -nographic -serial mon:stdio -machine virt -bios hello.elf

clean:
	rm -f *.o hello.elf
