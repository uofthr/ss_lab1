#!/bin/bash
cd /tmp
curl -s -S -O -H 'Cache-Control: no-cache' "https://codeload.github.com/hannorein/rebound/zip/master"
unzip master
rm -f master
mv rebound-master rebound
cd rebound
mkdir problems
cd problems
mkdir ss_lab1
cd ss_lab1
LASTCOMMIT=`curl -s https://api.github.com/repos/uofthr/ss_lab1/commits/master | grep sha |head -n 1 | cut -d\" -f4`
curl -s -S -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/ss_lab1/$LASTCOMMIT/Makefile"
curl -s -S -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/ss_lab1/$LASTCOMMIT/problem.c"
curl -s -S -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/ss_lab1/$LASTCOMMIT/restart_0051.bin"
curl -s -S -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/ss_lab1/$LASTCOMMIT/run.bash"
chmod a+x run.bash
make
