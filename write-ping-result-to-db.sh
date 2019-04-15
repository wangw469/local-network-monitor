#!/usr/bin/env bash
$(./sqlite3.sh) $(./get-db-name.sh) \
    "insert into web_ping (web_site, ping, test_time) values('$1', '$3', strftime('%s','now'));"
