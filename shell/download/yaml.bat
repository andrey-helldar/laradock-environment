set yamlOutputFile=%tmp%\yaml.zip

powershell -Command "Invoke-WebRequest https://windows.php.net/downloads/pecl/releases/yaml/%yamlVersion%/php_yaml-%yamlVersion%-%version%-nts-%vc%-x64.zip -OutFile %yamlOutputFile%"

call 7z e "%yamlOutputFile%" -oc:"%tmp%\yaml" -y

move /y %tmp%\yaml\php_yaml.dll %targetPath%\ext\php_yaml.dll
