# docker build -t ethereum-pos .
FROM node:latest

WORKDIR /usr/app

COPY ./hardhat-config/package-lock.json ./package-lock.json
COPY ./hardhat-config/package.json ./package.json 
COPY ./hardhat-config/hardhat.config.js ./hardhat.config.js
COPY ./hardhat-config/entrypoint.sh ./entrypoint.sh

RUN npm install --save-dev hardhat
RUN chmod +x ./entrypoint.sh
EXPOSE 8545 8546

ENTRYPOINT [ "./entrypoint.sh" ]