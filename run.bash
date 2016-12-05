#!/bin/bash
cd /tmp/rebound/problems/ss_lab1/
FAIL=0
./rebound &
./rebound &
./rebound &
./rebound &

for job in `jobs -p`
do
echo $job
wait $job || let "FAIL+=1"
done
echo $FAIL
if [ "$FAIL" == "0" ];
then
tar -cvf transfer.tar run_1*.bin
touch /tmp/done.tag
else
touch /tmp/error.tag
fi
