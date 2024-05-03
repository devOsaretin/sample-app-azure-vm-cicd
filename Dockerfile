# Stage 1: Build the application
FROM node:20-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install --production

COPY . .

# Stage 2: Create the final image
FROM node:20-alpine

WORKDIR /app

COPY --from=builder /app .

CMD ["node", "server.js"]
