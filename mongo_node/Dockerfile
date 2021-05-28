
FROM node:14.15.1
WORKDIR /app
COPY app/package.json package.json
COPY app/package-lock.json package-lock.json
RUN apt-get update
COPY . .
RUN npm install
EXPOSE 3001
