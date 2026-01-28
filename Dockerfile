# chose base image

FROM node:18-alpine

# set working directory
WORKDIR /app

# copy package.json and package-lock.json for the caching of dependencies

COPY package*.json ./

# install dependencies

RUN npm ci

# copy source files

COPY . .

# Expose port

EXPOSE 8000

# Run the app
CMD [ "node" , "server" ]
