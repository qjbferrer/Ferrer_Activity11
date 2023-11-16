# Use the official Nginx image as the base image
FROM nginx:latest

# Copy custom configuration file to Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for Nginx
EXPOSE 80

# Use the official MySQL image as the base image
FROM mysql:latest

# Environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# Expose port 3306 for MySQL
EXPOSE 3306
