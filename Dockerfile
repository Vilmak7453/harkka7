FROM node:8

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
RUN npm install express-generator -g
RUN npm install mongoose
RUN npm install async
RUN npm install moment
RUN npm install express-validator

COPY . .

CMD ["npm", "start"]