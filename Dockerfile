FROM node:10-alpi

RUN mkdir -p /app && chown -R node:node ap

WORKDIR /app

COPY package*.json ./

USER node

RUN npm instal

COPY --chown=node:node . .

EXPOSE 300

CMD [ "node", "app.js" ]
