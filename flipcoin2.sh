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

