# Use an official OpenJDK 11 base image
FROM openjdk:11-jre-slim

# Set working directory inside the container
WORKDIR /app

# Copy required files into the container
COPY JMusicBot-0.4.3.jar .
COPY config.txt .
COPY Playlists/ Playlists/

# Expose any necessary ports (customize if needed)
EXPOSE 2333

# Run the bot with no GUI
CMD ["java", "-Dnogui=true", "-jar", "JMusicBot-0.4.3.jar"]
