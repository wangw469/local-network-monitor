#!/usr/bin/env bash
./create-db-if-needed.sh
while true; do
    ./test-single-site.sh "www.github.com"
    ./test-single-site.sh "www.apple.com"
    ./test-single-site.sh "www.google.com"
    ./update_graphic.sh
    sleep 60;
done
