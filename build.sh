nasm -f elf32 src/kernel.asm -o obj/kasm.o
gcc -m32 -c src/kernel.c -o obj/kc.o -ffreestanding                                                                     #New
gcc -m32 -c src/system.c -o obj/system.o -ffreestanding                                                     #New
gcc -m32 -c src/isr.c -o obj/isr.o -ffreestanding
#New
gcc -m32 -c src/idt.c -o obj/idt.o -ffreestanding
#new
gcc -m32 -c src/util.c -o obj/util.o -ffreestanding
#new
gcc -m32 -c src/string.c -o obj/string.o -ffreestanding                                                     #New
gcc -m32 -c src/screen.c -o obj/screen.o -ffreestanding                                                     #New
gcc -m32 -c src/kb.c -o obj/kb.o -ffreestanding                                                             #New
ld -m elf_i386 -T src/link.ld -o os/boot/kernel.bin obj/kasm.o obj/kc.o obj/isr.o obj/system.o obj/string.o obj/screen.o obj/kb.o obj/idt.o obj/util.o obj/shell.o #Updated
qemu-system-i386 -kernel os/boot/kernel.bin
grub-mkrescue -o K_OS.iso os/

read a


