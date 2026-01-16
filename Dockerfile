
#Use the official Nodejs image as the base image
FROM node:22-bullseye

#Set the working directory inside the container
WORKDIR /app

#Copy package files to the container
COPY package*.json ./

#Install dependancies
RUN npm install

#Copy the application code to the container
COPY . .

#Expose the port the app runs on
EXPOSE 5173

#Command to run the application
 CMD ["npm","run","dev"]