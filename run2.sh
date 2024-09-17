#!/bin/sh
clear;
loop=${1:-1000}
waittime=${2:-3}
for i in `seq 1 $loop`;
do
    echo "Running C++: $i out of $loop";
    ./app2cpp;
    if [ "$i" -lt "$loop" ]; then
        sleep $waittime;
    fi
done
