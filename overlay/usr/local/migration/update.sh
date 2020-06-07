#!/bin/sh

oldcfgdir="/usr/local/app/calibre-web"
cfgdir="/usr/local/etc/calibre-web"

[ ! -d "$cfgdir" ] && mkdir -p $cfgdir
[ -f "$oldcfgdir/app.db" ] && mv $oldcfgdir/app.db $cfgdir
[ -f "$oldcfgdir/gdrive.db" ] && mv $oldcfgdir/gdrive.db $cfgdir

chown -R calibreweb:calibreweb $cfgdir
