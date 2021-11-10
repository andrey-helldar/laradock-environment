@REM @echo off

cd ..\shell

call variables.cmd

call php-main.cmd "8.0" "vs16" "build"

pause
