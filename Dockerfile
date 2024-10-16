# Use Node.js image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Install Truffle globally
RUN npm install -g truffle

# Install any project dependencies if necessary (if package.json exists)
COPY package.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Open ports for Ganache or other blockchains (e.g., 8545 for Ganache)
EXPOSE 8545

# Set entry point (optional)
ENTRYPOINT ["truffle"]
