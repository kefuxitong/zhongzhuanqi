#!/bin/sh
if [ -z $1 ];then
   echo "please input execfile name"
   exit -1
fi
./shutdown.sh $1
cmd=`./$1 >/dev/null 2>&1 &`
echo "exec cmd $cmd"
