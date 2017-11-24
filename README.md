# minidnla in docker for Raspberry Pi

It can be configured with environment variables. Prefix any config directive of minidlna with `MINIDLNA_`.

Info about directives here: http://manpages.ubuntu.com/manpages/raring/man5/minidlna.conf.5.html

Run container:

```
docker run -d \
    --net=host \
    -v <media dir on host>:/media \
    -e MINIDLNA_MEDIA_DIR=/media \
    -e MINIDLNA_PORT=8200 \
    -e MINIDLNA_FRIENDLY_NAME=media-box \
    cytomich/rpi-docker-minidlna
```

Compose file entry:

```
services:
  minidlna:
    image: cytomich/rpi-docker-minidlna
    volumes:
      - <media dir on host>:/media
    environment:
      - MINIDLNA_MEDIA_DIR=/media
      - MINIDLNA_PORT=8200
      - MINIDLNA_FRIENDLY_NAME=media-box
    network_mode: "host"
    restart: always
```

Based on https://github.com/djdefi/rpi-docker-minidlna
