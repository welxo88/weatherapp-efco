FROM node:8

# Setup
RUN mkdir -p /usr/src/app/api
COPY . /usr/src/app/api
WORKDIR /usr/src/app/api

RUN npm i;

ENV NODE_ENV=production
ENV PORT=8080

CMD ["node", "index.js"]
EXPOSE 8080