#!/bin/bash

ln -s /home/box/stepic-task2/etc/hello.py /etc/gunicorn.d/hello.py
cp /home/box/stepic-task2/etc/ng.conf /etc/nginx/sites-available/ng.conf
ln -s /etc/nginx/sites-available/ng.conf /etc/nginx/sites-enabled/ng.conf

