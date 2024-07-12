#!/bin/sh
lock() {
    ~/.config/i3/i3blur-lock.sh
}
case "$1" in
    lock)
        notify-send "locking..." && sleep 1s && lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        notify-send "suspending..." && sleep 1s && lock && systemctl suspend
        ;;
    hibernate)
        notify-send "hibernating..." && sleep 1s && lock && systemctl hibernate
        ;;
    reboot)
        notify-send "rebooting..." && sleep 1s && systemctl reboot
        ;;
    shutdown)
        notify-send "powering off..." && sleep 1s && systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
