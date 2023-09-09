#! /bin/bash

filesdir=$1
searchstr=$2

if [ $filesdir == "" ] || [ $searchstr == "" ];then
        echo "Invalid arguments."
        exit 1
fi

if [ ! -d $filesdir ];then
        echo "Invalid Directory."
        exit 1
fi

files=$(find $filesdir -type f | wc -l)
lines=$(grep -ra $searchstr $filesdir | wc -l)
echo "The number of files are $files and the number of matching lines are $lines"
exit 0

