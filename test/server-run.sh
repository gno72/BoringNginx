#!/bin/sh

apk add python3
echo "starting python test server"
/usr/share/nginx/test.py &
echo "python test server running"
echo "starting nginx"
nginx
echo "nginx running"

/bin/sh
