apt-get update
yes | apt-get install squid3 apache2-utils
wget -O /etc/squid3/squid.conf https://raw.githubusercontent.com/bluejet518/internet/master/upcloudsquid.conf --no-check-certificate
htpasswd -c -b /etc/squid3/passwd upcloud proxy123
/etc/init.d/squid3 restart
