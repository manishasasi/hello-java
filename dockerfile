# 1. Use a lightweight Java runtime image
FROM openjdk:21-slim

# 2. Set working directory inside the container
WORKDIR /app

# 3. Copy the built .jar file from host to container
COPY target/*.jar app.jar

# 4. Expose a port (optional, only if your app listens on one)
EXPOSE 8080

# 5. Run the jar file when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]

