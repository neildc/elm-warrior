# syntax=docker/dockerfile:1

FROM node:12.18.1
ENV NODE_ENV=development

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm ci

COPY . .

CMD [ "npm", "start" ]

