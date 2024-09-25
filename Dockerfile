FROM node:lts

ARG NAME=$NAME

WORKDIR /app

COPY . .

RUN npm run build

ENV HOST 0.0.0.0
EXPOSE 3000

CMD [ "npm", "start" ]
