#!/bin/sh

service calibre_web stop

sysrc -f /etc/rc.conf calibre_web_enable="NO"
