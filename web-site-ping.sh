#!/usr/bin/env bash
curl -s -o /dev/null -w '%{remote_ip} %{time_starttransfer}\n' "$1"
