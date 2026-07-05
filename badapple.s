.intel_syntax noprefix
.global main

.comm .term_cols, 8, 8
.comm .term_rows, 8, 8
.comm .sys_wait, 8, 8
.comm .dims, 16, 8
.comm .outbuf, 1600000, 8
.comm .path, 240, 8
.comm .pxbuf, 520000, 8
.data
.charset:
    .quad 32
    .quad 46
    .quad 45
    .quad 43
    .quad 42
    .quad 119
    .quad 71
    .quad 72
    .quad 77
    .quad 35
    .quad 38
    .quad 37
.text
build_path:
    push rbp
    mov rbp, rsp
    sub rsp, 96
    mov [rbp + -8], rdi
    lea rax, [rip + .path]
    push rax
    mov rax, 0
    push rax
    mov rax, 103
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    lea rax, [rip + .path]
    push rax
    mov rax, 1
    push rax
    mov rax, 101
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    lea rax, [rip + .path]
    push rax
    mov rax, 2
    push rax
    mov rax, 110
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    lea rax, [rip + .path]
    push rax
    mov rax, 3
    push rax
    mov rax, 47
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, 4
    push rax
    pop rax
    mov [rbp + -24], rax
    mov rax, 0
    push rax
    pop rax
    mov [rbp + -88], rax
    mov rax, [rbp + -8]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    sete al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_ELSE_0
    lea rax, [rbp + -80]
    push rax
    mov rax, 0
    push rax
    mov rax, 0
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    mov rax, 1
    push rax
    pop rax
    mov [rbp + -88], rax
    jmp .L_END_0
.L_ELSE_0:
.L_WHILE_START_1:
    mov rax, [rbp + -8]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setg al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_WHILE_END_1
    lea rax, [rbp + -80]
    push rax
    mov rax, [rbp + -88]
    push rax
    mov rax, [rbp + -8]
    push rax
    mov rax, 10
    push rax
    pop rdi
    pop rax
    cqo
    idiv rdi
    mov rax, rdx
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    mov rax, [rbp + -8]
    push rax
    mov rax, 10
    push rax
    pop rdi
    pop rax
    cqo
    idiv rdi
    push rax
    pop rax
    mov [rbp + -8], rax
    mov rax, [rbp + -88]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -88], rax
    jmp .L_WHILE_START_1
.L_WHILE_END_1:
.L_END_0:
    mov rax, [rbp + -88]
    push rax
    pop rax
    mov [rbp + -32], rax
.L_WHILE_START_2:
    mov rax, [rbp + -32]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setg al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_WHILE_END_2
    mov rax, [rbp + -32]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    sub rax, rdi
    push rax
    pop rax
    mov [rbp + -32], rax
    lea rax, [rip + .path]
    push rax
    mov rax, [rbp + -24]
    push rax
    lea rax, [rbp + -80]
    push rax
    mov rax, [rbp + -32]
    push rax
    pop rdi
    pop rax
    mov rax, [rax + rdi*8]
    push rax
    mov rax, 48
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, [rbp + -24]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -24], rax
    jmp .L_WHILE_START_2
.L_WHILE_END_2:
    lea rax, [rip + .path]
    push rax
    mov rax, [rbp + -24]
    push rax
    mov rax, 46
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, [rbp + -24]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -24], rax
    lea rax, [rip + .path]
    push rax
    mov rax, [rbp + -24]
    push rax
    mov rax, 98
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, [rbp + -24]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -24], rax
    lea rax, [rip + .path]
    push rax
    mov rax, [rbp + -24]
    push rax
    mov rax, 109
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, [rbp + -24]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -24], rax
    lea rax, [rip + .path]
    push rax
    mov rax, [rbp + -24]
    push rax
    mov rax, 112
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, [rbp + -24]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -24], rax
    lea rax, [rip + .path]
    push rax
    mov rax, [rbp + -24]
    push rax
    mov rax, 0
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rsp, rbp
    pop rbp
    ret
read_dims:
    push rbp
    mov rbp, rsp
    sub rsp, 16
    lea rax, [rip + .string_0]
    push rax
    mov rax, 0
    push rax
    pop rsi
    pop rdi
    call open
    push rax
    pop rax
    mov [rbp + -16], rax
    mov rax, [rbp + -16]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setl al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_END_3
    lea rax, [rip + .string_1]
    push rax
    pop rdi
    call printf
    push rax
    pop rax
    call exit
    push rax
    pop rax
.L_END_3:
    mov rax, [rbp + -16]
    push rax
    lea rax, [rip + .dims]
    push rax
    mov rax, 16
    push rax
    pop rdx
    pop rsi
    pop rdi
    call nread
    push rax
    pop rax
    mov rax, [rbp + -16]
    push rax
    pop rdi
    call close
    push rax
    pop rax
    mov rsp, rbp
    pop rbp
    ret
convert_frame:
    push rbp
    mov rbp, rsp
    sub rsp, 128
    mov [rbp + -8], rdi
    lea rax, [rip + .dims]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    mov rax, [rax + rdi*8]
    push rax
    pop rax
    mov [rbp + -96], rax
    lea rax, [rip + .dims]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    mov rax, [rax + rdi*8]
    push rax
    pop rax
    mov [rbp + -104], rax
    mov rax, [rbp + -96]
    push rax
    mov rax, 3
    push rax
    pop rdi
    pop rax
    imul rax, rdi
    push rax
    pop rax
    mov [rbp + -112], rax
    mov rax, [rbp + -112]
    push rax
    mov rax, 4
    push rax
    pop rdi
    pop rax
    cqo
    idiv rdi
    mov rax, rdx
    push rax
    pop rax
    mov [rbp + -120], rax
    mov rax, [rbp + -120]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setg al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_END_4
    mov rax, [rbp + -112]
    push rax
    mov rax, 4
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    mov rax, [rbp + -120]
    push rax
    pop rdi
    pop rax
    sub rax, rdi
    push rax
    pop rax
    mov [rbp + -112], rax
.L_END_4:
    mov rax, 0
    push rax
    pop rax
    mov [rbp + -88], rax
    lea rax, [rip + .outbuf]
    push rax
    mov rax, 0
    push rax
    mov rax, 27
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    lea rax, [rip + .outbuf]
    push rax
    mov rax, 1
    push rax
    mov rax, 91
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    lea rax, [rip + .outbuf]
    push rax
    mov rax, 2
    push rax
    mov rax, 48
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    lea rax, [rip + .outbuf]
    push rax
    mov rax, 3
    push rax
    mov rax, 59
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    lea rax, [rip + .outbuf]
    push rax
    mov rax, 4
    push rax
    mov rax, 48
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    lea rax, [rip + .outbuf]
    push rax
    mov rax, 5
    push rax
    mov rax, 72
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, 6
    push rax
    pop rax
    mov [rbp + -88], rax
    mov rax, [rbp + -8]
    push rax
    mov rax, 54
    push rax
    mov rax, 0
    push rax
    pop rdx
    pop rsi
    pop rdi
    call seek
    push rax
    pop rax
    mov rax, [rbp + -8]
    push rax
    lea rax, [rip + .pxbuf]
    push rax
    mov rax, [rbp + -112]
    push rax
    mov rax, [rbp + -104]
    push rax
    pop rdi
    pop rax
    imul rax, rdi
    push rax
    pop rdx
    pop rsi
    pop rdi
    call nread
    push rax
    pop rax
    mov rax, [rbp + -104]
    push rax
    pop rax
    mov [rbp + -24], rax
.L_WHILE_START_5:
    mov rax, [rbp + -24]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setg al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_WHILE_END_5
    mov rax, [rbp + -24]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    sub rax, rdi
    push rax
    pop rax
    mov [rbp + -24], rax
    mov rax, [rbp + -24]
    push rax
    mov rax, [rbp + -112]
    push rax
    pop rdi
    pop rax
    imul rax, rdi
    push rax
    pop rax
    mov [rbp + -80], rax
    mov rax, 0
    push rax
    pop rax
    mov [rbp + -32], rax
.L_WHILE_START_6:
    mov rax, [rbp + -32]
    push rax
    mov rax, [rbp + -96]
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setl al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_WHILE_END_6
    lea rax, [rip + .pxbuf]
    push rax
    mov rax, [rbp + -80]
    push rax
    pop rsi
    pop rdi
    call char
    push rax
    pop rax
    mov [rbp + -56], rax
    lea rax, [rip + .pxbuf]
    push rax
    mov rax, [rbp + -80]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rsi
    pop rdi
    call char
    push rax
    pop rax
    mov [rbp + -48], rax
    lea rax, [rip + .pxbuf]
    push rax
    mov rax, [rbp + -80]
    push rax
    mov rax, 2
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rsi
    pop rdi
    call char
    push rax
    pop rax
    mov [rbp + -40], rax
    mov rax, 2126
    push rax
    mov rax, [rbp + -40]
    push rax
    pop rdi
    pop rax
    imul rax, rdi
    push rax
    mov rax, 7152
    push rax
    mov rax, [rbp + -48]
    push rax
    pop rdi
    pop rax
    imul rax, rdi
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    mov rax, 722
    push rax
    mov rax, [rbp + -56]
    push rax
    pop rdi
    pop rax
    imul rax, rdi
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -64], rax
    mov rax, [rbp + -64]
    push rax
    mov rax, 11
    push rax
    pop rdi
    pop rax
    imul rax, rdi
    push rax
    mov rax, 2550000
    push rax
    pop rdi
    pop rax
    cqo
    idiv rdi
    push rax
    pop rax
    mov [rbp + -72], rax
    mov rax, [rbp + -72]
    push rax
    mov rax, 11
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setg al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_END_7
    mov rax, 11
    push rax
    pop rax
    mov [rbp + -72], rax
.L_END_7:
    lea rax, [rip + .outbuf]
    push rax
    mov rax, [rbp + -88]
    push rax
    lea rax, [rip + .charset]
    push rax
    mov rax, [rbp + -72]
    push rax
    pop rdi
    pop rax
    mov rax, [rax + rdi*8]
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, [rbp + -88]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -88], rax
    mov rax, [rbp + -80]
    push rax
    mov rax, 3
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -80], rax
    mov rax, [rbp + -32]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -32], rax
    jmp .L_WHILE_START_6
.L_WHILE_END_6:
    lea rax, [rip + .outbuf]
    push rax
    mov rax, [rbp + -88]
    push rax
    mov rax, 10
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, [rbp + -88]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -88], rax
    jmp .L_WHILE_START_5
.L_WHILE_END_5:
    mov rax, [rbp + -88]
    push rax
    pop rax
    mov rsp, rbp
    pop rbp
    ret
    mov rsp, rbp
    pop rbp
    ret
flush:
    push rbp
    mov rbp, rsp
    sub rsp, 16
    mov [rbp + -8], rdi
    mov rax, 1
    push rax
    lea rax, [rip + .outbuf]
    push rax
    mov rax, [rbp + -8]
    push rax
    pop rdx
    pop rsi
    pop rdi
    call nwrite
    push rax
    pop rax
    mov rsp, rbp
    pop rbp
    ret
build_scale:
    push rbp
    mov rbp, rsp
    sub rsp, 112
    mov [rbp + -8], rdi
    mov [rbp + -16], rsi
    mov [rbp + -24], rdx
    mov rax, 0
    push rax
    pop rax
    mov [rbp + -40], rax
    mov rax, [rbp + -8]
    push rax
    mov rax, 0
    push rax
    mov rax, 115
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, [rbp + -40]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -40], rax
    mov rax, [rbp + -8]
    push rax
    mov rax, 1
    push rax
    mov rax, 99
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, [rbp + -40]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -40], rax
    mov rax, [rbp + -8]
    push rax
    mov rax, 2
    push rax
    mov rax, 97
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, [rbp + -40]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -40], rax
    mov rax, [rbp + -8]
    push rax
    mov rax, 3
    push rax
    mov rax, 108
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, [rbp + -40]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -40], rax
    mov rax, [rbp + -8]
    push rax
    mov rax, 4
    push rax
    mov rax, 101
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, [rbp + -40]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -40], rax
    mov rax, [rbp + -8]
    push rax
    mov rax, 5
    push rax
    mov rax, 61
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, [rbp + -40]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -40], rax
    mov rax, [rbp + -16]
    push rax
    pop rax
    mov [rbp + -64], rax
    mov rax, 0
    push rax
    pop rax
    mov [rbp + -56], rax
    mov rax, [rbp + -64]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    sete al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_ELSE_8
    lea rax, [rbp + -112]
    push rax
    mov rax, 0
    push rax
    mov rax, 0
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    mov rax, 1
    push rax
    pop rax
    mov [rbp + -56], rax
    jmp .L_END_8
.L_ELSE_8:
.L_WHILE_START_9:
    mov rax, [rbp + -64]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setg al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_WHILE_END_9
    lea rax, [rbp + -112]
    push rax
    mov rax, [rbp + -56]
    push rax
    mov rax, [rbp + -64]
    push rax
    mov rax, 10
    push rax
    pop rdi
    pop rax
    cqo
    idiv rdi
    mov rax, rdx
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    mov rax, [rbp + -64]
    push rax
    mov rax, 10
    push rax
    pop rdi
    pop rax
    cqo
    idiv rdi
    push rax
    pop rax
    mov [rbp + -64], rax
    mov rax, [rbp + -56]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -56], rax
    jmp .L_WHILE_START_9
.L_WHILE_END_9:
.L_END_8:
    mov rax, [rbp + -56]
    push rax
    pop rax
    mov [rbp + -48], rax
.L_WHILE_START_10:
    mov rax, [rbp + -48]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setg al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_WHILE_END_10
    mov rax, [rbp + -48]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    sub rax, rdi
    push rax
    pop rax
    mov [rbp + -48], rax
    mov rax, [rbp + -8]
    push rax
    mov rax, [rbp + -40]
    push rax
    lea rax, [rbp + -112]
    push rax
    mov rax, [rbp + -48]
    push rax
    pop rdi
    pop rax
    mov rax, [rax + rdi*8]
    push rax
    mov rax, 48
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, [rbp + -40]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -40], rax
    jmp .L_WHILE_START_10
.L_WHILE_END_10:
    mov rax, [rbp + -8]
    push rax
    mov rax, [rbp + -40]
    push rax
    mov rax, 58
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, [rbp + -40]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -40], rax
    mov rax, [rbp + -24]
    push rax
    pop rax
    mov [rbp + -64], rax
    mov rax, 0
    push rax
    pop rax
    mov [rbp + -56], rax
    mov rax, [rbp + -64]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    sete al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_ELSE_11
    lea rax, [rbp + -112]
    push rax
    mov rax, 0
    push rax
    mov rax, 0
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    mov rax, 1
    push rax
    pop rax
    mov [rbp + -56], rax
    jmp .L_END_11
.L_ELSE_11:
.L_WHILE_START_12:
    mov rax, [rbp + -64]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setg al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_WHILE_END_12
    lea rax, [rbp + -112]
    push rax
    mov rax, [rbp + -56]
    push rax
    mov rax, [rbp + -64]
    push rax
    mov rax, 10
    push rax
    pop rdi
    pop rax
    cqo
    idiv rdi
    mov rax, rdx
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    mov rax, [rbp + -64]
    push rax
    mov rax, 10
    push rax
    pop rdi
    pop rax
    cqo
    idiv rdi
    push rax
    pop rax
    mov [rbp + -64], rax
    mov rax, [rbp + -56]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -56], rax
    jmp .L_WHILE_START_12
.L_WHILE_END_12:
.L_END_11:
    mov rax, [rbp + -56]
    push rax
    pop rax
    mov [rbp + -48], rax
.L_WHILE_START_13:
    mov rax, [rbp + -48]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setg al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_WHILE_END_13
    mov rax, [rbp + -48]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    sub rax, rdi
    push rax
    pop rax
    mov [rbp + -48], rax
    mov rax, [rbp + -8]
    push rax
    mov rax, [rbp + -40]
    push rax
    lea rax, [rbp + -112]
    push rax
    mov rax, [rbp + -48]
    push rax
    pop rdi
    pop rax
    mov rax, [rax + rdi*8]
    push rax
    mov rax, 48
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rax, [rbp + -40]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -40], rax
    jmp .L_WHILE_START_13
.L_WHILE_END_13:
    mov rax, [rbp + -8]
    push rax
    mov rax, [rbp + -40]
    push rax
    mov rax, 0
    push rax
    pop rdx
    pop rsi
    pop rdi
    call lchar
    push rax
    pop rax
    mov rsp, rbp
    pop rbp
    ret
ensure_frames:
    push rbp
    mov rbp, rsp
    sub rsp, 384
    call term_cols
    push rax
    pop rax
    mov [rbp + -16], rax
    call term_rows
    push rax
    pop rax
    mov [rbp + -24], rax
    mov rax, [rbp + -24]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    sub rax, rdi
    push rax
    pop rax
    mov [rbp + -24], rax
    mov rax, [rbp + -16]
    push rax
    mov rax, 480
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setg al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_END_14
    mov rax, 480
    push rax
    pop rax
    mov [rbp + -16], rax
.L_END_14:
    mov rax, [rbp + -24]
    push rax
    mov rax, 360
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setg al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_END_15
    mov rax, 360
    push rax
    pop rax
    mov [rbp + -24], rax
.L_END_15:
    lea rax, [rip + .string_2]
    push rax
    mov rax, 0
    push rax
    pop rsi
    pop rdi
    call open
    push rax
    pop rax
    mov [rbp + -32], rax
    mov rax, [rbp + -32]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setge al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_END_16
    mov rax, [rbp + -32]
    push rax
    lea rax, [rbp + -56]
    push rax
    mov rax, 16
    push rax
    pop rdx
    pop rsi
    pop rdi
    call nread
    push rax
    pop rax
    mov rax, [rbp + -32]
    push rax
    pop rdi
    call close
    push rax
    pop rax
    lea rax, [rbp + -56]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    mov rax, [rax + rdi*8]
    push rax
    pop rax
    mov [rbp + -64], rax
    lea rax, [rbp + -56]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    mov rax, [rax + rdi*8]
    push rax
    pop rax
    mov [rbp + -72], rax
    lea rax, [rip + .string_3]
    push rax
    mov rax, 0
    push rax
    pop rsi
    pop rdi
    call open
    push rax
    pop rax
    mov [rbp + -32], rax
    mov rax, [rbp + -32]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setge al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_END_17
    mov rax, [rbp + -32]
    push rax
    pop rdi
    call close
    push rax
    pop rax
    mov rax, [rbp + -64]
    push rax
    mov rax, [rbp + -16]
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    sete al
    movzx rax, al
    push rax
    lea rax, [rbp + -72]
    push rax
    mov rax, [rbp + -24]
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    sete al
    movzx rax, al
    push rax
    pop rdi
    pop rax
    and rax, rdi
    push rax
    pop rax
    cmp rax, 0
    je .L_END_18
    mov rax, 0
    push rax
    pop rax
    mov rsp, rbp
    pop rbp
    ret
.L_END_18:
.L_END_17:
.L_END_16:
    lea rax, [rip + .string_4]
    push rax
    mov rax, [rbp + -16]
    push rax
    mov rax, [rbp + -24]
    push rax
    pop rdx
    pop rsi
    pop rdi
    call printf
    push rax
    pop rax
    call fork
    push rax
    pop rax
    mov [rbp + -40], rax
    mov rax, [rbp + -40]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    sete al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_END_19
    lea rax, [rip + .string_5]
    push rax
    lea rax, [rip + .string_6]
    push rax
    lea rax, [rip + .string_7]
    push rax
    lea rax, [rip + .string_8]
    push rax
    mov rax, 0
    push rax
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    call execl
    push rax
    pop rax
    call exit
    push rax
    pop rax
.L_END_19:
.L_WHILE_START_20:
    call sys_wait
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setl al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_WHILE_END_20
    jmp .L_WHILE_START_20
.L_WHILE_END_20:
    call fork
    push rax
    pop rax
    mov [rbp + -40], rax
    mov rax, [rbp + -40]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    sete al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_END_21
    lea rax, [rip + .string_9]
    push rax
    lea rax, [rip + .string_10]
    push rax
    lea rax, [rip + .string_11]
    push rax
    lea rax, [rip + .string_12]
    push rax
    mov rax, 0
    push rax
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    call execl
    push rax
    pop rax
    call exit
    push rax
    pop rax
.L_END_21:
.L_WHILE_START_22:
    call sys_wait
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setl al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_WHILE_END_22
    jmp .L_WHILE_START_22
.L_WHILE_END_22:
    lea rax, [rbp + -56]
    push rax
    mov rax, 0
    push rax
    mov rax, [rbp + -16]
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    lea rax, [rbp + -56]
    push rax
    mov rax, 1
    push rax
    mov rax, [rbp + -24]
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    lea rax, [rip + .string_13]
    push rax
    mov rax, 420
    push rax
    pop rsi
    pop rdi
    call creat
    push rax
    pop rax
    mov [rbp + -32], rax
    mov rax, [rbp + -32]
    push rax
    lea rax, [rbp + -56]
    push rax
    mov rax, 16
    push rax
    pop rdx
    pop rsi
    pop rdi
    call nwrite
    push rax
    pop rax
    mov rax, [rbp + -32]
    push rax
    pop rdi
    call close
    push rax
    pop rax
    lea rax, [rbp + -312]
    push rax
    mov rax, [rbp + -16]
    push rax
    mov rax, [rbp + -24]
    push rax
    pop rdx
    pop rsi
    pop rdi
    call build_scale
    push rax
    pop rax
    lea rax, [rbp + -384]
    push rax
    mov rax, 0
    push rax
    lea rax, [rip + .string_14]
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    lea rax, [rbp + -384]
    push rax
    mov rax, 1
    push rax
    lea rax, [rip + .string_15]
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    lea rax, [rbp + -384]
    push rax
    mov rax, 2
    push rax
    lea rax, [rip + .string_16]
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    lea rax, [rbp + -384]
    push rax
    mov rax, 3
    push rax
    lea rax, [rip + .string_17]
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    lea rax, [rbp + -384]
    push rax
    mov rax, 4
    push rax
    lea rax, [rip + .string_18]
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    lea rax, [rbp + -384]
    push rax
    mov rax, 5
    push rax
    lea rax, [rip + .string_19]
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    lea rax, [rbp + -384]
    push rax
    mov rax, 6
    push rax
    lea rax, [rbp + -312]
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    lea rax, [rbp + -384]
    push rax
    mov rax, 7
    push rax
    lea rax, [rip + .string_20]
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    lea rax, [rbp + -384]
    push rax
    mov rax, 8
    push rax
    mov rax, 0
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    call fork
    push rax
    pop rax
    mov [rbp + -40], rax
    mov rax, [rbp + -40]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    sete al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_END_23
    lea rax, [rip + .string_21]
    push rax
    lea rax, [rbp + -384]
    push rax
    mov rax, 8
    push rax
    pop rdx
    pop rsi
    pop rdi
    call execv
    push rax
    pop rax
    lea rax, [rip + .string_22]
    push rax
    lea rax, [rbp + -384]
    push rax
    mov rax, 8
    push rax
    pop rdx
    pop rsi
    pop rdi
    call execv
    push rax
    pop rax
    call exit
    push rax
    pop rax
.L_END_23:
.L_WHILE_START_24:
    call sys_wait
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setl al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_WHILE_END_24
    jmp .L_WHILE_START_24
.L_WHILE_END_24:
    mov rsp, rbp
    pop rbp
    ret
main:
    push rbp
    mov rbp, rsp
    sub rsp, 96
    mov [rbp + -8], rdi
    mov [rbp + -16], rsi
    mov rax, [rbp + -8]
    push rax
    mov rax, 2
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setl al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_END_25
    lea rax, [rip + .string_23]
    push rax
    pop rdi
    call printf
    push rax
    pop rax
    call exit
    push rax
    pop rax
.L_END_25:
    lea rax, [rbp + -96]
    push rax
    mov rax, 0
    push rax
    lea rax, [rip + .string_24]
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    lea rax, [rbp + -96]
    push rax
    mov rax, 1
    push rax
    lea rax, [rip + .string_25]
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    lea rax, [rbp + -96]
    push rax
    mov rax, 2
    push rax
    mov rax, [rbp + -16]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    mov rax, [rax + rdi*8]
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    lea rax, [rbp + -96]
    push rax
    mov rax, 3
    push rax
    lea rax, [rip + .string_26]
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    lea rax, [rbp + -96]
    push rax
    mov rax, 4
    push rax
    mov rax, 0
    push rax
    pop rcx
    pop rdi
    pop rax
    mov [rax + rdi*8], rcx
    call fork
    push rax
    pop rax
    mov [rbp + -48], rax
    mov rax, [rbp + -48]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    sete al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_END_26
    lea rax, [rip + .string_27]
    push rax
    lea rax, [rbp + -96]
    push rax
    mov rax, 4
    push rax
    pop rdx
    pop rsi
    pop rdi
    call execv
    push rax
    pop rax
    call exit
    push rax
    pop rax
.L_END_26:
.L_WHILE_START_27:
    call sys_wait
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setl al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_WHILE_END_27
    jmp .L_WHILE_START_27
.L_WHILE_END_27:
    call ensure_frames
    push rax
    pop rax
    call read_dims
    push rax
    pop rax
    lea rax, [rip + .string_28]
    push rax
    mov rax, 27
    push rax
    pop rsi
    pop rdi
    call printf
    push rax
    pop rax
    mov rax, 1
    push rax
    pop rdi
    call build_path
    push rax
    pop rax
    lea rax, [rip + .path]
    push rax
    mov rax, 0
    push rax
    pop rsi
    pop rdi
    call open
    push rax
    pop rax
    mov [rbp + -32], rax
    mov rax, [rbp + -32]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setl al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_END_28
    lea rax, [rip + .string_29]
    push rax
    pop rdi
    call printf
    push rax
    pop rax
    call exit
    push rax
    pop rax
.L_END_28:
    mov rax, [rbp + -32]
    push rax
    pop rdi
    call close
    push rax
    pop rax
    call fork
    push rax
    pop rax
    mov [rbp + -48], rax
    mov rax, [rbp + -48]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    sete al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_END_29
    lea rax, [rip + .string_30]
    push rax
    lea rax, [rip + .string_31]
    push rax
    lea rax, [rip + .string_32]
    push rax
    lea rax, [rip + .string_33]
    push rax
    mov rax, 0
    push rax
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    call execl
    push rax
    pop rax
    call exit
    push rax
    pop rax
.L_END_29:
    mov rax, 1
    push rax
    pop rax
    mov [rbp + -40], rax
.L_WHILE_START_30:
    mov rax, 1
    push rax
    pop rax
    cmp rax, 0
    je .L_WHILE_END_30
    mov rax, [rbp + -40]
    push rax
    pop rdi
    call build_path
    push rax
    pop rax
    lea rax, [rip + .path]
    push rax
    mov rax, 0
    push rax
    pop rsi
    pop rdi
    call open
    push rax
    pop rax
    mov [rbp + -32], rax
    mov rax, [rbp + -32]
    push rax
    mov rax, 0
    push rax
    pop rdi
    pop rax
    cmp rax, rdi
    setl al
    movzx rax, al
    push rax
    pop rax
    cmp rax, 0
    je .L_END_31
    jmp .Lmain_done
.L_END_31:
    mov rax, [rbp + -32]
    push rax
    pop rdi
    call convert_frame
    push rax
    pop rax
    mov [rbp + -56], rax
    mov rax, [rbp + -32]
    push rax
    pop rdi
    call close
    push rax
    pop rax
    mov rax, [rbp + -56]
    push rax
    pop rdi
    call flush
    push rax
    pop rax
    mov rax, 33
    push rax
    pop rdi
    call sleep_ms
    push rax
    pop rax
    mov rax, [rbp + -40]
    push rax
    mov rax, 1
    push rax
    pop rdi
    pop rax
    add rax, rdi
    push rax
    pop rax
    mov [rbp + -40], rax
    jmp .L_WHILE_START_30
.L_WHILE_END_30:
.Lmain_done:
    lea rax, [rip + .string_34]
    push rax
    mov rax, 27
    push rax
    pop rsi
    pop rdi
    call printf
    push rax
    pop rax
    mov rsp, rbp
    pop rbp
    ret

.section .rodata
.string_0:
    .byte 103, 101, 110, 47, 95, 105, 110, 102, 111, 0
.string_1:
    .byte 110, 111, 32, 103, 101, 110, 47, 95, 105, 110, 102, 111, 10, 0
.string_2:
    .byte 103, 101, 110, 47, 95, 105, 110, 102, 111, 0
.string_3:
    .byte 103, 101, 110, 47, 49, 46, 98, 109, 112, 0
.string_4:
    .byte 116, 101, 114, 109, 105, 110, 97, 108, 58, 32, 37, 100, 120, 37, 100, 44, 32, 101, 120, 116, 114, 97, 99, 116, 105, 110, 103, 32, 102, 114, 97, 109, 101, 115, 46, 46, 46, 10, 0
.string_5:
    .byte 47, 98, 105, 110, 47, 114, 109, 0
.string_6:
    .byte 114, 109, 0
.string_7:
    .byte 45, 114, 102, 0
.string_8:
    .byte 103, 101, 110, 0
.string_9:
    .byte 47, 98, 105, 110, 47, 109, 107, 100, 105, 114, 0
.string_10:
    .byte 109, 107, 100, 105, 114, 0
.string_11:
    .byte 45, 112, 0
.string_12:
    .byte 103, 101, 110, 0
.string_13:
    .byte 103, 101, 110, 47, 95, 105, 110, 102, 111, 0
.string_14:
    .byte 102, 102, 109, 112, 101, 103, 0
.string_15:
    .byte 45, 105, 0
.string_16:
    .byte 109, 111, 118, 105, 101, 46, 109, 112, 52, 0
.string_17:
    .byte 45, 114, 0
.string_18:
    .byte 51, 48, 0
.string_19:
    .byte 45, 118, 102, 0
.string_20:
    .byte 103, 101, 110, 47, 37, 100, 46, 98, 109, 112, 0
.string_21:
    .byte 47, 117, 115, 114, 47, 98, 105, 110, 47, 102, 102, 109, 112, 101, 103, 0
.string_22:
    .byte 47, 98, 105, 110, 47, 102, 102, 109, 112, 101, 103, 0
.string_23:
    .byte 117, 115, 97, 103, 101, 58, 32, 98, 97, 100, 97, 112, 112, 108, 101, 32, 60, 118, 105, 100, 101, 111, 62, 10, 0
.string_24:
    .byte 108, 110, 0
.string_25:
    .byte 45, 115, 102, 0
.string_26:
    .byte 109, 111, 118, 105, 101, 46, 109, 112, 52, 0
.string_27:
    .byte 47, 98, 105, 110, 47, 108, 110, 0
.string_28:
    .byte 37, 99, 91, 63, 50, 53, 108, 0
.string_29:
    .byte 110, 111, 32, 102, 114, 97, 109, 101, 115, 10, 0
.string_30:
    .byte 47, 98, 105, 110, 47, 115, 104, 0
.string_31:
    .byte 115, 104, 0
.string_32:
    .byte 45, 99, 0
.string_33:
    .byte 102, 102, 112, 108, 97, 121, 32, 45, 110, 111, 100, 105, 115, 112, 32, 45, 97, 117, 116, 111, 101, 120, 105, 116, 32, 109, 111, 118, 105, 101, 46, 109, 112, 52, 0
.string_34:
    .byte 37, 99, 91, 63, 50, 53, 104, 10, 0
