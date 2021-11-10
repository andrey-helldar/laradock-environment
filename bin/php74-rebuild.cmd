@echo off

cd ..\shell

call variables.cmd

call php-main.cmd "7.4" "vc15" "build"
