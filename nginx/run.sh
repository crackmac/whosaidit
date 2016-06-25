#!/bin/bash
docker stop nginx  
docker rm nginx   
docker run --name nginx  -v "$PWD"/html:/usr/share/nginx/html -v -p 80:80 -d nginx  