org 0x7c00
bits 16

main: 
	mov al, 0x02
	mov ah, 0x0e
	mov bh, 0
	int 0x10

; loop 
halt:
	; Parada da CPU
	hlt
	jmp halt ; volte para halt

; 510 bits menos $(todo bit) menos $$(todo bit usando ate o momento)
times 510-($-$$) db 0 
dw 0xaa55

