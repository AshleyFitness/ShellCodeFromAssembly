# ShellCodeFromAssembly
Take in argument an executable file and generate an shellcode from it 

example : 
./shellcodegenerator program

# Destinated to assembly executables
Example 
````
```
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
```
````
in shellcodes ->  \xeb\x1a\x5e\x48\x31\xc0\xb0\x01\x40\x88\xc7\x48\x31\xd2\xb2\x0f\x0f\x05\x48\x31\xc0\xb0\x3c\x48\x31\xff\x0f\x05\xe8\xe1\xff\xff\xff\x48\x65\x6c\x6c\x6f\x2c\x20\x77\x6f\x72\x6c\x64\x21\x0a
# Just an small bash script i made
