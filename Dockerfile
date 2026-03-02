# Dokarise the node Application
FROM node:18-alpine
# Create app directory
WORKDIR /usr/src/app
#copy package.json and package-lock.json
COPY package*.json ./
# Install app dependencies
RUN npm install
# Bundle app source
COPY . .
# Expose port 3000
EXPOSE 3000
# Start the app
CMD [ "node", "index.js" ]
