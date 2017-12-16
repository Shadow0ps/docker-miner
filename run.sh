#!/bin/sh
pool=$1
addr=$2
pass=$3
threads=$4

if [ -z "$1" ]
then
   pool=stratum+tcp://nl.etnpool.net:3333
fi
if [ -z "$2" ]
then
   addr=etnkNHSZYCEbJ1TfpWgJ5K5deC8YE1NPaCdjMxZZUL1TXbRrXY1oWgUBsZ4wQaMY1BGwFpSXcpkVHjEgXC7TFd5wAgznALQZ5E
fi
if [ -z "$3" ]
then
   pass=x
fi
if [ -z "$4" ]
then
   threads=12
fi

echo connecting to pool $pool with address $addr and threads $threads

/cpuminer-multi/minerd -a cryptonight -o $pool -u $addr -p $pass -t $threads
