# Use a lightweight OpenJDK image
FROM openjdk:17-jdk-slim

# Set the location of your app inside the container
WORKDIR /app

# Copy the built jar file into the container
COPY target/*.jar app.jar

# Set the port (Render sets the PORT env variable)
ENV PORT=8080
EXPOSE $PORT

# Run the app
CMD ["sh", "-c", "java -jar app.jar --server.port=$PORT"]
