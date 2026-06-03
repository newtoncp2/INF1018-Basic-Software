.data
.text
.globl boo

boo:

pushq %rbp

movq %rsp, %rbp

subq $32, %rsp

movq %rbx, -8(%rbp)

movq %r12, -16(%rbp)

movq %r13, -24(%rbp)



movq %rdi, %rbx

movl %esi, %r12d

movl %edx, %r13d



loop:

cmpl $0, %r12d

je fim_loop

subl $1, %r12d

movl (%rbx), %edi

movl %r13d, %esi

call f



movl %eax, 4(%rbx)

addq $8, %rbx

jmp loop



fim_loop:

movq -24(%rbp), %r13

movq -16(%rbp), %r12

movq -8(%rbp), %rbx

movq %rbp, %rsp

popq %rbp

ret 