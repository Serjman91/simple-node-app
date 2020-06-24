FROM node:10.16.3

WORKDIR /home/node/app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

ARG PORT=${PORT}
EXPOSE $PORT

ENTRYPOINT ["/bin/sh", "-c", "npm run start-dist"]
