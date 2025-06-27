# Use lightweight JDK runtime
FROM eclipse-temurin:17-jdk-alpine

# Set workdir
WORKDIR /app

# Copy built jar from Jenkins workspace into container
COPY target/*.jar app.jar

# Run the app
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
