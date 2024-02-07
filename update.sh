#!/bin/bash

docker build -t html-server-image:v1 .

docker rm -f cv_page

docker run -d --restart unless-stopped -p 5012:80 --name cv_page html-server-image:v1
