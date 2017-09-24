#!/usr/bin/env bash

set -u

SUDO_OPT=""

if [ "$(whoami)" != "isucon" ]; then
    echo "Please change user to 'isucon' by 'sudo -i -u isucon'"
    exit 1
fi

(cd ${HOME} && source ${HOME}/env.sh && cd ${HOME}/isucon6q/ && ./isucon6q-bench -target http://127.0.0.1)
