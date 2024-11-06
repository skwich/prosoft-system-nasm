;trivial_32.asm
global _start

section .text
_start:
    mov eax, 1      ; номер системного вызова exit()
    xor ebx, ebx    ; код состояния(0 - корректное завершение)
    int 0x80        ; вызов системного вызова
;nasm -f elf trivial_32.asm
;ld -m elf_i386 trivial_32.o -o trivial_32