FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

# Bundle app source
COPY . .

EXPOSE 5001

CMD [ "npm", "run" ,"start" ]
