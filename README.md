# MusicBotDocker
[JMusicBot](https://github.com/jagrosh/MusicBot) Docker

## Guides
Official Guide: [HERE](https://jmusicbot.com/setup/)<br/>
Get Bot Token: [HERE](https://jmusicbot.com/getting-a-bot-token/)<br/>
Find user ID: [HERE](https://jmusicbot.com/finding-your-user-id/)

## Build and Run
```bash
docker build -t jmusicbot .
docker run -d \
  --name musicbot \
  -e BOT_TOKEN='your-real-token' \
  -e OWNER_ID='your-discord-id' \
  -e BOT_PREFIX="@mention" \
  -e UPDATE_ALERTS=true \
  jmusicbot
```
OR

```yaml
services:
  jmusicbot:
    build: .
    container_name: musicbot
    ports:
      - "2333:2333"
    environment:
      BOT_TOKEN: "your-real-bot-token"
      OWNER_ID: "your-discord-id"
      BOT_PREFIX: "@mention"
      UPDATE_ALERTS: true
    volumes:
      - ./Playlists:/app/Playlists
    restart: unless-stopped
```
```bash
docker compose up --build -d
```
