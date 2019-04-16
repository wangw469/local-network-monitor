#!/usr/bin/env bash
docker run -d \
    --rm \
    --name $(./get-web-docker-name.sh) \
    -p 8888:80 \
    -v "$PWD/web":/usr/local/apache2/htdocs/ \
    httpd:2.4-alpine
