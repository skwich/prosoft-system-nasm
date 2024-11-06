global _start

section .data
    msg db "Hello, world", 10
    msg_len equ $-msg   ; equ = const, $- = ленивый способ прочить длину

section .text
_start:
    mov eax, 4          ; номер системного вызова write()
    mov ebx, 1          ; номер дексриптора 1 = STDOUT
    mov ecx, msg        ; сообщение
    mov edx, msg_len    ; длина сообщения
    int 0x80            ; вызов системного вызова

    mov eax, 1          ; номер системного вызова exit()
    xor ebx, ebx        ; код состояния
    int 0x80            ; вызов системного вызова