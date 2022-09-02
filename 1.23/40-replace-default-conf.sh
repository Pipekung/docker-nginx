#!/bin/sh
# vim:sw=4:ts=4:et

set -e

echo "ROOT_DIR: $ROOT_DIR"
echo "FASTCGI_PASS: $FASTCGI_PASS"

sed -i "s|{{ROOT_DIR}}|$ROOT_DIR|g" /etc/nginx/conf.d/default.conf
sed -i "s|{{FASTCGI_PASS}}|$FASTCGI_PASS|g" /etc/nginx/conf.d/default.conf

# exit 0