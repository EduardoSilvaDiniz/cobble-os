# Compile and run system
nasm boot.asm -f bin -o cobble.bin
truncate -s 1440k cobble.img
qemu-system-i386 -drive file=cobble.img,format=raw,index=0,if=floppy
