.data
.text
.globl fat

fat:

    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)

    cmpl $0, %edi
    jne bloco_else
    movl $1, %eax
    jmp end

bloco_else:

    movl %edi, %ebx
    subl $1, %edi
    call fat
    imull %ebx, %eax

end:

    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret