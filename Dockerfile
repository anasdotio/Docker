# Chose a base image

FROM node:18-alpine

# Set the working directory inside the container

WORKDIR /app

# copy package.json and package.lock.json first (for caching)

COPY package*.json ./

# Install dependencies

RUN npm install 

#  copy the rest of the app code

COPY . .

# expose the port of the app run on

EXPOSE 3000

# Define the default command to run the app

CMD [ "node" , "server.js" ]
