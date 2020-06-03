#!/bin/sh

cfgdir="/usr/local/etc/calibre-web"

[ ! -d "$cfgdir" ] && mkdir -p "$cfgdir"
[ -f /usr/local/app/calibre-web/app.db ] && mv /usr/local/app/calibre-web/app.db $cfgdir
[ -f /usr/local/app/calibre-web/gdrive.db ] && mv /usr/local/app/calibre-web/gdrive.db $cfgdir
