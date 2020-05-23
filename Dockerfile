FROM node:slim
EXPOSE 8080
WORKDIR /soccerapp
COPY package.json /soccerapp/
RUN npm install
COPY soccer.js /soccerapp/
CMD node soccer.js