# Testing scripts

## Setup
 
1. build/install the docker image as "boring-nginx"
2. Install [mkcert](mkcert.dev)
3. run `mkcert localhost` to get `localhost.pem` and 
   `localhost-key.pem`

## Test

1. Run `docker-run.sh`
2. Navigate the nearest ALPS/ACCEPT_CH/Client Hints enabled browser to
   `https://localhost`
3. If the `Sec-CH-UA-Full-Version` request header was sent, you'll see
   `PASS`, otherwise you'll see `FAIL`
