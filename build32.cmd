@echo off

call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\VsDevCmd.bat" -arch=x86 -host_arch=x86
cd /d "%~dp0"

set CL=/nologo /errorReport:none /Gm- /GF /GS- /MP /MT /W4 /WX /wd4324 /D_CRT_SECURE_NO_DEPRECATE
set LINK=/errorReport:none /INCREMENTAL:NO

set CL=%CL% /Ox
rem set CL=%CL% /Od /Zi
rem set LINK=%LINK% /DEBUG

cl.exe pkg2zip*.c miniz_tdef.c puff.c /Fepkg2zip_x86.exe
if not exist pkg2zip_x86.exe pause