Iocage [Calibre-Web](https://github.com/janeczku/calibre-web) plugin for freenas.

# Testing manually

In freenas shell run:

* `fetch https://raw.githubusercontent.com/ix-plugin-hub/iocage-plugin-index/master/calibre-web.json`
* `iocage fetch -P calibre-web.json --name calibre-web dhcp=on --branch 'test'`

## TODO
1. Maybe update can be done from inside the app (check repo arter updage)
2. Show version in Freenas plugins
3. Add settings (https://github.com/timsavage/iocage-plugin-dnsmasq or https://github.com/gitbulb/iocage-plugin-openvpn) maybe to configure database path
4. Add conversion binaries (ebook-convert, unrar?)
