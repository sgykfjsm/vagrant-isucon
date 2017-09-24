#!/usr/bin/env bash

if [ "$(whoami)" != "root" ]; then
    echo "root only"
    exit 1
fi

set -x

systemctl daemon-reload
systemctl restart mysql
systemctl restart isucon6-bench-worker.service
systemctl restart isupam.service
systemctl restart isutar.go.service
systemctl restart isuda.go.service
systemctl restart nginx.service

