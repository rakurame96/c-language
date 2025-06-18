# [The C language](https://pyjamabrah.com/products/c-language/)


This repository is sand box environment for [the C Language Course by Pyjamabrah.](https://pyjamabrah.com/products/c-language/)

![](https://pyjamabrah.com/products/c-language/c-course.png)

This file documents the commands and documents used as part of the course.

---

### Toolchain

Execute the following commands to install the toolchain, QEMU and GDB

```bash
sudo apt update -y
sudo apt install -y gcc-riscv64-unknown-elf qemu-system-misc gdb-multiarch
```

### RISC-V Reference Card

Details of the RISC-V 32i Instruction Encoding: [Download the PDF](https://github.com/jameslzhu/riscv-card/releases/download/latest/riscv-card.pdf)

### Programs Installed by `gcc-riscv64-unknown-elf`
riscv64-unknown-elf-addr2line   
riscv64-unknown-elf-g++         
riscv64-unknown-elf-gcov-dump   
riscv64-unknown-elf-objdump
riscv64-unknown-elf-ar          
riscv64-unknown-elf-gcc         
riscv64-unknown-elf-gcov-tool   
riscv64-unknown-elf-ranlib
riscv64-unknown-elf-as          
riscv64-unknown-elf-gcc-9.3.0   
riscv64-unknown-elf-gprof       
riscv64-unknown-elf-readelf
riscv64-unknown-elf-c++         
riscv64-unknown-elf-gcc-ar      
riscv64-unknown-elf-ld          
riscv64-unknown-elf-size
riscv64-unknown-elf-c++filt     
riscv64-unknown-elf-gcc-nm      
riscv64-unknown-elf-ld.bfd      
riscv64-unknown-elf-strings
riscv64-unknown-elf-cpp         
riscv64-unknown-elf-gcc-ranlib  
riscv64-unknown-elf-nm          
riscv64-unknown-elf-strip
riscv64-unknown-elf-elfedit     
riscv64-unknown-elf-gcov        
riscv64-unknown-elf-objcopy  

### Programs Installed by `qemu-system-misc`
qemu-img                  
qemu-system-alpha         
qemu-system-microblaze    
qemu-system-riscv32       
qemu-system-unicore32
qemu-io                   
qemu-system-cris          
qemu-system-microblazeel  
qemu-system-riscv64       
qemu-system-xtensa
qemu-make-debian-root     
qemu-system-hppa          
qemu-system-moxie         
qemu-system-sh4           
qemu-system-xtensaeb
qemu-nbd                  
qemu-system-lm32          
qemu-system-nios2         
qemu-system-sh4eb         
qemu-pr-helper            
qemu-system-m68k          
qemu-system-or1k          
qemu-system-tricore

### Programs Installed by `gdb`
gdb            
gdb-add-index  
gdb-multiarch  
gdbserver      
gdbtui         
gdbus          
gdbus-codegen

### Tools
1. [RISC-V Instruction Decoder](https://luplab.gitlab.io/rvcodecjs/)
2. [GDB Dashboard](https://github.com/cyrus-and/gdb-dashboard)
3. [Assembler (as) Documentation](https://ftp.gnu.org/old-gnu/Manuals/gas/html_chapter/as_7.html)
    1. [Document for RISC-V Assembler](https://sourceware.org/binutils/docs-2.31/as/RISC_002dV_002dDirectives.html)
4. [RISC-V Instruction Decoder](https://luplab.gitlab.io/rvcodecjs/)

### C
1. [ISO Standard](https://www.open-std.org/jtc1/sc22/wg14/www/docs/n1570.pdf)
1. [GNU C Manual](https://www.gnu.org/software/gnu-c-manual/gnu-c-manual.pdf)

# License and Support
```
All rights reserved. For more information contact support@pyjamabrah.com
```
