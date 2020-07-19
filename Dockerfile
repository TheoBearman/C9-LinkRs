FROM node:alpine

RUN mkdir -p /app
WORKDIR /app

COPY package*.json ./
RUN npm install --quiet --no-optional

EXPOSE ${NODEJS_PORT}

CMD node server.js