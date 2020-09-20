
FROM node:lts-alpine3.9

# Create app directory
RUN mkdir -p /app
WORKDIR /app

# Install dependencies
COPY ./server/package.json /app/package.json
RUN npm install

# Bundle app source
COPY ./server .

# Exports
EXPOSE 3000
CMD [ "npm", "run", "start.dev" ]