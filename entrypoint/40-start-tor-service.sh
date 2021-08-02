#!/bin/sh
set -e

echo "Service 'All': Status"

rc-status -a

mkdir -p /var/lib/tor/hidden_service
chown -R 100 /var/lib/tor/hidden_service
chmod -R 0700 /var/lib/tor/hidden_service

echo "Service 'Tor': Starting ..."

rc-service tor start

sleep 2

rc-service tor status


echo >&3 "$ME: info: Read tor hostname"

cat /var/lib/tor/hidden_service/hostname