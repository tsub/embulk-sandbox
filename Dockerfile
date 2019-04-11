FROM java:8-jre

RUN curl -o /usr/local/bin/embulk -L "https://dl.embulk.org/embulk-latest.jar" && \
    chmod +x /usr/local/bin/embulk && \
    embulk gem install \
        embulk-input-mysql \
        embulk-output-mysql \
        embulk-filter-hash

ENTRYPOINT ["java", "-jar", "/usr/local/bin/embulk"]
