# Example for Node.js
FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENV PORT=8080  # Force the app to use port 8080
EXPOSE 8080     # Match Cloud Run's expected port
CMD ["npm", "start"]
