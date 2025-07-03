@echo off
set "MSYS2_SHELL=C:\msys64\msys2_shell.cmd"
set "QEMU=C:\program files\qemu"
set "OVMF=%QEMU%\ovmf"
set "Awesome=C:\Users\Red Dragon\Documents\Development\AwesomeOS"
set "BOOTLOADERDIR=%Awesome%\bootloader"
set "EFIROOT=%Awesome%\build"
set "EFIDir=%EFIROOT%\EFI\BOOT"

echo.
echo ======= Launching AwesomeOS =======
echo.

echo ======= Running make =======
call "%MSYS2_SHELL%" -mingw64 -defterm -no-start -here -c "cd \"$BOOTLOADERDIR\" && make"
if errorlevel 1 (
    echo ERROR: Make failed.
    exit /b 1
)
echo ======= Make complete =======

echo.
echo ======= Checking EFI =======
echo.

call "%MSYS2_SHELL%" -mingw64 -defterm -no-start -here -c "cd \"$EFIDir\" && objdump -x BOOTX64.EFI"
if errorlevel 1 (
    echo ERROR: EFI check failed.
    exit /b 1
)
echo ======= Check complete =======

echo.
echo ======= Launching QEMU =======
echo.

"%QEMU%\qemu-system-x86_64.exe" ^
  -drive if=pflash,format=raw,readonly=on,file="%OVMF%\OVMF_CODE.fd" ^
  -drive if=pflash,format=raw,file="%OVMF%\OVMF_VARS.fd" ^
  -drive file=fat:rw:"%EFIROOT%",format=raw ^
  -boot order=d ^
  -serial mon:stdio ^
  -m 512M

echo.
echo ======= QEMU session ended =======