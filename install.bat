@echo off
rem Installs the Russian language pack for Paw IDE (per-user).
setlocal
set DEST=%APPDATA%\Paw\PawIDE\plugins\langpack-ru
if not exist "%DEST%" mkdir "%DEST%"
copy /Y "%~dp0plugin.json" "%DEST%\" >nul
copy /Y "%~dp0pawide_ru.qm" "%DEST%\" >nul
echo Installed to %DEST%
echo Restart Paw IDE to apply the Russian interface.
endlocal
