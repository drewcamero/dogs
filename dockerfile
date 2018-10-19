FROM         node:latest

MAINTAINER   Drew

ENV          NODE_ENV = development
ENV          PORT = 3200

COPY         . /var/www
WORKDIR      /var/www

RUN           npm install
EXPOSE        ${PORT}

ENTRYPOINT  ["node", "app.js"]