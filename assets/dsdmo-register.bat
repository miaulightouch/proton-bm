@echo off
setlocal DisableDelayedExpansion
if not exist "%~dp0dsdmo.dll" goto missing

set "registrar=%SystemRoot%\System32\regsvr32.exe"
if defined PROCESSOR_ARCHITEW6432 set "registrar=%SystemRoot%\Sysnative\regsvr32.exe"
if /i "%PROCESSOR_ARCHITECTURE%"=="AMD64" goto register
if /i "%PROCESSOR_ARCHITEW6432%"=="AMD64" goto register
echo This package needs a 64-bit Wine/Proton prefix. >&2
exit /b 2

:register
set "WINEDLLOVERRIDES=dsdmo=n;msdmo=b"
"%registrar%" /s "%~dp0dsdmo.dll" || goto failed
echo Native effects registered. Keep dsdmo.dll in this folder.
echo Set WINEDLLOVERRIDES=dsdmo=n in the game launch settings.
exit /b 0

:missing
echo Place x64 dsdmo.dll beside dsdmo-register.bat. >&2
exit /b 2

:failed
echo Registration failed. Check the DLL architecture and dependencies. >&2
exit /b 1
