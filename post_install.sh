#!/bin/sh

# Create location for calibre-web
mkdir /usr/local/app
# Create location for calibre-web database
mkdir /usr/local/etc/calibre-web

git clone https://github.com/janeczku/calibre-web.git /usr/local/app/calibre-web

# Install dependencies
pip install -r /usr/local/app/calibre-web/requirements.txt

pw user add calibreweb -c calibreweb -u 488 -d /nonexistent -s /usr/bin/nologin
chown -R calibreweb:calibreweb /usr/local/app/calibre-web

chmod u+x /usr/local/etc/rc.d/calibre_web

sysrc "calibre_web_enable=YES"

service calibre_web start

echo "Calibre-Web has been installed!" > /root/PLUGIN_INFO
echo '* The default admin credentials are "admin:admin123"' >> /root/PLUGIN_INFO
echo '* The config folder is "/usr/local/etc/calibre-web"' >> /root/PLUGIN_INFO
echo '* The Calibre E-Book Converter path is "/usr/local/bin/ebook-convert"'  >> /root/PLUGIN_INFO

cat /root/PLUGIN_INFO
