;trivial_64.asm
global _start

section .text
_start:
    mov rdi, 0
    mov rax, 60
    syscall

;nasm -f elf64 trivial_64.asm
;ld trivial.o -o trivial_64