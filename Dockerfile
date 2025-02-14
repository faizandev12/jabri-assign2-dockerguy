# Example for Node.js
FROM node:18
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 8080

CMD ["node", "index.js"]
