FROM node:8

# Setup
RUN mkdir -p /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app

RUN npm i;

EXPOSE 9000

CMD ["node", "index.js"]