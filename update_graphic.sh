#!/usr/bin/env bash
$(./sqlite3.sh) $(./get-db-name.sh) \
    -header -csv "select id, web_site, ping, test_time, datetime(test_time, 'unixepoch', 'localtime') from web_ping where date(test_time, 'unixepoch', 'localtime') > date('now', '-1 day', 'localtime') order by id;" > usage.csv
$(./gnuplot.sh) usage.plot > web/outing.svg

cd web
mv outing.svg out.svg
