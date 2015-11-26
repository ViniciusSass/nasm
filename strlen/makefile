strlen : strlen.o
	ld -m elf_i386 -o strlen strlen.o

strlen.o : strlen.asm
	nasm -f elf -F dwarf -g strlen.asm	
		
