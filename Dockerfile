FROM node:8.15.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

#This Npm install will install when docker-compose build is triggered, it will not referesh upon docker-compose restart

COPY app.js .

COPY ./html ./html

EXPOSE 80

CMD ["node","app.js"]


