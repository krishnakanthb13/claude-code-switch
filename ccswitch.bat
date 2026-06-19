@echo off
set PROFILE=%1
set CLAUDE_DIR=%USERPROFILE%\.claude

if "%PROFILE%"=="" (
    echo Usage: ccswitch [longcat^|openrouter^|default]
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
