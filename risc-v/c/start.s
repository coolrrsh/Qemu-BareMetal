.section .text._start
.global _start
_start:
	la sp, __stack_top #load stack pointer
	add s0, sp, zero #set the frame pointer
	jal zero, main
loop: j loop 	#spin forever in case main returns

.section .data
.space 1024*8 #allocate 8K of memory to serve as initial stack
.align 16 #smallest stack allocation is 16bytes
__stack_top:  #the stack grows downwards according to riscv
