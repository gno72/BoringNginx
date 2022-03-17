# amtunlimited/boringnginx

This repo is a fork of [alexhaydock/BoringNginx](https://github.com/alexhaydock/BoringNginx), adapted to build from local sources.

## Install

The two source tress for boringssl and nginx are submodules that need
to be initialized after cloning the repository. Adding the
`--recurse-submodules` option to git clone will initialize and populate
them automatically.

After cloning, build the image as normal.

## Running the image

The Nginx server needs certificates to run properly. Local developement
was tested with certs using the [mkcert](mkcert.dev) tool.

To run the image with ALPS enabled, local certificate and configuration
files need to be passed in from a mounted volume. In the `test` folder
is an example nginx configuration file and CGI script to test if the
"Sec-CH-UA-Full-Version" header is present in the request (which should
come from ALPS if the config file is used).
