#!/usr/bin/env bash

killall polybar
killall cava

while pgrep -x polybar >/dev/null; do
    sleep 1
done

rm -f /tmp/cava.fifo
mkfifo /tmp/cava.fifo

cava &

polybar main &
polybar hdmi &
