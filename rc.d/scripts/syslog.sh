#!/bin/ash
# (C) 2024 mskrasnov <https://github.com/mskrasnov>

. /etc/rc.d/init.d/functions

SYSLOG_ROT_SIZE=65536

case $1 in
  start)
    print_msg "Starting syslog..."
    syslogd -m 0 -s $SYSLOG_ROT_SIZE -L
    check_status

    print_msg "Starting klogd..."
    klogd
    check_status
  ;;

  stop)
    print_msg "Stopping klogd..."
    killall klogd
    check_status

    print_msg "Stopping syslogd..."
    killall syslogd
    check_status
  ;;

  restart)
    $0 stop
    $0 start
  ;;

  *)
    echo "Usage: $0 {start|stop|restart}"
    exit 1
  ;;
esac
