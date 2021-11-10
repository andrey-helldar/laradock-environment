set version=%1
set vc=%2
set action=%3

set cleanVersion=%version:.=%

if exist %repositoryPath%\.env (
	del %repositoryPath%\.env
)

mklink /h %repositoryPath%\.env %repositoryPath%\.env%cleanVersion%

wsl -d docker-desktop sysctl -w vm.max_map_count=262144

call php-download.cmd %version% %vc%
call php-only.cmd %version%
call laradock-%action%.cmd
