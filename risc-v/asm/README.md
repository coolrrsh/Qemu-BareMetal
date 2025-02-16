# RISC-V Virt Simulation

<h1> Install risc-v compiler for linux </h1>

```
riscv64-linux-gnu-as -march=rv64i -mabi=lp64 -o hello.o -c hello.s
```

<h1> Verify Object dump </h1>

```
riscv64-linux-gnu-objdump -D hello.o
```

<h1> Run fake bios </h1>
```
qemu-system-riscv64 -machine virt -bios hello
```
