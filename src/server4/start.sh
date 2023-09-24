#!/bin/bash

gcc hello_world_server.c -lfcgi -o server
spawn-fcgi -p 8080 ./server
service nginx start
/bin/bash
