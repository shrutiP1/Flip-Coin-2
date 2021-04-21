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


#UC3
count1=0;
count2=0;
count3=0;
count4=0;
declare -A arr
declare -A perDic
for (( i=0 ; i<50 ; i++ ))
do

   res1=$((RANDOM%2))
   res2=$((RANDOM%2))
 
 if [[ $res1 -eq 1 && $res2 -eq 1 ]]
then
       ((count1++))
      arr[HH]=$count1
       
elif [[ $res1 -eq 0 && $res2 -eq 0 ]]
then
       ((count2++))
     arr[TT]=$count2
elif [[ $res1 -eq 1 && $re2 -eq 0 ]]
then
        ((count3++))
    arr[HT]=$count3
else
      ((count4++))
    arr[TH]=$count4
fi
done
percount1=$(((($((${arr[HH]}))*100)/50)))
percount2=$(((($((${arr[TT]}))*100)/50)))
percount3=$(((($((${arr[HT]}))*100)/50)))
percount4=$(((($((${arr[TH]}))*100)/50)))

arr[HH]=$percount1
arr[TT]=$percount2
arr[HT]=$percount3
arr[TH]=$percount4
echo "doublet combination" ${!arr[@]}
echo "percentage "${arr[@]}
