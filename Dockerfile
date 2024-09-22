#VOLUME /tmp
# Use a base image with Java
FROM openjdk:17-alpine

# Set the working directory
WORKDIR /app

# Copy the built JAR file into the container
COPY target/*.jar config-server.jar

# Expose the application port
EXPOSE 8888

# Run the application
ENTRYPOINT ["java", "-jar", "config-server.jar"]
