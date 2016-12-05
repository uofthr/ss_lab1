#!/bin/bash
cd /tmp
git clone https://github.com/hannorein/rebound
cd rebound
mkdir problems
cd problems
mkdir ss_lab1
cd ss_lab1
LASTCOMMIT=`curl -s https://api.github.com/repos/uofthr/ss_lab1/commits/master | grep sha |head -n 1 | cut -d\" -f4`
curl -v -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/ss_lab1/$LASTCOMMIT/Makefile"
curl -v -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/ss_lab1/$LASTCOMMIT/problem.c"
curl -v -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/ss_lab1/$LASTCOMMIT/restart_0051.bin"
curl -v -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/ss_lab1/$LASTCOMMIT/run.bash"
make
touch /tmp/done.tag

