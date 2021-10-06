#!/bin/bash

docker stop simple-api-app
docker rm simple-api-app

docker-compose up -d
