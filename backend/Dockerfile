FROM node:8

COPY .npmrc .npmrc  
COPY package.json package.json

RUN npm i;

COPY . .

ENV PORT=9000

CMD ["node", "src/index.js"]
EXPOSE 9000