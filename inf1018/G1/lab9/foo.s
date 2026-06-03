.data
.text
.globl foo
foo:

movl $0, %r10d

movl $0, %r9d

loop:

cmpl %esi, %r9d

jge fim_loop

movq %rdi, %r8

movslq %r9d, %rax

shlq $2, %rax

addq %rax, %r8

addl (%r8), %r10d

cmpl $0, (%r8)

jne fim_if

movl %r10d, (%r8)

movl $0, %r10d

fim_if:

addl $1, %r9d

jmp loop

fim_loop:

ret 
