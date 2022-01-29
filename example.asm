global _start 
_start:
jmp short string 

code:
pop rsi ; 'Hello world'
xor rax,rax
mov al,1; write()
mov dil,al ; stdout
xor rdx,rdx 
mov dl,15
syscall


string:
call code 
db 'Hello, world!',0xA
