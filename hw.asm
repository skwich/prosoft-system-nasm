global _start

section .data
    msg db "Hello, world", 10
    msg_len equ $-msg; equ(equal) - команда присваивания, $- = ленивый способ прочить длину

section .text
_start:
    mov eax, 4
    mov edi, 1
    mov esi, msg
    mov edx, msg_len
    int 0x80

    mov eax, 1
    mov ebx, 0
    int 0x80