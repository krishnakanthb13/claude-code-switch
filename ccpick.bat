@echo off
setlocal enabledelayedexpansion
chcp 437 >nul

set CLAUDE_DIR=%USERPROFILE%\.claude
set PROFILES_DIR=%CLAUDE_DIR%\profiles

set COUNT=0
echo.
echo  ==============================
echo    Claude Code Profile Picker
echo  ==============================
echo.

for %%f in ("%PROFILES_DIR%\*.json") do (
    set /a COUNT+=1
    set "PROFILE_!COUNT!=%%~nf"
    echo   [!COUNT!] %%~nf
)

echo.
echo   [0] default (direct Anthropic)
echo.
set /p CHOICE="  Pick a profile: "

if "%CHOICE%"=="0" (
    del "%CLAUDE_DIR%\settings.json" 2>nul
    echo.
    echo  Switched to: direct Anthropic
    goto launch
)

set SELECTED=
for /l %%i in (1,1,%COUNT%) do (
    if "%CHOICE%"=="%%i" set "SELECTED=!PROFILE_%%i!"
)

if "%SELECTED%"=="" (
    echo  Invalid choice.
    pause
    exit /b 1
)

copy /y "%PROFILES_DIR%\%SELECTED%.json" "%CLAUDE_DIR%\settings.json" >nul
echo.
echo  Switched to: %SELECTED%

:launch
echo  Launching Claude Code...
echo.
claude