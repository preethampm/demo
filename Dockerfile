# Use the official Node.js image as the base image
# FROM node:18-slim

# Set the working directory in the container
# WORKDIR /app

# Copy package.json and package-lock.json to the working directory
# COPY package.json ./

# Install dependencies
# RUN npm install --only=production

# Copy the rest of the application code to the working directory
# COPY . ./

# Expose the port the app runs on
# EXPOSE 3000

# Command to run the application
# CMD ["npm", "start"]

# Base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the project dependencies
RUN pip install -r requirements.txt

# Copy the application code into the container
COPY . .

# Expose the port the Flask application will be listening on
EXPOSE 5000

# Set environment variables, if necessary
# ENV MY_ENV_VAR=value

# Run the Flask application
CMD ["python", "app.py"]