FROM node:13

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle app source
COPY . .

# Build the application
RUN npm build

# Bind the port that the app runs on
EXPOSE 3000

# Define the Docker image's behavior at runtime
CMD ["npm", "run", "start:prod"]
