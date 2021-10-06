#!/bin/bash

docker build -t simple-api:latest .
docker run --name simple-api-app -d -v $PWD/data:/data -p 5000:5000 simple-api:latest
curl -u toto:python -X GET http://127.0.0.1:5000/pozos/api/v1.0/get_student_ages
