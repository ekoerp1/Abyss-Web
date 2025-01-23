FROM node:bookworm-slim

# Set environment variable to production
ENV NODE_ENV=production

# Set the working directory inside the container
WORKDIR /app

# Copy only the package.json file to the container
COPY ["package.json", "./"]

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Command to run your application
CMD ["node", "index.js"]
