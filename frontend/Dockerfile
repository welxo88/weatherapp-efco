FROM node:8

COPY .npmrc .npmrc  
COPY package.json package.json
COPY webpack.config.js webpack.config.js
COPY . .

RUN npm i

ENV PORT=8000

EXPOSE 8000

#FOR DEV PURPOSES ONLY
#OTHERWISE RUN npm run build outside container, and copy build files
#AND attach nginx container to serve static files
ENTRYPOINT npm run start