#!/bin/bash -x
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
print
