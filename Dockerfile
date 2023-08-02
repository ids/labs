FROM node:18

RUN npm install -g http-server express

COPY app/dist /app/dist
COPY server /server 

WORKDIR /server
ENTRYPOINT ["node", "server.js"]

EXPOSE 3000
