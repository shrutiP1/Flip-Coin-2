#!/bin/bash -x
echo "welcome"

#UC1
head=1;
tail=0;
res=$((RANDOM%2))

if [ $res -eq 1 ]
then
   echo "head"
else
   echo "tail"
fi

#UC2
read -p "how many time you want to loop it " num
headcount=0;
tailcount=0;
for (( i=0 ; i<$num ; i++ ))
do
     res=$((RANDOM%2))

   if [ $res -eq 1 ]
   then
      ((headcount++))
   else
      ((tailcount++))
   fi
done

declare -A countDic
countDic[head]=$headcount
countDic[tail]=$tailcount
perOfHead=$(((${countDic[head]})*(100/$num)))
echo "head percentage "$perOfHead "%"
perOfTail=$(((${countDic[tail]})*(100/$num)))
echo "tail percentage "$perOfTail "%"

