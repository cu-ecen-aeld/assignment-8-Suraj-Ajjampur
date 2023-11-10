#!/bin/sh

case "$1" in
  start)
        # Commands to load modules
        echo "Starting scull and loading modules"
        /usr/bin/scull_load
        /usr/bin/module_load faulty
        modprobe hello
        /usr/bin/aesdchar_load
        ;;
  stop)
        # Commands to unload modules
        echo "Stoping scull and unloading modules"
        /usr/bin/aesdchar_unload
        rmmod hello
        /usr/bin/module_unload faulty
        /usr/bin/scull_unload
        ;;
  *)
        echo "Usage: $0 {start|stop}"
        exit 1
esac

exit 0
