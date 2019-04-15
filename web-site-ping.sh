#!/usr/bin/env bash
curl -s -o /dev/null -w "$1 %{remote_ip} %{time_starttransfer}\n" "$1"
