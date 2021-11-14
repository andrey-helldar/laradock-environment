set version=%1
set vc=%2

set cleanVersion=%version:.=%

set currentPath=%~dp0

set modulesPath=%currentPath%..\..\modules

set phpPath=%modulesPath%\php%cleanVersion%

rd %modulesPath%\php

if not exist %phpPath% (
    call php-download.cmd %version% %vc%
)

mklink /J %modulesPath%\php %modulesPath%\php%cleanVersion%
