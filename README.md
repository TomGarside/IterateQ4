## IterateQ4

This script deletes the existing Gamex86.dll from the folder and game000.pak
and replaces it with the newly compiled version from the provided DLL path.
7zip is required to be installed, the script will attempt to add 7zip to your path if it is not already added you may need to modify the 7ZPATH variable if your path does not match 

The Script takes two arguments the Path to the Mod directory and the path to
the new dll (MODPATH and DLLPATH). The arguments are positional the mod path comes before the DLL path.

e.g. 

```batch

IterateQ4.bat "C:\Program Files (x86)\Steam\steamapps\common\Quake 4\Game-mod-dev" "C:\Users\tom31\Win32\Release\Gamex86.dll"	

```