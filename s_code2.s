	.file	"c_code2.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"r"
	.align 8
.LC1:
	.string	"\305rror: there is no such file in directory"
	.text
	.globl	open
	.type	open, @function
open:
.LFB6:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, .LC0[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L2
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	QWORD PTR -24[rbp], 0
	jmp	.L1
.L2:
	mov	rdx, QWORD PTR -8[rbp]
	mov	ecx, DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	fgets@PLT
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	open, .-open
	.globl	generate
	.type	generate, @function
generate:
.LFB7:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
.L6:
	call	rand@PLT
	movsx	rdx, eax
	imul	rdx, rdx, -1401515643
	shr	rdx, 32
	add	edx, eax
	sar	edx, 6
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	imul	ecx, edx, 95
	sub	eax, ecx
	mov	edx, eax
	mov	eax, edx
	lea	ecx, 32[rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, ecx
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -4[rbp], 1
.L5:
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	cmp	DWORD PTR -4[rbp], eax
	jl	.L6
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	generate, .-generate
	.section	.rodata
.LC2:
	.string	"w"
.LC3:
	.string	"Ranom_output.txt"
.LC4:
	.string	"File_output.txt"
.LC5:
	.string	"\305rror: too many args"
.LC6:
	.string	"%d %s\n"
	.align 8
.LC8:
	.string	"Operating time of the program: %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 264
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	DWORD PTR -196[rbp], edi
	mov	QWORD PTR -208[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	rbx, rax
	call	clock@PLT
	mov	QWORD PTR -136[rbp], rax
	mov	DWORD PTR -148[rbp], 10000
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	sub	rax, 1
	mov	QWORD PTR -128[rbp], rax
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	mov	QWORD PTR -256[rbp], rax
	mov	QWORD PTR -248[rbp], 0
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	mov	QWORD PTR -272[rbp], rax
	mov	QWORD PTR -264[rbp], 0
	mov	eax, DWORD PTR -148[rbp]
	movsx	rdx, eax
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rdx, rax, 16
	mov	rax, rdx
	and	rax, -4096
	mov	rcx, rsp
	sub	rcx, rax
.L8:
	cmp	rsp, rcx
	je	.L9
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L8
.L9:
	mov	rax, rdx
	and	eax, 4095
	sub	rsp, rax
	mov	rax, rdx
	and	eax, 4095
	test	rax, rax
	je	.L10
	mov	rax, rdx
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L10:
	mov	rax, rsp
	add	rax, 0
	mov	QWORD PTR -120[rbp], rax
	cmp	DWORD PTR -196[rbp], 1
	jne	.L11
	mov	eax, DWORD PTR -148[rbp]
	mov	rdx, QWORD PTR -120[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	generate
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -144[rbp], rax
	jmp	.L12
.L11:
	cmp	DWORD PTR -196[rbp], 2
	jne	.L13
	mov	rax, QWORD PTR -208[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	esi, DWORD PTR -148[rbp]
	mov	rcx, QWORD PTR -120[rbp]
	mov	rdx, rax
	mov	rdi, rcx
	call	open
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -144[rbp], rax
	jmp	.L12
.L13:
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	jmp	.L14
.L12:
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	sub	rax, 1
	mov	QWORD PTR -112[rbp], rax
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	mov	QWORD PTR -224[rbp], rax
	mov	QWORD PTR -216[rbp], 0
	mov	rsi, QWORD PTR -224[rbp]
	mov	rdi, QWORD PTR -216[rbp]
	imul	rdx, rdi, 800
	imul	rax, rsi, 0
	lea	rcx, [rdx+rax]
	mov	eax, 800
	mul	rsi
	add	rcx, rdx
	mov	rdx, rcx
	mov	eax, DWORD PTR -148[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	mov	QWORD PTR -240[rbp], rax
	mov	QWORD PTR -232[rbp], 0
	mov	rsi, QWORD PTR -240[rbp]
	mov	rdi, QWORD PTR -232[rbp]
	imul	rdx, rdi, 800
	imul	rax, rsi, 0
	lea	rcx, [rdx+rax]
	mov	eax, 800
	mul	rsi
	add	rcx, rdx
	mov	rdx, rcx
	mov	eax, DWORD PTR -148[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L15:
	cmp	rsp, rdx
	je	.L16
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L15
.L16:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L17
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L17:
	mov	rax, rsp
	add	rax, 0
	mov	QWORD PTR -104[rbp], rax
	mov	DWORD PTR -184[rbp], 0
	mov	DWORD PTR -180[rbp], 0
	jmp	.L18
.L28:
	mov	DWORD PTR -176[rbp], 0
	mov	DWORD PTR -172[rbp], 0
	jmp	.L19
.L21:
	add	DWORD PTR -180[rbp], 1
.L19:
	mov	rdx, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR -180[rbp]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	cmp	al, 47
	jle	.L22
	mov	rdx, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR -180[rbp]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	cmp	al, 57
	jle	.L21
	jmp	.L22
.L24:
	mov	rdx, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR -180[rbp]
	cdqe
	movzx	edx, BYTE PTR [rdx+rax]
	mov	rdi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -176[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -184[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	add	rax, rcx
	sal	rax, 2
	add	rax, rdi
	add	rax, rsi
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -176[rbp], 1
	add	DWORD PTR -180[rbp], 1
	add	DWORD PTR -172[rbp], 1
.L22:
	mov	rdx, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR -180[rbp]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	cmp	al, 47
	jle	.L23
	mov	rdx, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR -180[rbp]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	cmp	al, 57
	jle	.L24
.L23:
	mov	rdx, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR -180[rbp]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	cmp	al, 64
	jle	.L25
	mov	rdx, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR -180[rbp]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	cmp	al, 90
	jle	.L24
.L25:
	mov	rdx, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR -180[rbp]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	cmp	al, 96
	jle	.L26
	mov	rdx, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR -180[rbp]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	cmp	al, 122
	jle	.L24
.L26:
	cmp	DWORD PTR -172[rbp], 0
	jle	.L27
	add	DWORD PTR -184[rbp], 1
.L27:
	add	DWORD PTR -180[rbp], 1
.L18:
	mov	rdx, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR -180[rbp]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	test	al, al
	jne	.L28
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	sub	rax, 1
	mov	QWORD PTR -96[rbp], rax
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	mov	r14, rax
	mov	r15d, 0
	imul	rdx, r15, 800
	imul	rax, r14, 0
	lea	rcx, [rdx+rax]
	mov	eax, 800
	mul	r14
	add	rcx, rdx
	mov	rdx, rcx
	mov	eax, DWORD PTR -148[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	mov	r12, rax
	mov	r13d, 0
	imul	rdx, r13, 800
	imul	rax, r12, 0
	lea	rcx, [rdx+rax]
	mov	eax, 800
	mul	r12
	add	rcx, rdx
	mov	rdx, rcx
	mov	eax, DWORD PTR -148[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L29:
	cmp	rsp, rdx
	je	.L30
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L29
.L30:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L31
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L31:
	mov	rax, rsp
	add	rax, 0
	mov	QWORD PTR -88[rbp], rax
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	sub	rax, 1
	mov	QWORD PTR -80[rbp], rax
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	mov	QWORD PTR -288[rbp], rax
	mov	QWORD PTR -280[rbp], 0
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	mov	QWORD PTR -304[rbp], rax
	mov	QWORD PTR -296[rbp], 0
	mov	eax, DWORD PTR -148[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L32:
	cmp	rsp, rdx
	je	.L33
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L32
.L33:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L34
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L34:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -72[rbp], rax
	mov	DWORD PTR -168[rbp], 0
	mov	DWORD PTR -164[rbp], 0
	jmp	.L35
.L40:
	mov	DWORD PTR -160[rbp], 0
	mov	DWORD PTR -156[rbp], 0
	jmp	.L36
.L38:
	mov	eax, DWORD PTR -164[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, QWORD PTR -104[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -156[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	add	rax, rcx
	sal	rax, 2
	mov	rcx, QWORD PTR -88[rbp]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L37
	mov	DWORD PTR -160[rbp], 1
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -156[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	lea	ecx, 1[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -156[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
.L37:
	add	DWORD PTR -156[rbp], 1
.L36:
	mov	eax, DWORD PTR -156[rbp]
	cmp	eax, DWORD PTR -168[rbp]
	jl	.L38
	cmp	DWORD PTR -160[rbp], 0
	jne	.L39
	mov	eax, DWORD PTR -164[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, QWORD PTR -104[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -168[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	add	rax, rcx
	sal	rax, 2
	mov	rcx, QWORD PTR -88[rbp]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcpy@PLT
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -168[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	lea	ecx, 1[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -168[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -168[rbp], 1
.L39:
	add	DWORD PTR -164[rbp], 1
.L35:
	mov	eax, DWORD PTR -164[rbp]
	cmp	eax, DWORD PTR -184[rbp]
	jl	.L40
	mov	DWORD PTR -152[rbp], 0
	jmp	.L41
.L42:
	mov	eax, DWORD PTR -152[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, QWORD PTR -88[rbp]
	lea	rcx, [rax+rdx]
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -152[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -144[rbp]
	lea	rsi, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	fprintf@PLT
	add	DWORD PTR -152[rbp], 1
.L41:
	mov	eax, DWORD PTR -152[rbp]
	cmp	eax, DWORD PTR -168[rbp]
	jl	.L42
	call	clock@PLT
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	sub	rax, QWORD PTR -136[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC7[rip]
	divsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	lea	rax, .LC8[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	mov	eax, 0
.L14:
	mov	rsp, rbx
	mov	rdx, QWORD PTR -56[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L44
	call	__stack_chk_fail@PLT
.L44:
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC7:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
