#!/usr/bin/env bash
$(./sqlite3.sh) $(./get-db-name.sh) \
    -header -csv "select id, web_site, ping, test_time from web_ping where test_time > (strftime('%s','now') - 172800) order by id;" > usage.csv
$(./gnuplot.sh) usage.plot > web/outing.svg

cd web
mv outing.svg out.svg
