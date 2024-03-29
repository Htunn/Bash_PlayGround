#! /bin/sh
### BEGIN INIT INFO
# Provides:          halt
# Required-Start:
# Required-Stop:
# Default-Start:
# Default-Stop:      0
# Short-Description: Execute the halt command.
# Description:
### END INIT INFO

NETDOWN=yes

PATH=/sbin:/usr/sbin:/bin:/usr/bin
[ -f /etc/default/halt ] && . /etc/default/halt

. /lib/lsb/init-functions

do_stop () {
        if [ "$INIT_HALT" = "" ]
        then
                case "$HALT" in
                  [Pp]*)
                        INIT_HALT=POWEROFF
                        ;;
                  [Hh]*)
                        INIT_HALT=HALT
                        ;;
                  *)
                        INIT_HALT=POWEROFF
                        ;;
                esac
        fi

        # See if we need to cut the power.
        if [ "$INIT_HALT" = "POWEROFF" ] && [ -x /etc/init.d/ups-monitor ]
        then
                /etc/init.d/ups-monitor poweroff
        fi

        # Don't shut down drives if we're using RAID.
        hddown="-h"
        if grep -qs '^md.*active' /proc/mdstat
        then
                hddown=""
        fi

        # If INIT_HALT=HALT don't poweroff.
        poweroff="-p"
        if [ "$INIT_HALT" = "HALT" ]
        then
                poweroff=""
        fi

        # Make it possible to not shut down network interfaces,
        # needed to use wake-on-lan
        netdown="-i"
        if [ "$NETDOWN" = "no" ]; then
                netdown=""
        fi

        log_action_msg "Will now halt"
        halt -d -f $netdown $poweroff $hddown
}

case "$1" in
  start|status)
        # No-op
        ;;
  restart|reload|force-reload)
        echo "Error: argument '$1' not supported" >&2
        exit 3
        ;;
  stop)
        do_stop
        ;;
  *)
        echo "Usage: $0 start|stop" >&2
        exit 3
        ;;
esac

:
