#!/bin/bash

gcc hello_world_server.c -lfcgi -o server
spawn-fcgi -p 8080 ./server
service nginx start
nginx -s reload
while true; do
    wait
done
/bin/bash
