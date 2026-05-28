 .data
  nums: .int 3, -5, 7, 8, -2
  s1:   .string "%d\n"

  .text
  .globl main
  main:
  /* prologo */
     pushq %rbp
     movq  %rsp, %rbp
     subq  $16, %rsp
     movq  %rbx, -8(%rbp)
     movq  %r12, -16(%rbp)

    movq $nums, %rbx
    movl $0, %r12d

    LOOP:
    cmpl $5, %r12d
    jge FORA_LOOP

    movl (%rbx), %edi
    movl $1, %esi
    call filtro

    movq $s1, %rdi
    movl %eax, %esi
    movl $0, %eax
    call printf

    addq $4, %rbx
    addl $1, %r12d
    jmp LOOP

    FORA_LOOP:
    movl $0, %eax

  /* finalizacao */
     movq -8(%rbp), %rbx
     movq -16(%rbp), %r12
     leave
     ret