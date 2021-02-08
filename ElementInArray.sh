#! /bin/bash -x
declare -a numbers
for (( i=0; i<10; i++ ))
do 
	number[(( $i ))]=$(( $RANDOM%20 ))
done

echo ${number[@]}


read -p "enter number to check" num
present=0
for (( i=0; i<10; i++ ))
do
	if [ ${number[$i]} -eq $num ]
	then
		echo "number $num present in array"
		present=1
		break
	fi
done

if [ $present -eq 0 ]
then
	echo "$num not present in array"
fi




