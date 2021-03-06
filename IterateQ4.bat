@echo off
rem script to copy quake4 game dll into pak file and launch mod 
rem Thomas Garside Sept 2021

rem take variables from path 
set MODPATH=%1
set DLLPATH=%2

rem split mod folder from MODPATH
for %%f in (%MODPATH%) do set MODFOLDER=%%~nxf
echo %MODFOLDER%

rem save launch dir so you can return(q4 needs pwd to be its folder)
set LAUNCHDIR=%CD%


rem If your 7zip path is different add it to the PATH manually or change this
set ZPATH=C:\Program Files\7-Zip


rem check if 7zip is on path if not add it
where /q 7z
IF ERRORLEVEL 1 (
   ECHO Adding 7-zip to PATH
   set PATH=%PATH%;%ZPATH%;
   )


rem Delete previoud game DLL 
7z d %MODPATH%\game000.pk4 Gamex86.dll
rm %MODPATH%\Gamex86.dll


rem Add new Gamex86.dll to PAK 
7z a %MODPATH%\game000.pk4 %DLLPATH% 
  
rem launch quake4 mod directly with launch video disabled 
cd %MODPATH%\..
Quake4 +disconnect +set fs_game %MODFOLDER%

rem return to directory you started in 
cd %LAUNCHDIR%
