.text
.global bemboba
bemboba:

pushq %rbp
movq %rsp, %rbp
subq $32, %rsp

movl $0, %r10d
leaq -16(%rbp), %r11

loop:

cmpl $4, %r10d
jge fora_loop
movl %edi, (%r11)
addq $4, %r11
addl $1, %r10d
jmp loop

fora_loop:
leaq -16(%rbp), %rdi
movl $4, %esi
call addl

leave
ret