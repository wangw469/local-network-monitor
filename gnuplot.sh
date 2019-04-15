#!/usr/bin/env bash
echo docker run --rm -v $(pwd):/work \
    -w /work \
    local-network-monitor \
    gnuplot
