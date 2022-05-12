# #!/bin/bash

# echo "welcome to the flip coin problem"
# random=$((RANDOM%2))
# ishead=1;

# if [ $ishead -eq $random ]
# then 
#     echo "this is the head";
# else
#     echo "this is tail";
# fi
# # 


echo " Welcome to Shell Scripting Program: Randomly generated values and Computations stored with an array";

	# Take three user input
#read -p "Enter the value of a:" a;
#read -p "Enter the value of b:" b;
#read -p "Enter the value of c:" c;

	# Generate random values
a=$((RANDOM%89+10));
b=$((RANDOM%89+10));
c=$((RANDOM%89+10));

echo $a $b $c;
echo "Random Numbers: " $a $b $c;

expr[0]=$(($a+$b*$c));
expr[1]=$(($a*$b+$c));
expr[2]=$(($a+$b/$c));
expr[3]=$(($a%$b+$c));

echo ${expr[@]};
echo "Before sorting an array : "${expr[@]};

for ((i=0;i<${#expr[@]};i++))
do
	for ((j=i+1;j<${#expr[@]};j++))
	do
		if [ ${expr[$i]} -lt ${expr[$j]} ]
		then
			temp=${expr[$i]};
			expr[$i]=${expr[$j]};
			expr[$j]=$temp;
		fi
	done
done

echo "After sorting an array (Descending) : "${expr[@]};

for ((i=0;i<${#expr[@]};i++))
do
	for ((j=i+1;j<${#expr[@]};j++))
	do
		if [ ${expr[$i]} -gt ${expr[$j]} ]
		then
			temp=${expr[$i]};
			expr[$i]=${expr[$j]};
			expr[$j]=$temp;
		fi
	done
done
echo "After sorting an array (Ascending) : "${expr[@]};

for a in ${expr[@]}
do
  echo "$a"
  (( a-- ))
done
