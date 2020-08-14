#!/bin/bash

docker stop db webserver app
docker rm db webserver app
docker-compose down
docker run --rm -v $(pwd):/app composer install
sudo chown -R $USER:$USER $(pwd)
docker-compose up -d