_start:
    # x1-dest, x0 - 0 (input), 2 - input 
    addi x1, x0, 2                  # x1 = 0 + 2
    addi x2, x0, 5                  # x2 = 0 + 5
    addi x3, x0, 0                  # x3 = 0 + 0

repeat_addition:
    add x3, x3, x1                  # add x3 with x1
    addi x2, x2, -1                 # decrement by 1
    bne x2, x0, repeat_addition     # Branch/loop repeat_addition until x2 is not equal with x0
                                    # initial value x2 = 5, x0 = 0
                                    # loops until x2 becomes 0 or as long as x2 is not zero

j .                                 # loop continuously
