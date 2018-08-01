#!/bin/bash

# Check the HTTP status code for the application
test $(curl -LI localhost:9090 -o /dev/null -w '%{http_code}\n' -s) -eq 200

