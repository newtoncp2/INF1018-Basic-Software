.data
.text
.globl add

add:

pushq %rbp
movq %rsp, %rbp
subq $16, %rsp
movq %rbx, -8(%rbp)

movl $0, %ebx
loop:
cmpq $0, %rdi
je fim_loop
addl (%rdi), %ebx
movq 8(%rdi), %rdi
jmp loop

fim_loop:
movl %ebx, %eax
movq -8(%rbp), %rbx
movq %rbp, %rsp
popq %rbp
ret