# Use an OpenJDK runtime base image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged jar file into the container at /app
COPY target/Calculator-1.0-SNAPSHOT.jar /app/application.jar

copy . .

ENV PORT 80
EXPOSE 80
# Specify the command to run your application
CMD ["java", "-jar", "/app/application.jar"]

