# Use an official Maven runtime as a parent image
FROM maven:3.8.1-openjdk-11-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the application using Maven
RUN mvn clean install

# Set the entry point for the application
CMD ["java", "-jar", "target/your-app.jar"]
