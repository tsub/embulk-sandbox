FROM java:8-jre-alpine

RUN apk add --update curl && \
    curl -o /usr/local/bin/embulk -L "https://dl.embulk.org/embulk-latest.jar" && \
    chmod +x /usr/local/bin/embulk

ENTRYPOINT ["java", "-jar", "/usr/local/bin/embulk"]
