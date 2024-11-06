global _start

section .data
    filename db "output.txt", 0

    msg db "Hello, world!", 10
    msg_len equ $-msg

section .bss
    fd resb 1

section .data           ; открываем файл - записываем текст - закрываем файл - завершаем программу
_start:
    mov eax, 5          ; open()
    mov ebx, filename   ; filename
    mov ecx, 0o101      ; O_CREAT | O_WRONLY
    mov edx, 0o606      ; flags
    int 0x80            ; syscall

    mov [fd], eax       ; file descriptor

    mov eax, 4          ; write()
    mov ebx, [fd]       ; file descriptor
    mov ecx, msg        ; message
    mov edx, msg_len    ; message length
    int 0x80            ; syscall

    mov eax, 6          ; close()
    mov ebx, [fd]       ; file descriptor
    int 0x80            ; syscall

    mov eax, 1          ; exit()
    xor ebx, ebx        ; exit code = 0
    int 0x80            ; syscall