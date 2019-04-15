#!/usr/bin/env bash
./create-db-if-needed.sh
while true; do
    ./test-single-site.sh "www.github.com"
    ./test-single-site.sh "www.apple.com"
    ./test-single-site.sh "www.google.com"
    clear
    $(./sqlite3.sh) $(./get-db-name.sh) \
        "select * from web_ping order by id desc;" | head
    sleep 2;
done
