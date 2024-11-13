FROM node:14

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .


# Expose the port the app runs in
EXPOSE 3000


# Serve the app
CMD ["nodemon", "app.js"]

