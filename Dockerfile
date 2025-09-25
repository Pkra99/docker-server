#node version
FROM node:18-alpine

#setting working directory
WORKDIR /app

#copying package related file to docker 
COPY package*.json ./

#install node_modules
RUN npm install

#copying everything to docker
COPY . .

#build app
RUN npm run build

#exposing to port
EXPOSE 8000

#running app
CMD ["npm", "run", "start"]