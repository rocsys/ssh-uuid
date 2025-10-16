# Stage: devserver
FROM node:20-bullseye as devserver

RUN apt-get update && apt-get install jq socat -y
USER node
WORKDIR /home/node
ENV PATH="/home/node/node_modules/.bin:${PATH}"