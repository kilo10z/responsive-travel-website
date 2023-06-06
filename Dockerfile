# Use the official Apache base image
FROM httpd:latest

# Copy your website files into the container
COPY ./path/to/your/website /usr/local/apache2/htdocs/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache server when the container starts
CMD ["httpd", "-D", "FOREGROUND"]

