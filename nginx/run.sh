#!/bin/bash
docker stop nginx  
docker rm nginx   
docker run --name nginx  -v "$PWD":/usr/share/nginx/html -v "$PWD"/dev/nginx.conf:/etc/nginx/nginx.conf:ro -p 80:80 -d nginx  