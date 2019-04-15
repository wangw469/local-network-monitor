#!/usr/bin/env bash
$(./sqlite3.sh) $(./get-db-name.sh) \
    -header -csv "select * from web_ping limit 100;" > usage.csv
gnuplot usage.plot > out.svg
