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
