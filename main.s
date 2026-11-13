
.data
out:   .space 12
alpha: .word 5
beta:  .word 15
pair:  .word 20, 35
done:  .asciiz "Program completed\n"

.text
.globl main
main:
    # TODO 1: Load alpha, add 3, store to out + 0
    la t3, alpha
    lw t4, 0(t3)
    addi t4, t4, 3
    la t5, out
    sw t4, 0(t5)

    # TODO 2: Load beta, add 9, store to out + 4
    la t3, beta
    lw t4, 0(t3)
    addi t4, t4, 9
    sw t4, 4(t5)

    # TODO 3: Load pair + 4, subtract 45, store to out + 8
    la t3, pair
    lw t4, 4(t3)
    addi t4, t4, -45
    sw t4, 8(t5)

    # TODO 4: Reload out into t0, t1, t2
    lw t0, 0(t5)
    lw t1, 4(t5)
    lw t2, 8(t5)

    # Print completion message
    la a1, done
    li a0, 4
    ecall

    # Exit
    li a0, 10
    ecall
