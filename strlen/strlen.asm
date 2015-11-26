section .bss
	n:	resb	2

section .text
	global _start

_start:
	nop
	pop	ecx
	pop	ecx
	pop	ecx ; popping command line argument into ecx
	xor	esi,esi

loop:
	cmp	byte[ecx],0
	je	exit
	inc	ecx	
	inc	esi
	jmp	loop

exit:
	add	esi,0x30
	add	esi,0xa00; adding LF character
	mov	[n],esi

	mov	eax,4
	mov	ebx,1
	mov	ecx,n
	mov	edx,2
	int	80h

	mov	eax,1
	mov	ebx,0
	int	80h	
