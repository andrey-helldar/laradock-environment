@echo off

cd ..\shell

call variables.cmd

call php-main.cmd "7.3" "vc15" "start"
