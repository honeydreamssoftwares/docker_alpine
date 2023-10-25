# Use the official Node.js 18 Alpine image from DockerHub
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Set the command to run your app
# Here it assumes that you have a script named 'start' inside your package.json
CMD [ "npm", "start" ]
