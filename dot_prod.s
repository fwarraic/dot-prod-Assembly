    .globl dot_prod
dot_prod:
	xorl %eax, %eax 	# write your code for Question 3 here
	mov $0, %r10
	pushq %r9			# push register to stack
	movl $0, %r9d
	imul %edx, %ecx		# multiply %edx %ecx
	addq %rcx, %rdi		# %add rcx to %rdi
	movq %rdi, %r11
	addq %r8, %rsi

loop:
	cmp %r10, %rdx		# compare %r10 to %rdx
	jle condition		# if less than equal then 
	movq (%r11), %r9	# go to condtion and execute
	imul (%rsi), %r9d	# else execute other instructions
	add %r9, %rax
	inc %r11
	add %rdx, %rsi
	inc %r10
	jmp loop

condition:
	popq %r9			# pop %r9 from stack
	movq %rax, %rcx
	movb %cl, %al

	ret