#!/bin/bash

while [ 1 ] 
do
  T=`ping -W 10 -w 10 -c 1 $1  | grep "time=" |  awk -F "time=" '{print $2}' | awk -F"."  '{print $1}'` 
  CNT=`expr $T / 10`
  echo -e -n  $T' ms\t'
  for c in `seq $CNT` 
  do
  	echo -n '-'
  done
  echo
  sleep 1
done