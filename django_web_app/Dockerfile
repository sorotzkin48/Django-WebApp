# Use the official Python image from the Docker Hub
FROM python:3.9

# Set environment variables for Python
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the Docker container
WORKDIR /app

# Install Python dependencies
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy the rest of your Django project into the container
COPY . /app/

# Expose the port that your Django app will run on
EXPOSE 8000

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

# # Use the official Python image from the Docker Hub
# FROM python:3.9

# # Set environment variables for Python
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1

# # Set the working directory in the Docker container
# WORKDIR /app

# # Copy the requirements file into the container
# # COPY requirements.txt /app/

# # Install Python dependencies
# # RUN pip install -r requirements.txt

# # Copy the rest of your Django project into the container
# COPY . /app/

# # Expose the port that your Django app will run on
# EXPOSE 8000

# # Run the Django development server
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
