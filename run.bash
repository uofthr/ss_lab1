#!/bin/bash
FAIL=0
./rebound &
./rebound &
./rebound &
./rebound &
touch /tmp/done.tag

for job in `jobs -p`
do
echo $job
wait $job || let "FAIL+=1"
done
echo $FAIL
if [ "$FAIL" == "0" ];
then
touch /tmp/done.tag
else
touch /tmp/error.tag
fi
