.intel_syntax noprefix
.global sleep_ms
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
