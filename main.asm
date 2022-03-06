global _start

section .text

_start:
    mov eax, 0x4
    mov ebx, 1
    mov ecx, msg
    mov edx, msg_len
    int 0x80

    mov eax, 0x1
    mov ebx, 0
    int 0x80

section .data
msg: db "프젝 코딩 많이 하면 안돼",0xA
msg_len equ $-msg
