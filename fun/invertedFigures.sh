#!/bin/bash
#
# Script que compara dos nombres de dos dígits
# i comprova si tenen les xifres invertides
#
# Carlos Alonso
# 5-12-2015

printf "Entra el primer numero (10-99): "
read x1
while ((x1<10 || x>99));do
  printf "Entra el primer numero (10-99): "
  read x1
done
printf "Entra el segon número (10-99): "
read x2
while ((x1<10 || x>99));do
  printf "Entra el segon número (10-99): "
  read x2
done
r1=$((x1%11))
if [[ $r1 -ne 0 ]];then
  sum=$((x1+x2))
  if [[ $((sum%11)) -eq 0 ]];then
    echo "Tenen les xifres invertides"
  else
    echo "No tenen les xifres invertides"
  fi
else
  if ((x1 == x2));then
    echo "Tenen les xifres invertides"
  else
    echo "No tenen les xifres invertides"
  fi
fi
