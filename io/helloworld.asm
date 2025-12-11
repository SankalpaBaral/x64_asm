

global _start ; program's entry point

section .text ; text section where we write the instructions

_start:
    
    MOV RAX, 1 ;moves syscall number "1" to the RAX register
    MOV RDI, 1 ; moves 1 to the RDI register which is for stdout 
    MOV RSI, message 
    MOV RDX, msglen 
    syscall ; performs the syscall 
    MOV RAX, 60 
    syscall ; performs the syscall 

section .data ; data section where we define our variables

    message: db "Hello World",10 ;stores the message in the variable and adds "\n" at the end 
    msglen: equ $-message ; calculates the length of the message 

