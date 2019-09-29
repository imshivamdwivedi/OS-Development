#nasm -f elf32 kernel.asm -o kasm.o
gcc -m32 -c kernel.c -o kc.o -ffreestanding                                                                     #New
gcc -m32 -c include/system.c -o obj/system.o -ffreestanding                                                     #New
gcc -m32 -c include/string.c -o obj/string.o -ffreestanding                                                     #New
gcc -m32 -c include/screen.c -o obj/screen.o -ffreestanding                                                     #New
gcc -m32 -c include/kb.c -o obj/kb.o -ffreestanding                                                             #New
ld -m elf_i386 -T link.ld -o os/boot/kernel.bin kasm.o kc.o obj/system.o obj/string.o obj/screen.o obj/kb.o  #Updated
qemu-system-i386 -kernel os/boot/kernel.bin
#grub-mkrescue -o iknow.iso iknow/

read a


