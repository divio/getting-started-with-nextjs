FROM node:20.12.2

ENV NODE_PATH=/app/node_modules

WORKDIR /app

COPY package*.json /app/
RUN npm install

COPY . /app
RUN npm run build

EXPOSE 80

CMD ["npm", "start", "--", "-p", "80"]
