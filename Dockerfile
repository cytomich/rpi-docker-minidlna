FROM hypriot/rpi-alpine

RUN apk update && \
    apk upgrade && \
    apk add --no-cache bash minidlna && \
    rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
