# Use the official Apache base image
FROM httpd:latest

# Copy your website files into the container
COPY . /usr/local/apache2/htdocs/

# Expose port 80 for HTTP traffic

# Start Apache server when the container starts
CMD ["httpd", "-D", "FOREGROUND"]

