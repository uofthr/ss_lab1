#!/bin/bash
cd /tmp
git clone https://github.com/hannorein/rebound
cd rebound
mkdir problems
cd problems
mkdir ss_lab1
cd ss_lab1
curl -v -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/physicslab/master/Makefile?$RANDOM"
curl -v -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/physicslab/master/problem.c$RANDOM"
curl -v -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/physicslab/master/restart_0051.bin?$RANDOM"
make
echo "DONE3"
touch /tmp/done.tag

