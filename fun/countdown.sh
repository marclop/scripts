#
# Countdown.sh
# A countdown using decremental for
#
# Carlos Alonso
# 01-12-2015

#!/bin/bash
count=10
for (( i=count;i>=0;i-- ))
do
  echo -ne "$i  \r"
  sleep 1
done
echo "Boom!!!!"
