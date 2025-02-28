.global _start
_start:
    pushq %rbp
    movq %rsp, %rbp
    subq $0x20, %rsp

    movq $0x6F77206F6C6C6548, %rbx
    movq %rbx, (%rbp)
    movq $0x0A21646C72, %rbx
    movq %rbx, 0x08(%rbp)

    movq $0x01, %rax
    movq $0x01, %rdi
    movq %rbp, %rsi
    movq $0xD, %rdx
    syscall

    addq $0x20, %rsp
    popq %rbp

    movq $0x3c, %rax
    movq $0x0, %rdi
    syscall
