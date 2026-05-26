@echo off
:loop

set filename=%RANDOM%.exe

copy nul "%filename%" >nul


timeout /t 1 /nobreak >nul

goto loop
