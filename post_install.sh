#!/bin/sh

echo "Create location for calibre-web"
mkdir /usr/local/app
echo "Create location for calibre-web database"
mkdir /usr/local/etc/calibre-web

echo "Download calibre-web repo"
git clone https://github.com/janeczku/calibre-web.git /usr/local/app/calibre-web

echo "Install dependencies"
pip install -r /usr/local/app/calibre-web/requirements.txt
pip install -r /usr/local/app/calibre-web/optional-requirements.txt

echo "Create calibreweb user"
pw user add calibreweb -c calibreweb -u 488 -d /nonexistent -s /usr/bin/nologin
chown -R calibreweb:calibreweb /usr/local/app/calibre-web

echo "Executing Calibre-Web service"
chmod u+x /usr/local/etc/rc.d/calibre_web
sysrc "calibre_web_enable=YES"
service calibre_web start

cat /root/PLUGIN_INFO
