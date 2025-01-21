# Use the official Node.js image as the base image
FROM node:20-bookworm

WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Define the command to run the app
CMD ["node", "index.js"]
