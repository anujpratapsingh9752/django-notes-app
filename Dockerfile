# Base python image for Django app
FROM python:3.9

# Set working directory inside container
WORKDIR /app

# Copy requirements.txt to container
COPY requirements.txt /app

# install system dependencies for mysqlclient
RUN apt-get update && apt-get install -y \
    gcc \
    default-libmysqlclient-dev \
    && rm -rf /var/lib/apt/lists/*

# install mysqlclient python library
RUN pip install mysqlclient

# Install all python dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy project code to container
COPY . /app

# Expose port 8000 for the Django app
EXPOSE 8000
