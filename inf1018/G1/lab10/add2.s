.data
.text
.globl add2

add2:

pushq %rbp
movq %rsp, %rbp
subq $16, %rsp
movq %rbx, -8(%rbp)
cmpq $0, %rdi
jne else
movq $0, %rax
jmp fim_if

else:
movl (%rdi), %ebx
movq 8(%rdi), %rdi
call add2
addl %eax, %ebx
movl %ebx, %eax

fim_if:
movq -8(%rbp), %rbx
movq %rbp, %rsp
popq %rbp

ret 

