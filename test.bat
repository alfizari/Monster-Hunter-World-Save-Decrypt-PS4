@echo off

python mhw.py saves\memory.dat.enc decrypt
python mhw.py saves\memory.dat.dec encrypt

REM Check decrypt -> encrypt
fc /b saves\memory.dat.enc.dec saves\memory.dat.dec >nul
if %ERRORLEVEL% EQU 0 (
    echo OK: memory.dat.enc.dec matches memory.dat.dec
) else (
    echo ERROR: memory.dat.enc.dec does NOT match memory.dat.dec
    exit
)

REM Check encrypt -> decrypt
fc /b saves\memory.dat.dec.enc saves\memory.dat.enc >nul
if %ERRORLEVEL% EQU 0 (
    echo OK: memory.dat.dec.enc matches memory.dat.enc
) else (
    echo ERROR: memory.dat.dec.enc does NOT match memory.dat.enc
    exit
)
