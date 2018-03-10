#!/bin/bash

sed -i -e "/^Listen/ c Listen $PORT" /etc/httpd/conf/httpd.conf
/usr/sbin/httpd -DFOREGROUND
