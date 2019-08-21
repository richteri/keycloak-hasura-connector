FROM node:alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --only=production
COPY . .
EXPOSE 3000
EXPOSE 9229
CMD [ "node", "src/main.js", "--inspect=0.0.0.0:9229" ]
