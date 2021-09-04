FROM node:14-alpine

USER node

RUN mkdir -p /home/node/app

WORKDIR /home/node/app

COPY --chown=node . ${WORKDIR}

ENV PORT=3000

EXPOSE ${PORT}

CMD ["node", "app"]
