#!/usr/bin/env bash
# echo ./sqlite3_mac
echo docker run --rm -v "$(pwd):/usr/work" \
    -w /usr/work \
    local-network-monitor \
    sqlite3
