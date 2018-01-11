#!/bin/sh

source /etc/preinit
script_init

# Check for usb mod
if [ -f "$rootfs/etc/profiles/bin/usb" ]; then
  if [ -d "$mountpoint/media/$modname/profiles/" ]; then
    mount_bind "$mountpoint/media/$modname/profiles/$1" "$mountpoint/var/lib/clover"
  else
    echo "Error: Profile folder not found on usb."
  fi
else
  mount_bind "$rootfs/etc/profiles/data/$1" "$mountpoint/var/lib/clover"
fi
