section	.text
global	ft_strcpy

ft_strcpy:
	mov	rax, rdi

.again:
	cmp [rsi], byte 0
	je	.return
	mov cl, [rsi]
	mov	[rdi], cl
	inc rsi
	inc rdi
	jmp .again
	
.return:
	mov	[rdi], byte 0
	ret