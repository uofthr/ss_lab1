#!/bin/bash
cd /tmp
git clone https://github.com/hannorein/rebound
cd rebound
mkdir problems
cd problems
mkdir ss_lab1
cd ss_lab1
curl -v -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/ss_lab1/79588b7/Makefile"
curl -v -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/ss_lab1/79588b7/problem.c"
curl -v -O -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/uofthr/ss_lab1/79588b7/restart_0051.bin"
make
touch /tmp/done.tag

