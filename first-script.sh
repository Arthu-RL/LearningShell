#! /bin/bash

a=2
b=1 
arr=(1, 2, 3, "Arthur")
n=0

if [ $((a % b)) -eq 0 ] || [ $b -le $a ] 
then 
	echo "$a % $b == 0, or, $b <= $a"
else
	echo "None of these checks are true"
fi

arr+=('six')
echo ${arr[@]} 
echo ${arr[4]}

for index in ${arr[@]}; do
	echo $index
	n=$((n+1))
done
echo "size of array is : $n"

for ((i=0; i<$n; i++)); do
	echo $i
done
