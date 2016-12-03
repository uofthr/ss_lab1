#!/bin/bash
cd /tmp
git clone https://github.com/hannorein/rebound
cd rebound
mkdir problems
cd problems
mkdir ss_lab1
cd ss_lab1
wget 'https://raw.githubusercontent.com/uofthr/physicslab/master/Makefile'
wget 'https://raw.githubusercontent.com/uofthr/physicslab/master/problem.c'
wget 'https://raw.githubusercontent.com/uofthr/physicslab/master/restart_0051.bin'
make

