set phpOutputFile=%tmp%\php.zip

powershell -Command "Invoke-WebRequest https://windows.php.net/downloads/releases/latest/php-%version%-nts-Win32-%vc%-x64-latest.zip -OutFile %phpOutputFile%"

call 7z x "%phpOutputFile%" -oc:"%targetPath%" -y
