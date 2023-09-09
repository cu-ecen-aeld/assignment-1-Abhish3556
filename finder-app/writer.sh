#!/bin/bash
writefile=$1
writestr=$2

if [ -z $writefile ] || [ -z $writestr ]
then
        echo "Invalid arguments"
        exit 1
fi

if [ ! -d $writefile ]
then
        mkdir -p $(dirname $writefile)
fi

echo $writestr > $writefile

exit 0

