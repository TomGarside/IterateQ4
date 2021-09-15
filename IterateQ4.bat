echo off
rem script to copy quake4 game dll into pak file
rem Thomas Garside Sept 2021

rem take variables from path 
set MODPATH=%1
set DLLPATH=%2

rem If your 7zip path is different add it to the PATH manually or change this
set 7ZPATH=C:\Program Files\7-Zip

rem check if 7zip is on path if not add it
where /q 7z
IF ERRORLEVEL 1 (
   ECHO adding 7zip to PATH
   set PATH=%PATH%;C:\Program Files\7-Zip;
   )


rem Delete previoud game DLL 
7z d %MODPATH%\game000.pk4 Gamex86.dll
rm %MODPATH%\Gamex86.dll


rem Add new Gamex86.dll to PAK 
7z a %MODPATH%\game000.pk4 %DLLPATH% 
