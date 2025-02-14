# Example for Node.js
FROM node:18
WORKDIR /src
COPY . /src
RUN npm install
EXPOSE 8080

CMD ["npm", "src/index.js"]
