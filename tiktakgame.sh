#!/bin/bash -x
input=0;
first=2;
input2=0;
declare -A tiktaktoe
tottaktoe["1,1"]=1
function reset()
{
for((i=0;i<3;i++))
do
for((j=0;j<3;j++))
do
 tiktaktoe["$i,$j"]="e"
done
done
}
#reset
function boarddisplay()
{
echo ${tiktaktoe["0,0"]} ${tiktaktoe["0,1"]} ${tiktaktoe["0,2"]}
echo ${tiktaktoe["1,0"]} ${tiktaktoe["1,1"]} ${tiktaktoe["1,2"]}
echo ${tiktaktoe["2,0"]} ${tiktaktoe["2,1"]} ${tiktaktoe["2,2"]}
}
#print
tos()
{
echo -e "now enter coin choice 1.head \n 2.tail"
read choice;
a=$((RANDOM%2+1))
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
input=1;
else
echo "computer chose O";
input=0;
fi
fi
if [ $input -eq 1 ]
then 
input2=0;
else
input2=1;
fi
}
reset
boarddisplay
tos
boarddisplay
