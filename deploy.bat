
@echo off

rem H is the destination game folder
rem GAMEDIR is the name of the mod folder (usually the mod name)
rem GAMEDATA is the name of the local BepInEx\plugins
rem VERSIONFILE is the name of the version file, usually the same as GAMEDATA,
rem    but not always

set H=%KSP_2_DIR%
set GAMEDIR=WASDForVAB
set GAMEDATA="BepInEx\plugins"
set VERSIONFILE=swinfo.json


copy /Y "%1%2" "%GAMEDATA%\%GAMEDIR%"
copy /Y "%1%3".pdb "%GAMEDATA%\%GAMEDIR%"

copy /Y %VERSIONFILE% %GAMEDATA%\%GAMEDIR%

xcopy /y /s /I %GAMEDATA%\%GAMEDIR% "%H%\BepInEx\plugins\%GAMEDIR%"

rem pause
