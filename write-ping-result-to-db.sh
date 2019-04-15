#!/usr/bin/env bash
$(./sqlite3.sh) website-ping.db "SELECT strftime('%s','now');"
