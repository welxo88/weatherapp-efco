FROM node:8

# Setup
RUN mkdir -p /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app

RUN npm i
RUN npm i webpack -g

RUN npm run build

ENV NODE_ENV=production
ENV PORT=8080

CMD ["serve", "-s", "build"]
EXPOSE 8080