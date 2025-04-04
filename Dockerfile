# Use Python as base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the project to the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for Flask
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
