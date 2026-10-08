@echo off
setlocal DisableDelayedExpansion
if not exist "%~dp0dsdmo.dll" goto missing
if not exist "%~dp0msdmo.dll" goto missing

set "registrar=%SystemRoot%\System32\regsvr32.exe"
if defined PROCESSOR_ARCHITEW6432 set "registrar=%SystemRoot%\Sysnative\regsvr32.exe"
if /i "%PROCESSOR_ARCHITECTURE%"=="AMD64" goto register
if /i "%PROCESSOR_ARCHITEW6432%"=="AMD64" goto register
echo This package needs a 64-bit Wine/Proton prefix. >&2
exit /b 2

:register
set "WINEDLLOVERRIDES=dsdmo=n;msdmo=n"
"%registrar%" /s "%~dp0dsdmo.dll" || goto failed
echo Native DMO registered. Keep both DLLs in this folder.
echo Launch the game with WINEDLLOVERRIDES=dsdmo=n;msdmo=n and restart it.
exit /b 0

:missing
echo Place matching x64 dsdmo.dll and msdmo.dll beside register.bat. >&2
exit /b 2

:failed
echo Registration failed. Check the DLL architecture and dependencies. >&2
exit /b 1
