#!/usr/bin/env bash


wait_time() {
   for ((t=$1;t>0;t--))
   do
     echo -ne Press any key to continue. Will automatically continue in $t secon                                                                                                                                  ds.'\r'
     read -s -n1 -t 1 keypress
     if [[ $? -eq 0 ]]; then
        echo key pressed
        return;
     fi
   done
}

while true; do
  ./update.sh
  wait_time 1800
done
