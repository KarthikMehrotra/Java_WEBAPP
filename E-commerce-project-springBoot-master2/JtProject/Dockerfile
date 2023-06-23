
# Use a base image with Java installed
FROM openjdk:11-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file to the container
COPY ./target/*.jar /app/

# Expose the port that the application listens on
EXPOSE 8080

# Define the command to run when the container starts
CMD ["java", "-jar", "JtSpringProject-0.0.1-SNAPSHOT.jar"]
