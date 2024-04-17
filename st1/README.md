Baremetal Netduino2 

You can run the code with: 

```qemu-system-arm -M netduino2 -nographic -kernel output.bin -serial unix:///tmp/uart1,server -serial unix:///tmp/uart2,server -serial unix:///tmp/uart3,server -serial unix:///tmp/uart4,server -serial unix:///tmp/uart5,server -serial unix:///tmp/uart6,server```

and then in 6 other terminals:

socat - UNIX-CONNECT:/tmp/uart1

socat - UNIX-CONNECT:/tmp/uart2

socat - UNIX-CONNECT:/tmp/uart3

socat - UNIX-CONNECT:/tmp/uart4

socat - UNIX-CONNECT:/tmp/uart5

socat - UNIX-CONNECT:/tmp/uart6

To build project run:

```make```

pre-requisites
===============

gcc-arm-none-eabi
xpack-qemu-arm-6.2.0-1-linux-x64.tar.gz
#emu8051_2.0.1-1_amd64.deb

