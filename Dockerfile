#node version
FROM node:18-alpine

#set working directory
WORKDIR /app

#copying package related file to docker 
COPY package*.json ./

#install dependencies
RUN npm install

#copy source code to docker
COPY . .

#build app
RUN npm run build

#expose app port
EXPOSE 8000

#run app
CMD ["npm", "run", "start"]