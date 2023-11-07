FROM node:latest

WORKDIR /usr/src/app

COPY package.json ./

npm install -g npm@latest

COPY . .

EXPOSE 4000
CMD [ "node", "index.js" ]
