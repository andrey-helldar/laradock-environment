set version=%1
set vc=%2

set version=%version:"=%
set vc=%vc:"=%

set cleanVersion=%version:.=%

set xdebugVersion=3.1.1
set redisVersion=5.3.4
set yamlVersion=2.2.2

set tmp=..\data\tmp
set targetPath=..\..\modules\php%cleanVersion%

if exist %tmp% ( rmdir /Q/S %tmp% )

if not exist %tmp% ( mkdir %tmp% )

call download/php.bat
call download/xdebug.bat
call download/redis.bat
call download/yaml.bat

call php-config.bat %cleanVersion%

if exist %tmp% ( rmdir /Q/S %tmp% )
