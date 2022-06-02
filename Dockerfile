FROM node:10-alpi



WORKDIR /app

COPY package*.json ./

USER node

RUN npm instal

COPY --chown=node:node . .

EXPOSE 300

CMD [ "node", "app.js" ]
