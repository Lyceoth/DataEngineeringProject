FROM node:slim
EXPOSE 8080
WORKDIR /soccerapp
COPY package.json /soccerapp/
RUN npm install
COPY server.js /soccerapp/
CMD node server.js
