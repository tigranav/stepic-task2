#!/bin/bash

ln -s /home/box/stepic-task2/etc/hello.py /etc/gunicorn.d/hello.py
cp /home/box/stepic-task2/etc/default /etc/nginx/sites-available/default
#ln -s /etc/nginx/sites-available/ng.conf /etc/nginx/sites-enabled/ng.conf
/etc/init.s/nginx restart

guinicorn -w 1 -b 0.0.0.0:8080 hello.py:app &

wget -O 1.out http://localhost:8080/?a=b&b=c
wget -O 2.out http://localhost/hello/?a=b&b=c

mkdir ~/web
ln -s ~/stepic-task2/hello.py ~/web/hello.py
