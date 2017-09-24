#!/usr/bin/env bash

set

sudo bash <(curl -Ss https://my-netdata.io/kickstart.sh)

cat <<'EOF'
# stop netdata
killall netdata

# copy netdata.service to systemd
cp system/netdata.service /etc/systemd/system/

# let systemd know there is a new service
systemctl daemon-reload

# enable netdata at boot
systemctl enable netdata

# start netdata
systemctl start netdata

# Access to the web site
http://127.0.0.1:19999/
EOF
