# Laradock Environment Helper

<img src="https://preview.dragon-code.pro/andrey-helldar/laradock-environment.svg?brand=docker" alt="Laradock Environment"/> 

## Directory structure

- **your_folder**
    - **domains**
        - foo.local
        - bar.local
    - **laradock** _// this reposotory_
        - **bin** _// main executables_
        - **config** _// PHP configuration files_
        - **data**
          - **data** _// Docker work data_
          - **logs** _// Docker logs_
          - **nginx** _// Nginx config files_
        - **repository** _// Laradock main project_
        - **shell** _// Additional executables_
    - **modules**
        - _// php and other services and utils_

## File designations

    bin/phpXX-only.bat      - Sets the required PHP version by default.
    bin/phpXX-rebuild.bat   - Sets the required PHP version by default.
                              If not, download and install. Will also start compiling docker containers.
    bin/phpXX-start.bat     - Sets the required PHP version by default.
                              If not, download and install. Will also starts docker containers.

When downloading PHP, the script will also download and install the `php_redis`, `php_yaml` and `php_xdebug` extensions.

## Services to start

Copy the file `services.txt.example` to `services.txt` and specify the services you need for your work.

## Updating this project

- Open a command prompt;
- Go to the project directory;
- Execute the `git pull` command.
