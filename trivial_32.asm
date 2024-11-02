;trivial_32.asm
global _start

section .text
_start:
    mov eax, 1
    mov ebx, 0
    int 0x80  ; int-вызов прерываний,  linux-> exit()
;nasm -f elf trivial_32.asm
;ld trivial.o -o trivial_32