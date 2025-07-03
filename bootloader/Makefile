OUTPUT = ../build/EFI/BOOT/BOOTX64.EFI

all:
	mkdir -p ../build/EFI/BOOT
	nasm -f win64 boot.asm -o boot.obj
	lld-link /subsystem:efi_application /entry:efi_main /fixed:no -nodefaultlib /out:$(OUTPUT) boot.obj
	rm -f boot.obj

clean:
	rm -f *.o *.obj $(OUTPUT)
