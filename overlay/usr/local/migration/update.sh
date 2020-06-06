#!/bin/sh

oldcfgdir="/usr/local/app/calibre-web"
cfgdir="/usr/local/etc/calibre-web"

[ ! -d "$cfgdir" ] && mkdir -p $cfgdir && chown calibreweb:calibreweb $cfgdir/app.db
[ -f "$oldcfgdir/app.db" ] && mv $oldcfgdir/app.db $cfgdir && chown calibreweb:calibreweb $cfgdir/app.db
[ -f "$oldcfgdir/gdrive.db" ] && mv $oldcfgdir/gdrive.db $cfgdir && chown calibreweb:calibreweb $cfgdir/gdrive.db
