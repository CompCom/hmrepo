#!/bin/sh

source /etc/preinit
script_init

profileFolder="$rootfs/etc/profiles/data/$1"

# Check for usb mod
if [ -d "$mountpoint/media/$modname/profiles/" ]; then
  profileFolder="$mountpoint/media/$modname/profiles/$1"
fi

mount_bind "$profileFolder" "$mountpoint/var/lib/clover"
