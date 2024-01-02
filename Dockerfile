# Use an official Maven runtime as a parent image
FROM maven:3.8.1-openjdk-11-slim

# Set the working directory to /app
WORKDIR /app

# Copy the Maven project file
COPY pom.xml .

# Copy the source code
COPY src ./src


# Set the entry point for the application
CMD ["java", "-jar", "target/HelloWorld.jar"]
