#!/bin/bash

docker pull sejalru23/mean-backend:latest
docker pull sejalru23/mean-frontend:latest

docker-compose down
docker-compose up -d