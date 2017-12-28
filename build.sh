#!/bin/bash

echo "FRONTEND: NPM BUILD (WEBPACK)"
(cd ./frontend && npm run build)
echo "FRONTEND: NPM BUILD (WEBPACK) - DONE"

echo "DOCKER-COMPOSE BUILD"
(docker-compose build --no-cache)
echo "DOCKER-COMPOSE BUILD - DONE"

echo "STARTING THE CONTAINERS"
(docker-compose up)