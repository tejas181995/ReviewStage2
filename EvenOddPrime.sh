#! /bin/bash -x

function getOdds(){
	
	declare -a odds
	local n=$1
	local indx=0
	for (( i=1; i<=$n; i=$(($i+2)) ))
	do
		odds[ (( $indx )) ]=$i
		indx=$(( $indx+1 ))
	done
	echo ${odds[@]}
}

function getEvens(){

	declare -a evens
        local n=$1
        local indx=0
        for (( i=0; i<=$n; i=$(($i+2)) ))
        do
                evens[ (( $indx )) ]=$i
                indx=$(( $indx+1 ))
        done
        echo ${evens[@]}


}
function isPrime(){
	prime=0
	for (( i=2; i*i<=$1; i++ ))
	do
		if [ $(( $1%$i )) -eq 0 ]
		then
			prime=1
			break
		fi
	done
	echo $prime
			
}

function getPrimes(){

	declare -a primes
	local n=$1
	local indx=0
	for (( i=2; i<=$n; i++ ))
	do
		temp=$( isPrime $i )
		if [ $temp -eq 0 ]
		then
			primes[ (($indx)) ]=$i
			indx=$(( $indx+1 ))
		fi
	done
	echo ${primes[@]}


}



read -p "Enter a number: " n
echo "Even Numbers: $( getEvens $n )"
echo "Odd Numbers: $( getOdds $n )"
echo "Prime Numbers: $( getPrimes $n )"

