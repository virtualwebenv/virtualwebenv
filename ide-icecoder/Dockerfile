FROM php:alpine

LABEL maintainer="ahkui <ahkui@outlook.com>"

ARG PUID=1000
ENV PUID ${PUID}
ARG PGID=1000
ENV PGID ${PGID}

RUN apk add --no-cache git

RUN addgroup -g $PGID -S VirtualWebEnv && \
    adduser -u $PUID -S VirtualWebEnv -G VirtualWebEnv

USER VirtualWebEnv

RUN cd /home/VirtualWebEnv && git clone https://github.com/mattpass/ICEcoder.git

WORKDIR /home/VirtualWebEnv/ICEcoder

CMD ["php","-S","0.0.0.0:8080"]
