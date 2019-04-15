#!/usr/bin/env bash
$(./sqlite3.sh) $(./get-db-name.sh) \
    "CREATE TABLE IF NOT EXISTS web_ping (id INTEGER PRIMARY KEY AUTOINCREMENT, web_site TEXT, ping NUMERIC, test_time NUMERIC);"
