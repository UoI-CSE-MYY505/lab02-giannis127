
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
    li s0, 0            
    li t0, 0           
loop:
    beq t0, a1, done  
    lw t1, 0(a0)      
    bne t1, a2, skip   
    mv s0, a0         

skip:
    addi a0, a0, 4     
    addi t0, t0, 1      
    j loop             
# Do not remove the prog label or write code above it!
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
