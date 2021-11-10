cd ../repository

docker-compose stop

for /F "tokens=*" %%A in (%mainPath%\services.txt) do docker-compose up -d --build %%A
