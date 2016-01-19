#!/bin/bash
#
# Check if two figures numbers are
#
# Carlos Alonso
# 5-12-2015
clear
x1=0
while ((x1<10 || x1>99));do
  printf "Write first number (10-99): "
  read x1
done
x2=0
while ((x2<10 || x2>99));do
  printf "Write second number (10-99): "
  read x2
done

if (((x1%11 !=0 && (x1+x2)%11==0)||(x1%11 ==0 && x1==x2)));then
  printf "Numbers have same figures in inverted order \n"
else
  printf "Numbers haven't same figures in inverted order \n"
fi
