FROM node:slim
WORKDIR /app
COPY build/web web

RUN npm install -g http-server

EXPOSE 8080
CMD ["http-server", "web"]