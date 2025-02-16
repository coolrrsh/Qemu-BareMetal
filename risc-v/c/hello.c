#define UART0_BASE 0x10000000

//Use datasheet for 16550 UART
//https://www.ti.com/lit/ds/symlink/tl16c550d.pdf

#define REG(base, offset) ((*(volatile unsigned char *)(base + offset)))
#define UART0_DR REG(UART0_BASE, 0x00)
#define UART0_FCR REG(UART0_BASE, 0x02)
#define UART0_LSR REG(UART0_BASE, 0x05)
#define UARTFCR_FFENA 0x01 //UART FIFO Control reg bit
#define UARTLSR_THRE 0x20 //UART LINE STATUS reg bit
#define UART0_FF_THR_EMPTY (UART0_LSR & UARTLSR_THRE)

void uart_putc(char c){
	while(!UART0_FF_THR_EMPTY);
	UART0_DR = c;
}

void uart_puts(const char *str){
	while(*str){
		uart_putc(*str++);
	}
}

void main(){
	UART0_FCR = UARTFCR_FFENA;//set the fifo for polled operation
	uart_puts("Hello World\n");
	while(1); //loop forever
}
