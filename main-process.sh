#!/usr/bin/env bash
./create-db-if-needed.sh
while true; do
    ./test-single-site.sh "https://www.github.com"
    ./test-single-site.sh "https://www.apple.com"
    ./test-single-site.sh "https://www.google.com"
    ./test-single-site.sh "https://www.youtube.com/"
    ./update_graphic.sh
    sleep 60;
done
