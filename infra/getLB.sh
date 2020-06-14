#!/bin/bash

result=$(kubectl get service -n test)
j=0
for i in ${result[*]}
do
    array_list[j]=$i
    j=$[$j+1]
done
echo ${array_list[9]}
