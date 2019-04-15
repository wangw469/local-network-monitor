#!/usr/bin/env bash
$(./sqlite3.sh) $(./get-db-name.sh) \
    -header -csv "select * from web_ping order by id desc limit 100;" > usage.csv
$(./gnuplot.sh) usage.plot > web/outing.svg

cd web
mv outing.svg out.svg
