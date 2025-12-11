


global _start 

section .text 


_start:
    
    mov rax, 1 
    mov rdi, 1
    mov rsi, message 
    mov rdx, msglen
    syscall 
    mov rax, 0 
    mov rdi, 0 
    mov rsi, input 
    mov rdx, inputlen
    syscall 
    mov rax, 1 
    mov rdi, 1
    mov rsi, input 
    mov rdx, inputlen 
    syscall 
    mov rax, 60
    syscall


section .data 

    message: db "Enter your name: "
    msglen: equ $- message


section .bss 
        
    input: resb 100
    inputlen: equ $-input
    
    
     
