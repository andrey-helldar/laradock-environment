cd ../repository

docker-compose stop

for /F "tokens=*" %%A in (../services.txt) do docker-compose up --force-recreate --build -d %%A
