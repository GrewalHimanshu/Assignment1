# Use the official image as a parent image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy the file from your host to your current location
COPY package.json .

# Run the command inside your image filesystem
RUN npm install

# Copy the rest of your app's source code from your host to your image filesystem
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run the specified command within the container
CMD [ "npm", "start" ]