FROM node:6.9.4-alpine
RUN addgroup -S livhub && adduser -S -g livhub livhub

RUN mkdir -p /home/give
COPY . /home/give
WORKDIR /home/give

COPY package.json /home/give/package.json
RUN npm install

CMD ["node","app.js"]