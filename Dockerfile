FROM nginx:latest
COPY nginx.conf /etc/nginx/nginx.conf
# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the entire project directory into the container
COPY . .

# Expose the port
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
