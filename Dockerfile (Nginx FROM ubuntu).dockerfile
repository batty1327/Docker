# Use the Ubuntu base image as the starting point
FROM ubuntu

# Update the package repository and install Nginx
RUN apt-get update -y
RUN apt-get install nginx -y

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Create an empty index.html file
RUN touch index.html

# Add the text "HELLO FROM DOCKER" to the index.html file
RUN echo "HELLO FROM DOCKER" > index.html

# Expose port 80 to allow incoming HTTP traffic
EXPOSE 80

# Start the Nginx service in the foreground
CMD ["nginx", "-g", "daemon off;"]