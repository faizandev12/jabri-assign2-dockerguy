# Use the official Node.js image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package files to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy all source files
COPY . .

# Expose the port your app runs on (e.g., 3000)
EXPOSE 3000

# Command to start the app
CMD ["npm", "start"]
