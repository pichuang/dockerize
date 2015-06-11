#!/bin/bash
# http://night9.cc:8000/smokeping/smokeping.cgi
docker run --name smokeping -p 8000:80 -v ~/docker/smokeping:/etc/smokeping:ro\
            -d dperson/smokeping -T Asia/Taipei
