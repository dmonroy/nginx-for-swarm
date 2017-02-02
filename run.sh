#!/bin/bash

BASE_DOMAIN_REGEX="${BASE_DOMAIN//./\\\\.}"
sed -i \
  "s/<BASE_DOMAIN>/${BASE_DOMAIN}/" \
  /etc/nginx/conf.d/default.conf

sed -i \
  "s/<BASE_DOMAIN_REGEX>/${BASE_DOMAIN_REGEX}/" \
  /etc/nginx/conf.d/default.conf

sed -i \
  "s/<HTTP_PORT>/${HTTP_PORT}/" \
  /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'
