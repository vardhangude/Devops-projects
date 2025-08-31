# Node as Build Stage
FROM node:18-alpine AS builder

# Set the working directory for all subsequent commands
WORKDIR /app

# Copy only the package.json to leverage Docker's build cache
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Build the React application. This command creates a 'build' folder.
RUN npm run build

#++++++++++++++++++++++++++++++++++++++++++
#+ Stage 2: The Production/Serving Stage  +
#++++++++++++++++++++++++++++++++++++++++++


# Use a lightweight Nginx base image
FROM nginx:stable-alpine

# Copy the static build files from the 'builder' stage
# The 'build' folder is where 'npm run build' outputs the static files
# The destination is Nginx's default web server directory
COPY --from=builder /app/build /usr/share/nginx/html

# Expose port 80, which Nginx uses by default
EXPOSE 80

# The CMD instruction is not needed as Nginx's base image has a default ENTRYPOINT
# that runs the server in the foreground.