# Use official PHP image with Apache
FROM php:8.2-apache

# Copy your project into the Apache root directory
COPY . /var/www/html/

# Give proper permissions
RUN chown -R www-data:www-data /var/www/html

# Enable Apache mod_rewrite if needed
RUN a2enmod rewrite

# Expose port 80
EXPOSE 80
