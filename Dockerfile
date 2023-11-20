# Stage: devserver
FROM node:18-bullseye as devserver

RUN apt-get update && apt-get install jq socat -y
USER node
WORKDIR /home/node
RUN npm install balena-cli
ENV PATH="/home/node/node_modules/.bin:${PATH}"