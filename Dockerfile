FROM php:7.4-apache

# Set the working directory
WORKDIR /var/www/html

# Copy the entire project directory into the container
COPY . /var/www/html/


# Start the Apache web server
CMD ["apache2-foreground"]
