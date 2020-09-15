section .text
global	ft_strlen

ft_strlen: mov rax, rdi

.again: cmp byte [rax], 0
		je	.return
		inc	rax
		jmp	.again

.return: sub rax, rdi
		 ret