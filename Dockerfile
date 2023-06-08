FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the website files to the container
COPY . /app

# Install dependencies if needed (e.g., if you have a requirements.txt file)
# RUN pip install -r requirements.txt

# Set the Gunicorn command to run the server
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "server:WebServer"]

# Expose the port used by Gunicorn
EXPOSE 8080
