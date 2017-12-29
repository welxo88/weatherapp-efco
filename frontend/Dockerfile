FROM node:8

COPY . .

RUN npm i;

RUN ENDPOINT=${ENDPOINT-api} node_modules/.bin/webpack --config webpack.config.js  --output-path ./build --optimize-minimize;

ENV PORT=8000

#CMD ["node_modules/.bin/http-server", "./build", "-a", "8000"]
CMD node_modules/.bin/http-server ./build -a 8000

EXPOSE 8000