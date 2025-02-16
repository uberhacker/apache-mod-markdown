#!/bin/bash
apt update
apt install build-essential libtool automake autoconf libmarkdown2-dev libapr1 libapr1-dev apache2 apache2-dev discount -y
cd /tmp
git clone https://github.com/hamano/apache-mod-markdown.git
cd apache-mod-markdown/
autoreconf -f -i
./configure
make
make install
cd /user/.lando/plugins/apache-mod-markdown/config
cp markdown.conf markdown.load /etc/apache2/mods-available/
a2enmod markdown
