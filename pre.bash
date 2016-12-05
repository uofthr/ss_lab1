#!/bin/bash
cd /tmp
git clone https://github.com/hannorein/rebound
cd rebound
mkdir problems
cd problems
mkdir ss_lab1
cd ss_lab1
curl -v -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/physicslab/0a25007/Makefile"
curl -v -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/physicslab/0a25007/problem.c"
curl -v -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/physicslab/0a25007/restart_0051.bin"
make
echo "DONE3"
touch /tmp/done.tag

