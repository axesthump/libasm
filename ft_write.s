section .text
global	ft_write
extern	error

ft_write:
		mov	rax, 1
		syscall
		jnz	err
		ret
err:
	call error
	xor rdi, rdi
	xor	rsi, rsi
	xor	rdx, rdx
	mov	rax, -1
	ret
