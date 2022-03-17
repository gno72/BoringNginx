#!/usr/bin/python3

from http.server import HTTPServer, BaseHTTPRequestHandler

class RequestHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html")
        self.end_headers()

        self.wfile.write(b"PASS" if self.headers["Sec-CH-UA-Full-Version"] else b"FAIL")


with HTTPServer(("localhost", 8000), RequestHandler) as server:
    server.serve_forever()
