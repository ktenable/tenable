#!/bin/bash
#/etc/rc.d/init.d/daemon

# Source function library.
. /etc/init.d/functions

start() {
        echo -e "Starting daemon service... \n"
        /bin/daemon
        return 0
}

stop() {
        echo -e "Shutting down daemon service... \n"
        /usr/bin/pkill "daemon"
        return 0
}

case "$1" in
    start)
        start
        ;;
    stop)
        stop
        ;;
    status)
        ;;
    restart)
        stop
        start
        ;;
    reload)
        ;;
    *)
        echo "Usage: daemon {start|stop|status|reload|restart}"
 exit 1
        ;;
esac
exit $?

