set version=%1

set cleanVersion=%version:.=%

set currentPath=%~dp0

set modulesPath=%currentPath%..\..\modules

rd %modulesPath%\php

mklink /J %modulesPath%\php %modulesPath%\php%cleanVersion%
