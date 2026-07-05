.intel_syntax noprefix
.global term_cols
.global term_rows
.global sys_wait
.text

term_cols:
    # rsp     : ws.ws_row (2), ws.ws_col (2), ws.xpixel (2), ws.ypixel (2)
    sub rsp, 16
    mov rdi, 0
    mov rsi, 0x5413     # TIOCGWINSZ
    mov rdx, rsp
    mov rax, 16         # sys_ioctl
    syscall
    xor rax, rax
    mov ax, [rsp + 2]   # ws.ws_col
    add rsp, 16
    ret

term_rows:
    sub rsp, 16
    mov rdi, 0
    mov rsi, 0x5413
    mov rdx, rsp
    mov rax, 16
    syscall
    xor rax, rax
    mov ax, [rsp]       # ws.ws_row
    add rsp, 16
    ret

sys_wait:
    mov rdi, -1
    xor rsi, rsi
    xor rdx, rdx
    xor r10, r10
    mov rax, 61         # sys_wait4
    syscall
    ret
