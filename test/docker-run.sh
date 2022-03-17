docker run --rm -it \
  -p "127.0.0.1:443:443/tcp" \
  -v $PWD/nginx.conf:/etc/nginx/nginx.conf:ro \
  -v $PWD/test.py:/usr/share/nginx/test.py:ro \
  -v $PWD/localhost.pem:/etc/localhost.pem:ro \
  -v $PWD/localhost-key.pem:/etc/localhost-key.pem:ro \
  -v $PWD/server-run.sh:/usr/share/nginx/server-run.sh:ro \
  boring-nginx /usr/share/nginx/server-run.sh 
