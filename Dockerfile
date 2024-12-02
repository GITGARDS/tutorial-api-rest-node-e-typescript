FROM node:latest

# create destination directory
RUN mkdir -p /usr/src/api-node-e-typescript
WORKDIR /usr/src/api-node-e-typescript

# Update and install dependency
# RUN apk update && apk upgrade
# RUN apk add git
# docker-compose bash command dependency
# RUN apk add bash

RUN rm -rf ./node_modules
RUN rm -rf package-lock.json

# Install app dependencies
COPY ./package.json .
RUN yarn install
# Bundle app source
COPY . .

# run todosimple
CMD ["yarn", "start"]