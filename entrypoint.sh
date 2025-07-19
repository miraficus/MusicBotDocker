#!/bin/bash
# Replace placeholders with environment variables
envsubst < config-template.txt > config.txt

# Start the bot
exec java -Dnogui=true -jar JMusicBot-0.4.3.jar
