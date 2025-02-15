## Project Overview
This project aims to Dockerize an Apache application on an Ubuntu base image. The Docker image is built from scratch, installs the necessary dependencies, and deploys a simple HTML page. The final Docker image is then pushed to DockerHub for easy access and deployment.

## Features
- **Custom Apache Installation**: Uses an Ubuntu base image and installs Apache HTTP Server.
- **Static HTML Content**: Serves a simple HTML page using Apache.
- **DockerHub Integration**: Includes a script to push the Docker image to DockerHub.


### Files Explanation

1. **Dockerfile**:
   - Defines the base image (Ubuntu) and installs Apache.
   - Copies the HTML file to the Apache root directory.
   - Exposes port 80 for web traffic.
   - Starts the Apache service in the foreground.

   ```dockerfile
   # Use the official Ubuntu base image
   FROM ubuntu:latest

   # Update the package repository and install Apache
   RUN apt-get update && apt-get install -y apache2

   # Copy the application code to the Apache root directory
   COPY app/index.html /var/www/html/index.html

   # Expose port 80 to the outside world
   EXPOSE 80

   # Start the Apache service
   CMD ["apachectl", "-D", "FOREGROUND"]

