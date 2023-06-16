# Use the official Maven image as the build environment
FROM maven:3.8.4-openjdk-11 AS build

# Set the working directory
WORKDIR /build

# Copy the pom.xml file
COPY pom.xml .

# Copy the source code
COPY src ./src

# Build the application
RUN mvn clean package -DskipTests=true

# Use a lightweight Java image for the final image
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory
WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /build/target/ci-java.jar app.jar

# Run the application
CMD ["java", "-jar", "ci-java.jar"]
