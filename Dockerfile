# Use the official Python 3.11 slim image as the base
FROM python:3.14.0a1-slim

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy the entire project into the container
COPY . .

RUN python manage.py makemigrations

RUN python manage.py migrate



# Expose the port the Django app runs on
EXPOSE 8000

# Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
