FROM node:10.14.0

LABEL maintainer="Flatland Church"

WORKDIR /usr/src/site
COPY package.json ./
COPY yarn.lock ./
RUN yarn install --production

COPY . .
EXPOSE 3000

CMD ["npm", "run-script", "start"]
