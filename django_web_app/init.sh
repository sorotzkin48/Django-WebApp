# #!/bin/bash
# docker build -t final-project .
# docker run -p 8000:8000 final-project

#!/bin/bash

# Install necessary packages inside the Docker container
# Use latest versions of packages
pip install -r requirements.txt

# Apply database migrations
python manage.py migrate

# Create a superuser (admin user) for the Django admin interface
# You can provide your own admin username and password
# echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('admin', 'admin@gmail.com', 'admin_password')" | python manage.py shell

# Collect static files
python manage.py collectstatic --noinput

# Define a container name
CONTAINER_NAME="my-django-app"

# Start the Django development server with the container name
docker run -p 8000:8000 --name $CONTAINER_NAME final-project

# Display the container ID
echo "Container ID: $(docker ps -qf \"name=$CONTAINER_NAME\")"



# #!/bin/bash

# # Wait for the database to be ready (this is often necessary in a containerized environment)
# # You can use a tool like `wait-for-it` or write your custom logic.
# # Example:
# # until nc -z -v -w30 db 5432; do
# #   echo "Waiting for PostgreSQL to start..."
# #   sleep 1
# # done

# # Apply database migrations
# python manage.py migrate

# # Collect static files (for serving CSS, JavaScript, and other static assets)
# python manage.py collectstatic --noinput

# # Start the Gunicorn application server
# gunicorn your_project.wsgi:application --bind 0.0.0.0:8000
