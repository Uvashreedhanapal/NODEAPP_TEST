FROM node:latest

WORKDIR /usr/src/app

COPY package.json ./
rm -rf node_modules
RUN npm install

COPY . .

EXPOSE 4000
CMD [ "node", "index.js" ]
