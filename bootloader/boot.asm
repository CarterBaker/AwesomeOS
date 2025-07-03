section .text
global efi_main

efi_main:
    mov     rbx, rdx           ; rbx = SystemTable pointer
    mov     rdi, [rbx + 0x30]  ; rdi = ConOut pointer (correct offset)
    mov     rax, [rdi + 8*1]   ; rax = ConOut->OutputString (2nd method pointer)
    mov     rcx, rdi           ; rcx = this pointer
    lea     rdx, [rel msg]     ; rdx = pointer to message string
    call    rax                ; call OutputString
    xor     rax, rax           ; return EFI_SUCCESS (0)
    ret

section .rodata
msg:
    dw 'H','e','l','l','o',' ','f','r','o','m',' ','A','S','M',0
