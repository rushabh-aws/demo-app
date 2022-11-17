FROM node:14-alpine3.14

ARG Command
ENV NODE_ENV development

WORKDIR /src/app
COPY . .
# COPY package.json ./
# RUN node -v
RUN apk add git
# RUN npm i -g karma-cli
# RUN npm i -g rimraf
# RUN npm i -g webpack-cli
# RUN node --version
RUN npm install
RUN npm run ${Command}