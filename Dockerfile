FROM nginx:1.21.1-alpine

VOLUME /sys/fs/cgroup

RUN apk --no-cache add --update \
    openrc \
    tor

RUN mkdir -p /run/openrc && touch /run/openrc/softlevel
RUN rc-update add tor default

COPY ./entrypoint/40-start-tor-service.sh /docker-entrypoint.d

COPY ./etc/tor/torrc /etc/tor/torrc
COPY ./etc/nginx/nginx.conf /etc/nginx/nginx.conf

COPY ./html /usr/share/nginx/html