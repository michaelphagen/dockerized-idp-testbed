#!/bin/sh
nohup node var/www/html/myapp/index.js &
httpd-shibd-foreground
