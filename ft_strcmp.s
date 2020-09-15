section .text
global	ft_strcmp

ft_strcmp:
	xor	rax, rax

.again:
	mov al, [rdi]
	mov dl, [rsi]
	cmp	al, byte 0
	je .return
	cmp	dl, byte 0
	je .return
	cmp rax, rdx
	jnz .return
	inc rdi
	inc	rsi

.return:
	sub rax, rdx
	ret