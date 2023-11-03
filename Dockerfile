FROM node:alpine

WORKDIR /app

COPY package*.json .

RUN npm ci

COPY . .

RUN npm run build

EXPOSE 3000

CMD [ "node", "dist/app" ]