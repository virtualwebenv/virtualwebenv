#!/bin/bash

mkdir /etc/apache2/ssl 2> /dev/null

# Change VirtualWebEnv.test to the URL to be used
if [ ${APACHE_HTTP2} = true ]; then
  if [ ! -f /etc/apache2/ssl/ssl_site.crt ]; then
    openssl genrsa -out "/etc/apache2/ssl/ssl_site.key" 2048
    openssl rand -out /root/.rnd -hex 256
    openssl req -new -key "/etc/apache2/ssl/ssl_site.key" -out "/etc/apache2/ssl/ssl_site.csr" -subj "/CN=VirtualWebEnv.test/O=VirtualWebEnv/C=BR"
    openssl x509 -req -days 365 -extfile <(printf "subjectAltName=DNS:VirtualWebEnv.test,DNS:*.VirtualWebEnv.test") -in "/etc/apache2/ssl/ssl_site.csr" -signkey "/etc/apache2/ssl/ssl_site.key" -out "/etc/apache2/ssl/ssl_site.crt"
  fi

  a2enmod rewrite
  a2enmod headers
  a2enmod proxy proxy_html proxy_http xml2enc ssl http2
  service apache2 restart
fi

# Start apache in foreground
/usr/sbin/apache2ctl -D FOREGROUND
