FROM node:8

ARG ENDPOINT
ENV ENDPOINT "$ENDPOINT"

ARG PORT
ENV PORT "$PORT"

ENV PUBDIR "./build"

COPY . .

RUN npm i;

RUN ENDPOINT=${ENDPOINT} node_modules/.bin/webpack --config webpack.config.js  --output-path ${PUBDIR} --optimize-minimize;

CMD node_modules/.bin/http-server ${PUBDIR} -a ${PORT}
