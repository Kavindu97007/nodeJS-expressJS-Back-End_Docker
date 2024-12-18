#base image
FROM node:20-alpine

#set a directory
WORKDIR /app

#copy dependencies
COPY package*.json ./

#Install denpencies
RUN npm install

#copy other files
COPY . .

#expose a port
EXPOSE 3000

#run
CMD [ "npm", "start" ]