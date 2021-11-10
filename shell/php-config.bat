set version=%1

set version=%version:"=%

set source=..\config\php%version%.ini
set target=..\..\modules\php%version%\php.ini

if not exist %target% (
    copy %source% %target%
)
