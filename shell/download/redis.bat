set redisOutputFile=%tmp%\redis.zip

powershell -Command "Invoke-WebRequest https://windows.php.net/downloads/pecl/releases/redis/%redisVersion%/php_redis-%redisVersion%-%version%-nts-%vc%-x64.zip -OutFile %redisOutputFile%"

call 7z e "%redisOutputFile%" -oc:"%tmp%\redis" -y

move /y %tmp%\redis\php_redis.dll %targetPath%\ext\php_redis.dll
