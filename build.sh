#!/bin/bash

(cd ./backend && docker build -t weatherapp_backend .)

#BACKEND CONTAINER BUILD
echo "BACKEND: STARTING"
echo "BACKEND: DOCKER BUILD"
(cd ./backend && docker build -t weatherapp_backend .)
#docker build -t weatherapp_backend . && docker run --rm -i -p 9000:9000 --name weatherapp_backend -t weatherapp_backend
echo "BACKEND: DOCKER BUILD - DONE"

#FRONTEND CONTAINER BUILD
echo "FRONTEND: STARTING"
echo "FRONTEND: NPM BUILD (WEBPACK)"
(cd ./frontend && npm run build)
echo "FRONTEND: NPM BUILD (WEBPACK) - DONE"
echo "FRONTEND: DOCKER BUILD"
(cd ./frontend && docker build -t weatherapp_frontend .)
#docker build -t weatherapp_frontend . && docker run --rm -i -p 8000:8000 --name weatherapp_frontend -t weatherapp_frontend
echo "FRONTEND: DOCKER BUILD - DONE"