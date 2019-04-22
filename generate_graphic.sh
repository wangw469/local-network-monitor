#!/usr/bin/env bash
$(./sqlite3.sh) $(./get-db-name.sh) \
    -header -csv "select id, web_site, ping, test_time from web_ping where test_time > (strftime('%s','now') - $2) order by id;" > $1.csv
$(./gnuplot.sh) $1.plot > web/$1_temp.svg

cd web
mv $1_temp.svg $1.svg
