qemu-system-gnuarmeclipse -nographic -cpu cortex-m4 -kernel RTOS1.elf -machine STM32F4-Discovery -gdb tcp::3333 

# gdb command
# gdb-multiarch -q "${TARGET}" -ex "target remote :3333"
# qemu-system-gnuarmeclipse -nographic -cpu cortex-m4 -kernel RTOS1.elf -S -s -machine STM32F4-Discovery -gdb tcp::3333 -serial unix:///tmp/uart1,server
#qemu-system-gnuarmeclipse -nographic -cpu cortex-m4 -machine STM32F4-Discovery -gdb tcp::3333 -kernel RTOS1.bin -serial unix:///tmp/uart1,server


