FROM node:8

COPY package*.json ./
COPY ./hello.js /usr/share/nginx/node/hello.js

RUN npm install

EXPOSE 8080

CMD ["npm", "start"]