set version=%1
set vc=%2
set action=%3

set cleanVersion=%version:.=%

if exist ..\repository\.env (
	del ..\repository\.env
)

mklink /h ..\repository\.env ..\repository\.env%cleanVersion%

wsl -d docker-desktop sysctl -w vm.max_map_count=262144

call php-download.bat %version% %vc%
call php-only.bat %version%
call laradock-%action%.bat
