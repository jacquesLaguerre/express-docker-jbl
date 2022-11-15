#Starts from alpine Linux with Node 16 installed
FROM node:16-alpine3.15

#Create a working directory and copy all files (except those in .dockerignore)
WORKDIR /src/
COPY . . 
#Install our dependencies
RUN npm install 
#Set environmental variables 
ENV PORT=3000
#Open up a Port 
EXPOSE 3000
#This creates the image^

#This is the command to run whenever we start a new container
CMD ["npm", "start"]