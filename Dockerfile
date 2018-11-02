FROM node:8

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
RUN npm install mongoose
RUN npm install async

COPY . .

CMD ["npm", "start"]