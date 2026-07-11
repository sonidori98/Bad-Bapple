.intel_syntax noprefix
.global sleep_ms
.global time_ms
.text

sleep_ms:
    cmp rdi, 0
    je .done

    # rsp     : tv_sec
    # rsp + 8 : tv_nsec
    sub rsp, 16

    mov rax, rdi
    mov rdx, 0
    mov rsi, 1000
    div rsi     # rax = rdi / 1000 (s), rdx = rdi % 1000 (ms)

    mov [rsp], rax
    imul rdx, 1000000
    mov [rsp + 8], rdx

    # sys_nanosleep
    mov rdi, rsp
    mov rsi, 0
    mov rax, 35
    syscall

    add rsp, 16

.done:
    ret

time_ms:
    sub rsp, 16
    mov rdi, 1
    mov rsi, rsp
    mov rax, 228
    syscall

    mov rax, [rsp]
    mov rdi, 1000
    mul rdi
    mov rcx, rax

    mov rax, [rsp + 8]
    mov rdi, 1000000
    xor rdx, rdx
    div rdi

    add rax, rcx
    add rsp, 16
    ret
