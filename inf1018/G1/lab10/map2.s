.data
.text
.globl map2

map2:

pushq %rbp
movq %rsp, %rbp
subq $32, %rsp
movq %rbx, -8(%rbp)
movq %r12, -16(%rbp)
movq %r13, -24(%rbp)
movq %r14, -32(%rbp)

movl $0, %ebx
movq %rdi, %r12
movq %rsi, %r13
movl %edx, %r14d

loop:
cmpl %ebx, %r14d
jle fim_loop
movslq %ebx, %rdi
shlq $2, %rdi
addq %r12, %rdi
movl (%rdi), %edi
call f
movslq %ebx, %rdi
shlq $2, %rdi
addq %r13, %rdi
movl  %eax, (%rdi)
addl $1, %ebx
jmp loop

fim_loop:
movq -32(%rbp), %r14
movq -24(%rbp), %r13
movq -16(%rbp), %r12
movq -8(%rbp), %rbx
movq %rbp, %rsp
popq %rbp
ret