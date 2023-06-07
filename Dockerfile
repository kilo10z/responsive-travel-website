
FROM nginx:latest
COPY nginx.conf /etc/nginx/nginx.conf
# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the entire project directory into the container
COPY . .

# Expose the port
EXPOSE 8080

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
=======
# Use the official Apache base image
FROM httpd:latest

# Copy your website files into the container
COPY . /usr/local/apache2/htdocs/

# Expose port 80 for HTTP traffic

# Start Apache server when the container starts
CMD ["httpd", "-D", "FOREGROUND"]


