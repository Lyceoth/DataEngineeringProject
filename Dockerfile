FROM node:slim
EXPOSE 8080
WORKDIR /app
COPY soccer.json /app/
RUN npm install
COPY soccer.js /app/
CMD node soccer.js