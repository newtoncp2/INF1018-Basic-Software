.data
str_numero: .string "numero: "
str_2: .string "%d"

.text
.global novonum
novonum:

pushq %rbp
movq %rsp, %rbp
subq $16, %rsp

movl $0, %eax
movq $str_numero, %rdi
call printf
movq $str_2, %rdi
leaq -4(%rbp), %rsi
call scanf
movl -4(%rbp), %eax

movq %rbp, %rsp
popq %rbp
ret