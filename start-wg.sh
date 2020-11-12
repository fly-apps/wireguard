#!/bin/sh
set -e
sysctl -w net.ipv6.conf.all.forwarding=1
echo "Enabled ipv6 forwarding"

sed -i "s|WIREGUARD_PRIVATE_KEY|$WIREGUARD_PRIVATE_KEY|" /etc/wireguard/wg0.conf
echo "Wrote wireguard config"

run