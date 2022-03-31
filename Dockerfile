FROM node:16-alpine

WORKDIR /app
COPY package.json .
COPY yarn.lock .
RUN yarn install --production
RUN yarn cache clean

COPY index.js .

CMD ["node", "index.js"]