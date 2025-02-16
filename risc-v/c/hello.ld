SECTIONS
{
	. = 0x80000000; /* QEMU default load address to run bios */
	.text : {
		KEEP(*(.text._start)); /*Ensure _start is placed first */
		*(.text*);
	}
	. = ALIGN (CONSTANT (COMMONPAGESIZE)); /*Make sure linker doesnot jam data into text section*/
	.data : {
		*(.data*); /*stack goes here */
	}
}
