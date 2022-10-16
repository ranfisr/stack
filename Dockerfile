FROM node:16

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./

RUN npm install
RUN npm install -g serve

# Copying rest of the application to app directory
COPY . /app

# Expose the port and start the application
Expose 3000

#CMD ["serve","-s build"]
CMD ["npm","start"]
