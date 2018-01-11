#!/bin/sh

source /etc/preinit
script_init

profileFolder="$rootfs/etc/profiles/data/$1"

# Check for usb mod
if [ -f "$rootfs/etc/profiles/bin/usb" ]; then
  profileFolder="$mountpoint/media/$modname/profiles/$1"
fi

[ ! -d "$profileFolder" ] && mkdir -p "$profileFolder"
