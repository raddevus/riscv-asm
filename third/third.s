#
# Risc-V Assembler program to print "Hello RISC-V World!"
# to the Espressif SDK monitor program through the microUSB.
#
# a0 - address of helloworld string
#
.global _start    # Provide program starting address to linker
# Setup the parameter to print hello world
# and then call SDK to do it.

_start:
	addi a0, x0, 1     # StdOut
        la a1, aa  # load address of helloworld
        addi a2,x0, 1
	addi a7,x0,64
	ecall
        la a1, bb
	 addi a2, x0, 1
	 addi a7, x0, 64
	 ecall
	la a1, cc
	 addi a2, x0, 1
	 addi a7, x0, 64
        ecall
        #j _start         # loop forever

.data
    helloworld:      .asciz "Hello RISC-V World!"
    workingout:     .asciz "x"
    endOut:         .asciz "im done"
	aa: .asciz "a"
	bb: .asciz "b"
	cc: .asciz "c"
	dd: .asciz "d"
