# Base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the application code to the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the service's port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]