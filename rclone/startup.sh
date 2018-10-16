#!/bin/bash
mkdir /etc/pki/tls/certs
cp /mnt/kd/.rclone/files/ca-bundle.crt /etc/pki/tls/certs/
ln -s /mnt/kd/.rclone/bin/rclone /usr/sbin/rclone
exit
