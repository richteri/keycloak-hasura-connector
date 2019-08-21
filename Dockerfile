FROM node:alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --only=production
COPY . .
EXPOSE 3000
EXPOSE 9229
CMD [ "npm", "start", "--inspect-brk=0.0.0.0" ]
