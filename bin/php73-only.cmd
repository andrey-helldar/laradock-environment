@echo off

cd ..\shell

call variables.cmd

call php-only.cmd "7.3" "vc15"
