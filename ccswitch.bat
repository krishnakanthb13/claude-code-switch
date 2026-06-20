@echo off
setlocal enabledelayedexpansion
set PROFILE=%1
set CLAUDE_DIR=%USERPROFILE%\.claude

if "%PROFILE%"=="" (
    set "PROFILES_LIST="
    for %%f in ("%CLAUDE_DIR%\profiles\*.json") do (
        if defined PROFILES_LIST (
            set "PROFILES_LIST=!PROFILES_LIST!|%%~nf"
        ) else (
            set "PROFILES_LIST=%%~nf"
        )
    )
    echo Usage: ccswitch [!PROFILES_LIST!^|default]
    exit /b 1
)

if "%PROFILE%"=="default" (
    del "%CLAUDE_DIR%\settings.json" 2>nul
    echo Switched to: direct Anthropic
    exit /b 0
)

if not exist "%CLAUDE_DIR%\profiles\%PROFILE%.json" (
    echo Profile not found: %PROFILE%
    exit /b 1
)

copy /y "%CLAUDE_DIR%\profiles\%PROFILE%.json" "%CLAUDE_DIR%\settings.json" >nul
echo Switched to: %PROFILE%
