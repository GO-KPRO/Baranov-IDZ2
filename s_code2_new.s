.LC0:
        .string "r"
.LC1:
        .string "\320\225rror: there is no such file in directory"
open:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     QWORD PTR [rbp-24], rdi
        mov     DWORD PTR [rbp-28], esi
        mov     QWORD PTR [rbp-40], rdx
        mov     rax, QWORD PTR [rbp-40]
        mov     esi, OFFSET FLAT:.LC0
        mov     rdi, rax
        call    fopen
        mov     QWORD PTR [rbp-8], rax
        cmp     QWORD PTR [rbp-8], 0
        jne     .L2
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    printf
        mov     QWORD PTR [rbp-24], 0
        jmp     .L1
.L2:
        mov     rdx, QWORD PTR [rbp-8]
        mov     ecx, DWORD PTR [rbp-28]
        mov     rax, QWORD PTR [rbp-24]
        mov     esi, ecx
        mov     rdi, rax
        call    fgets
.L1:
        leave
        ret
generate:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     QWORD PTR [rbp-24], rdi
        mov     DWORD PTR [rbp-28], esi
        mov     DWORD PTR [rbp-4], 0
        jmp     .L5
.L6:
        call    rand
        movsx   rdx, eax
        imul    rdx, rdx, -1401515643
        shr     rdx, 32
        add     edx, eax
        sar     edx, 6
        mov     ecx, eax
        sar     ecx, 31
        sub     edx, ecx
        imul    ecx, edx, 95
        sub     eax, ecx
        mov     edx, eax
        mov     eax, edx
        lea     ecx, [rax+32]
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        mov     edx, ecx
        mov     BYTE PTR [rax], dl
        add     DWORD PTR [rbp-4], 1
.L5:
        mov     eax, DWORD PTR [rbp-28]
        sub     eax, 1
        cmp     DWORD PTR [rbp-4], eax
        jl      .L6
        nop
        nop
        leave
        ret
.LC2:
        .string "w"
.LC3:
        .string "Ranom_output.txt"
.LC4:
        .string "File_output.txt"
.LC5:
        .string "\320\225rror: too many args"
.LC6:
        .string "%d %s\n"
.LC8:
        .string "Operating time of the program: %f\n"
main:
        push    rbp
        mov     rbp, rsp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        sub     rsp, 264
        mov     DWORD PTR [rbp-196], edi
        mov     QWORD PTR [rbp-208], rsi
        mov     rax, rsp
        mov     rbx, rax
        call    clock
        mov     QWORD PTR [rbp-104], rax
        mov     DWORD PTR [rbp-108], 10000
        mov     eax, DWORD PTR [rbp-108]
        cdqe
        sub     rax, 1
        mov     QWORD PTR [rbp-120], rax
        mov     eax, DWORD PTR [rbp-108]
        cdqe
        mov     QWORD PTR [rbp-256], rax
        mov     QWORD PTR [rbp-248], 0
        mov     eax, DWORD PTR [rbp-108]
        cdqe
        mov     QWORD PTR [rbp-272], rax
        mov     QWORD PTR [rbp-264], 0
        mov     eax, DWORD PTR [rbp-108]
        movsx   rdx, eax
        mov     eax, 16
        sub     rax, 1
        add     rax, rdx
        mov     esi, 16
        mov     edx, 0
        div     rsi
        imul    rax, rax, 16
        sub     rsp, rax
        mov     rax, rsp
        add     rax, 0
        mov     QWORD PTR [rbp-128], rax
        cmp     DWORD PTR [rbp-196], 1
        jne     .L8
        mov     eax, DWORD PTR [rbp-108]
        mov     rdx, QWORD PTR [rbp-128]
        mov     esi, eax
        mov     rdi, rdx
        call    generate
        mov     esi, OFFSET FLAT:.LC2
        mov     edi, OFFSET FLAT:.LC3
        call    fopen
        mov     QWORD PTR [rbp-56], rax
        jmp     .L9
.L8:
        cmp     DWORD PTR [rbp-196], 2
        jne     .L10
        mov     rax, QWORD PTR [rbp-208]
        add     rax, 8
        mov     rax, QWORD PTR [rax]
        mov     esi, DWORD PTR [rbp-108]
        mov     rcx, QWORD PTR [rbp-128]
        mov     rdx, rax
        mov     rdi, rcx
        call    open
        mov     esi, OFFSET FLAT:.LC2
        mov     edi, OFFSET FLAT:.LC4
        call    fopen
        mov     QWORD PTR [rbp-56], rax
        jmp     .L9
.L10:
        mov     edi, OFFSET FLAT:.LC5
        mov     eax, 0
        call    printf
        mov     eax, 0
        jmp     .L11
.L9:
        mov     eax, DWORD PTR [rbp-108]
        cdqe
        sub     rax, 1
        mov     QWORD PTR [rbp-136], rax
        mov     eax, DWORD PTR [rbp-108]
        cdqe
        mov     QWORD PTR [rbp-224], rax
        mov     QWORD PTR [rbp-216], 0
        mov     rsi, QWORD PTR [rbp-224]
        mov     rdi, QWORD PTR [rbp-216]
        imul    rdx, rdi, 800
        imul    rax, rsi, 0
        lea     rcx, [rdx+rax]
        mov     eax, 800
        mul     rsi
        add     rcx, rdx
        mov     rdx, rcx
        mov     eax, DWORD PTR [rbp-108]
        movsx   rdx, eax
        mov     rax, rdx
        sal     rax, 2
        add     rax, rdx
        lea     rdx, [0+rax*4]
        add     rax, rdx
        sal     rax, 2
        mov     eax, DWORD PTR [rbp-108]
        cdqe
        mov     QWORD PTR [rbp-240], rax
        mov     QWORD PTR [rbp-232], 0
        mov     rsi, QWORD PTR [rbp-240]
        mov     rdi, QWORD PTR [rbp-232]
        imul    rdx, rdi, 800
        imul    rax, rsi, 0
        lea     rcx, [rdx+rax]
        mov     eax, 800
        mul     rsi
        add     rcx, rdx
        mov     rdx, rcx
        mov     eax, DWORD PTR [rbp-108]
        movsx   rdx, eax
        mov     rax, rdx
        sal     rax, 2
        add     rax, rdx
        lea     rdx, [0+rax*4]
        add     rax, rdx
        sal     rax, 2
        mov     rdx, rax
        mov     eax, 16
        sub     rax, 1
        add     rax, rdx
        mov     edi, 16
        mov     edx, 0
        div     rdi
        imul    rax, rax, 16
        sub     rsp, rax
        mov     rax, rsp
        add     rax, 0
        mov     QWORD PTR [rbp-144], rax
        mov     DWORD PTR [rbp-60], 0
        mov     DWORD PTR [rbp-64], 0
        jmp     .L12
.L22:
        mov     DWORD PTR [rbp-68], 0
        mov     DWORD PTR [rbp-72], 0
        jmp     .L13
.L15:
        add     DWORD PTR [rbp-64], 1
.L13:
        mov     rdx, QWORD PTR [rbp-128]
        mov     eax, DWORD PTR [rbp-64]
        cdqe
        movzx   eax, BYTE PTR [rdx+rax]
        cmp     al, 47
        jle     .L16
        mov     rdx, QWORD PTR [rbp-128]
        mov     eax, DWORD PTR [rbp-64]
        cdqe
        movzx   eax, BYTE PTR [rdx+rax]
        cmp     al, 57
        jle     .L15
        jmp     .L16
.L18:
        mov     rdx, QWORD PTR [rbp-128]
        mov     eax, DWORD PTR [rbp-64]
        cdqe
        movzx   ecx, BYTE PTR [rdx+rax]
        mov     rdi, QWORD PTR [rbp-144]
        mov     eax, DWORD PTR [rbp-68]
        movsx   rsi, eax
        mov     eax, DWORD PTR [rbp-60]
        movsx   rdx, eax
        mov     rax, rdx
        sal     rax, 2
        add     rax, rdx
        lea     rdx, [0+rax*4]
        add     rax, rdx
        sal     rax, 2
        add     rax, rdi
        add     rax, rsi
        mov     BYTE PTR [rax], cl
        add     DWORD PTR [rbp-68], 1
        add     DWORD PTR [rbp-64], 1
        add     DWORD PTR [rbp-72], 1
.L16:
        mov     rdx, QWORD PTR [rbp-128]
        mov     eax, DWORD PTR [rbp-64]
        cdqe
        movzx   eax, BYTE PTR [rdx+rax]
        cmp     al, 47
        jle     .L17
        mov     rdx, QWORD PTR [rbp-128]
        mov     eax, DWORD PTR [rbp-64]
        cdqe
        movzx   eax, BYTE PTR [rdx+rax]
        cmp     al, 57
        jle     .L18
.L17:
        mov     rdx, QWORD PTR [rbp-128]
        mov     eax, DWORD PTR [rbp-64]
        cdqe
        movzx   eax, BYTE PTR [rdx+rax]
        cmp     al, 64
        jle     .L19
        mov     rdx, QWORD PTR [rbp-128]
        mov     eax, DWORD PTR [rbp-64]
        cdqe
        movzx   eax, BYTE PTR [rdx+rax]
        cmp     al, 90
        jle     .L18
.L19:
        mov     rdx, QWORD PTR [rbp-128]
        mov     eax, DWORD PTR [rbp-64]
        cdqe
        movzx   eax, BYTE PTR [rdx+rax]
        cmp     al, 96
        jle     .L20
        mov     rdx, QWORD PTR [rbp-128]
        mov     eax, DWORD PTR [rbp-64]
        cdqe
        movzx   eax, BYTE PTR [rdx+rax]
        cmp     al, 122
        jle     .L18
.L20:
        cmp     DWORD PTR [rbp-72], 0
        jle     .L21
        add     DWORD PTR [rbp-60], 1
.L21:
        add     DWORD PTR [rbp-64], 1
.L12:
        mov     rdx, QWORD PTR [rbp-128]
        mov     eax, DWORD PTR [rbp-64]
        cdqe
        movzx   eax, BYTE PTR [rdx+rax]
        test    al, al
        jne     .L22
        mov     eax, DWORD PTR [rbp-108]
        cdqe
        sub     rax, 1
        mov     QWORD PTR [rbp-152], rax
        mov     eax, DWORD PTR [rbp-108]
        cdqe
        mov     r14, rax
        mov     r15d, 0
        imul    rdx, r15, 800
        imul    rax, r14, 0
        lea     rcx, [rdx+rax]
        mov     eax, 800
        mul     r14
        add     rcx, rdx
        mov     rdx, rcx
        mov     eax, DWORD PTR [rbp-108]
        movsx   rdx, eax
        mov     rax, rdx
        sal     rax, 2
        add     rax, rdx
        lea     rdx, [0+rax*4]
        add     rax, rdx
        sal     rax, 2
        mov     eax, DWORD PTR [rbp-108]
        cdqe
        mov     r12, rax
        mov     r13d, 0
        imul    rdx, r13, 800
        imul    rax, r12, 0
        lea     rcx, [rdx+rax]
        mov     eax, 800
        mul     r12
        add     rcx, rdx
        mov     rdx, rcx
        mov     eax, DWORD PTR [rbp-108]
        movsx   rdx, eax
        mov     rax, rdx
        sal     rax, 2
        add     rax, rdx
        lea     rdx, [0+rax*4]
        add     rax, rdx
        sal     rax, 2
        mov     rdx, rax
        mov     eax, 16
        sub     rax, 1
        add     rax, rdx
        mov     esi, 16
        mov     edx, 0
        div     rsi
        imul    rax, rax, 16
        sub     rsp, rax
        mov     rax, rsp
        add     rax, 0
        mov     QWORD PTR [rbp-160], rax
        mov     eax, DWORD PTR [rbp-108]
        cdqe
        sub     rax, 1
        mov     QWORD PTR [rbp-168], rax
        mov     eax, DWORD PTR [rbp-108]
        cdqe
        mov     QWORD PTR [rbp-288], rax
        mov     QWORD PTR [rbp-280], 0
        mov     eax, DWORD PTR [rbp-108]
        cdqe
        mov     QWORD PTR [rbp-304], rax
        mov     QWORD PTR [rbp-296], 0
        mov     eax, DWORD PTR [rbp-108]
        cdqe
        lea     rdx, [0+rax*4]
        mov     eax, 16
        sub     rax, 1
        add     rax, rdx
        mov     edi, 16
        mov     edx, 0
        div     rdi
        imul    rax, rax, 16
        sub     rsp, rax
        mov     rax, rsp
        add     rax, 3
        shr     rax, 2
        sal     rax, 2
        mov     QWORD PTR [rbp-176], rax
        mov     DWORD PTR [rbp-76], 0
        mov     DWORD PTR [rbp-80], 0
        jmp     .L23
.L28:
        mov     DWORD PTR [rbp-84], 0
        mov     DWORD PTR [rbp-88], 0
        jmp     .L24
.L26:
        mov     eax, DWORD PTR [rbp-80]
        movsx   rdx, eax
        mov     rax, rdx
        sal     rax, 2
        add     rax, rdx
        lea     rdx, [0+rax*4]
        add     rax, rdx
        sal     rax, 2
        mov     rdx, QWORD PTR [rbp-144]
        lea     rcx, [rax+rdx]
        mov     eax, DWORD PTR [rbp-88]
        movsx   rdx, eax
        mov     rax, rdx
        sal     rax, 2
        add     rax, rdx
        lea     rdx, [0+rax*4]
        add     rax, rdx
        sal     rax, 2
        mov     rdx, QWORD PTR [rbp-160]
        add     rax, rdx
        mov     rsi, rcx
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        jne     .L25
        mov     DWORD PTR [rbp-84], 1
        mov     rax, QWORD PTR [rbp-176]
        mov     edx, DWORD PTR [rbp-88]
        movsx   rdx, edx
        mov     eax, DWORD PTR [rax+rdx*4]
        lea     ecx, [rax+1]
        mov     rax, QWORD PTR [rbp-176]
        mov     edx, DWORD PTR [rbp-88]
        movsx   rdx, edx
        mov     DWORD PTR [rax+rdx*4], ecx
.L25:
        add     DWORD PTR [rbp-88], 1
.L24:
        mov     eax, DWORD PTR [rbp-88]
        cmp     eax, DWORD PTR [rbp-76]
        jl      .L26
        cmp     DWORD PTR [rbp-84], 0
        jne     .L27
        mov     eax, DWORD PTR [rbp-80]
        movsx   rdx, eax
        mov     rax, rdx
        sal     rax, 2
        add     rax, rdx
        lea     rdx, [0+rax*4]
        add     rax, rdx
        sal     rax, 2
        mov     rdx, QWORD PTR [rbp-144]
        lea     rcx, [rax+rdx]
        mov     eax, DWORD PTR [rbp-76]
        movsx   rdx, eax
        mov     rax, rdx
        sal     rax, 2
        add     rax, rdx
        lea     rdx, [0+rax*4]
        add     rax, rdx
        sal     rax, 2
        mov     rdx, QWORD PTR [rbp-160]
        add     rax, rdx
        mov     rsi, rcx
        mov     rdi, rax
        call    strcpy
        mov     rax, QWORD PTR [rbp-176]
        mov     edx, DWORD PTR [rbp-76]
        movsx   rdx, edx
        mov     eax, DWORD PTR [rax+rdx*4]
        lea     ecx, [rax+1]
        mov     rax, QWORD PTR [rbp-176]
        mov     edx, DWORD PTR [rbp-76]
        movsx   rdx, edx
        mov     DWORD PTR [rax+rdx*4], ecx
        add     DWORD PTR [rbp-76], 1
.L27:
        add     DWORD PTR [rbp-80], 1
.L23:
        mov     eax, DWORD PTR [rbp-80]
        cmp     eax, DWORD PTR [rbp-60]
        jl      .L28
        mov     DWORD PTR [rbp-92], 0
        jmp     .L29
.L30:
        mov     eax, DWORD PTR [rbp-92]
        movsx   rdx, eax
        mov     rax, rdx
        sal     rax, 2
        add     rax, rdx
        lea     rdx, [0+rax*4]
        add     rax, rdx
        sal     rax, 2
        mov     rdx, QWORD PTR [rbp-160]
        lea     rcx, [rax+rdx]
        mov     rax, QWORD PTR [rbp-176]
        mov     edx, DWORD PTR [rbp-92]
        movsx   rdx, edx
        mov     edx, DWORD PTR [rax+rdx*4]
        mov     rax, QWORD PTR [rbp-56]
        mov     esi, OFFSET FLAT:.LC6
        mov     rdi, rax
        mov     eax, 0
        call    fprintf
        add     DWORD PTR [rbp-92], 1
.L29:
        mov     eax, DWORD PTR [rbp-92]
        cmp     eax, DWORD PTR [rbp-76]
        jl      .L30
        call    clock
        mov     QWORD PTR [rbp-184], rax
        mov     rax, QWORD PTR [rbp-184]
        sub     rax, QWORD PTR [rbp-104]
        pxor    xmm0, xmm0
        cvtsi2sd        xmm0, rax
        movsd   xmm1, QWORD PTR .LC7[rip]
        divsd   xmm0, xmm1
        movq    rax, xmm0
        movq    xmm0, rax
        mov     edi, OFFSET FLAT:.LC8
        mov     eax, 1
        call    printf
        mov     eax, 0
.L11:
        mov     rsp, rbx
        lea     rsp, [rbp-40]
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
.LC7:
        .long   0
        .long   1093567616
