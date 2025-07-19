FROM openjdk:11-jre-slim

WORKDIR /app

# Copy files into the container
COPY JMusicBot-0.4.3.jar .
COPY Playlists/ Playlists/
COPY config-template.txt config-template.txt
COPY entrypoint.sh entrypoint.sh

# Make the startup script executable
RUN chmod +x entrypoint.sh

EXPOSE 2333

# Set environment variables
ENV BOT_TOKEN=changeme \
    OWNER_ID=123456789012345678 \
    UPDATE_ALERTS=true

# Start the bot using the entrypoint
ENTRYPOINT ["./entrypoint.sh"]
