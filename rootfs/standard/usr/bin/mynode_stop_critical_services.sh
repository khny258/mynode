#!/bin/bash

# Stop additional services
systemctl stop glances
systemctl stop lndhub
systemctl stop netdata
systemctl stop glances
systemctl stop rtl
systemctl stop webssh2
systemctl stop whirlpool
systemctl stop dojo
systemctl stop btcpayserver


# Manually stop services (backup)
/opt/mynode/dojo/docker/my-dojo/dojo.sh stop || true


# Stop core services
systemctl stop electrs
systemctl stop lnd
systemctl stop quicksync
systemctl stop bitcoind

sync
