### Understanding

### Commands for compilation
* Produces the a.out upon successful execution - `riscv64-unknown-elf-gcc -O0 -ggdb -nostdlib -march=rv32i -mabi=ilp32 -Wl,-Tm.ld m.s`
    - `riscv64-unknown-elf-gcc` - invoke GCC frontend
    - `-O0` - no optimisation
    - `-ggdb` - include more symbols for debugging
    - `-nostdlib` - don't include/link standard library (printf)
    - `-march=rv32i` - Architecture of the CPU we're compiling for RISC-V rv32i (only integer instructions)
    - `-mabi=ilp32` - one architecture to another architecture compatibility
    - `-Wl` - whatever data/commands present after this command, these information is for linker
    - `m.ld` - linker script file
    - `m.s` - user created assembly file

* Produces the a.elf upon successful execution - `riscv64-unknown-elf-gcc -O0 -ggdb -nostdlib -march=rv32i -mabi=ilp32 -Wl,-Tm.ld m.s -o a.elf`
    - `riscv64-unknown-elf-gcc` - invoke GCC frontend
    - `-O0` - no optimisation
    - `-ggdb` - include more symbols for debugging
    - `-nostdlib` - don't include/link standard library (printf)
    - `-march=rv32i` - Architecture of the CPU we're compiling for RISC-V rv32i (only integer instructions)
    - `-mabi=ilp32` - one architecture to another architecture compatibility
    - `-Wl` - whatever data/commands present after this command, these information is for linker
    - `m.ld` - linker script file
    - `m.s` - user created assembly file

* Connect with the QEMU using GDB
    - `qemu-system-riscv32 -S -M virt -nographic -bios none -kernel main.elf -gdb tcp::1234`
        - `qemu-system-riscv32` - Use QEMU RISCV system
        - `-S` - As soon as started, stop at first instruction
        - `-M virt` - virtual machine
        - `-nographic` - no graphics
        - `-bios none` - no bios
        - `-kernel main.elf` - use this main.elf
        - `-gdb tcp::1234` - open a tcp port for debugging

* start the gdb-multiarch in another terminal
    - `gdb-multiarch main.elf -ex "target remote localhost:1234" -ex "break _start" -ex "continue" -q`

* create a binary file from `main.elf` by removing all debug and other metadata information
    - `riscv64-unknown-elf-objcopy -O binary main.elf main.bin`

* print the binary contents in raw bit (0's and 1's)
    - `xxd -e -c 4 -g 4 main.bin` 
        - `00000000: 0000006f  o...`
            - infinite loop
            - jump instruction
        
    - Breakdown of xxd options:
        - `-e`
            Little-endian output: This tells xxd to reverse the byte order within each group (endianness), showing data in little-endian format.

        - `-c 4`
            Columns (bytes) per line = 4: Only 4 bytes will be displayed per line.

        - `-g 4`
            Group size = 4 bytes: Groups bytes in 4-byte chunks (i.e., 32-bit words). Since you're also using -e, these will be shown as little-endian 32-bit words.