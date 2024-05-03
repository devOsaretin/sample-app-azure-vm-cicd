# Stage 1: Build the application
FROM node:22 AS builder


WORKDIR /app

COPY package*.json ./

RUN npm install 

COPY . .


CMD ["node", "server.js"]
