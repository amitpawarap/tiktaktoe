#!/bin/bash -x
first=0;
second=0;
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
echo "$player player won the toss and gets the X";
first=$player;
input1="X";
else
echo "other player loss tos and gets the O"
input2="O";
fi
}
tos
