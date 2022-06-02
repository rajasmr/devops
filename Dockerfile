FROM node:10-alpin

RUN mkdir -p /app && chown -R node:node app

WORKDIR /app

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 3000

CMD [ "node", "app.js" ]
