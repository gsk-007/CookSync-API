#!/bin/sh

set -e

envsubst < /etc/nginx/defautl.conf.tpi > /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'