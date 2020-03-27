#!/bin/bash -x
input=0;
first=2;
input2=0;
declare -A tiktaktoe
function reset()
{
for((i=0;i<3;i++))
do
for((j=0;j<3;j++))
do
 tiktaktoe["$i,$j"]=1
done
done
}
reset
function boarddisplay()
{
echo ${tiktaktoe["0,0"]} ${tiktaktoe["0,1"]} ${tiktaktoe["0,2"]}
echo ${tiktaktoe["1,0"]} ${tiktaktoe["1,1"]} ${tiktaktoe["1,2"]}
echo ${tiktaktoe["2,0"]} ${tiktaktoe["2,1"]} ${tiktaktoe["2,2"]}
}
#print
tos()
{
echo "enter who is taking call...."
read player;
echo -e "now enter coin choice 1.head \n 2.tail"
read choice;
a=$((RANDOM%2 +1))
echo "random value $a";
if [ $choice -eq $a ]
then
echo "you won the toss and gets the 1.X \n 2.O";
first=1;
read input
else
first=1;
echo "you  loss the tos and computer randomly generates its choice..."
b=$((RANDOM%2))
if [ $b -eq 0 ]
then
echo "computer chose X";
else
echo "computer chose O";
fi
fi
if [ $input -eq 1 ]
then 
input=1;
else
input2=0;
fi
}
