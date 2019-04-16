#!/usr/bin/env bash
./stop-monitor.sh

docker run --rm  \
    -v "$(pwd):/usr/work" \
    --name $(./get-monitor-docker-name.sh) \
    -w /usr/work \
    local-network-monitor \
    ./main-process.sh &

./stop-web-server.sh
./start-web-server.sh
