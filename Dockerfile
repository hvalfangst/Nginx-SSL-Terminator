# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container
COPY . .

# Expose the port that the Flask application will be listening on
EXPOSE 5000

# Set the environment variable
ENV FLASK_APP=main.py

# Run the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]
