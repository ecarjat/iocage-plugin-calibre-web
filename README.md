Iocage [Calibre-Web](https://github.com/janeczku/calibre-web) plugin for freenas.

The relevant details are:

* The default admin credentials are "admin:admin123"
* The config folder is "/usr/local/etc/calibre-web"
* The Calibre E-Book Converter path is "/usr/local/bin/ebook-convert"
* The user running Calibre-Web is "root" (to be changed)

Calibre-Web can be updated using either the built-in admin console or the Plugin update command.

# Testing manually

In freenas shell run:

* `fetch https://raw.githubusercontent.com/ix-plugin-hub/iocage-plugin-index/master/calibre-web.json`
* `iocage fetch -P calibre-web.json --name calibre-web dhcp=on --branch 'test'`

## TODO
1. Change the user that runs the service (from root to calibreweb)
2. Add settings (like https://github.com/timsavage/iocage-plugin-dnsmasq or https://github.com/gitbulb/iocage-plugin-openvpn) when available in Freenas UI
