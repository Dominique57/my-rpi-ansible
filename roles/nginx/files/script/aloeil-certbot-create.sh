#!/bin/sh

CERTBOT="-f /compose/nginx/docker-compose.yml run --rm  certbot"
ARGS="--non-interactive --agree-tos"


# Http challenge
echo 'Generating cert for aloeil.ddns.net'
if [ ! -e "/compose/nginx/bind/cert/live/aloeil.ddns.net"  ]; then
    docker compose $CERTBOT certonly $ARGS --webroot --webroot-path /var/www/certbot/ --dry-run -m 'noreply@aloeil.ddns.net' -d 'aloeil.ddns.net'
else
    echo "Cert already exists"
fi

echo 'Generating cert for aloeil.duckdns.org'
if [ ! -e "/compose/nginx/bind/cert/live/aloeil.duckdns.org" ]; then
    docker compose $CERTBOT certonly $ARGS --webroot --webroot-path /var/www/certbot/ --dry-run -m 'noreply@aloeil.duckdns.org' -d 'aloeil.duckdns.org'
else
    echo "Cert already exists"
fi

# Dns challenge
echo 'Generating cert for *.aloeil.duckdns.org'
if [ ! -e "/compose/nginx/bind/cert/live/aloeil.duckdns.org" ]; then
    AUTH="/compose/nginx/data/script/aloeil-duckdns-auth.sh"
    CLEAN="/compose/nginx/data/script/aloeil-duckdns-clean.sh"
    docker compose $CERBOT certonly $ARGS --preferred-challenges=dns --manual --manual-auth-hook "$AUTH" --manual-cleanup-hook "$CLEAN" -m 'noreply@aloeil.duckdns.org' -d '*.aloeil.duckdns.org'
else
    echo "Cert already exists"
fi
