# Start image with a node base image
FROM node:18-alpine

# Create an application directory
RUN mkdir -p /app

# Set the /app directory as the working directory for any command that follows
WORKDIR /app

# Copy the local app package and package-lock.json file to the container
COPY package*.json ./

# Copy local directories to the working directory of the docker image (/app)
COPY ./src ./src

# Install node packages
RUN npm install 

# Start the app
CMD ["npm", "run", "deploy:commands", "&&", "npm", "run", "start"]