

section .text

    global _start


_start:

    MOV RAX, 1 
    MOV RDI, 1 
    MOV RSI, string 
    MOV RDX, len 
    syscall 
    MOV RAX, 60 
    syscall


section .data 
    string: db "Hello World"
    len: equ $-string
