#!/bin/sh
execfile=$1
if [ -z $1 ];then
   echo "please input filename"
   exit 1
fi

exepid=`ps aux | grep $execfile | awk '{if($11!="grep"&&$11!="/bin/sh"){print $2}}'`
#echo $execfile,$exepid
if [ -z $execfile ];then
   echo "please input execfile name to shutdown"
   exit 1
fi
if [ -z $exepid ];then
   echo "no $execfile pid"
   exit 1
fi

kill $exepid

