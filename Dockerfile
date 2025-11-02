    # Use a base image (e.g., Node.js, Python, Java)
    FROM node:18-alpine

    # Set the working directory inside the container
    WORKDIR /app

    # Copy package.json and package-lock.json (for Node.js)
    COPY package*.json ./

    # Install application dependencies
    RUN npm install

    # Copy the rest of the application code
    COPY . .

    # Expose the port your application listens on
    EXPOSE 3000

    # Command to run the application
    CMD ["npm", "start"]
