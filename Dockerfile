# Use an official Maven runtime as a parent image
FROM maven:3.8.1-openjdk-11-slim

EXPOSE 8080
ADD target/devops-integration.jar devops-integration.jar
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
