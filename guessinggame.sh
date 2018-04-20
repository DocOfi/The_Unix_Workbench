!/usr/bin/env/bash
#File: guessinggame.sh

function count_files {
        local tot_files=$( ls -l /home/edmund/Documents | wc -l )
        echo $tot_files
}
num_dir=$(count_files)

too_high=$(($num_dir + 3))

too_low=$(($num_dir - 3))


while [[ $response -ne num_dir ]] 
do
echo "How many files do I have in my directory?"
echo "Take a guess."
read response

if [[ $response -gt  $too_high ]]
then
	echo "That's too high. Try again?"

elif [[ $response -gt  $num_dir ]] && [[ $response -le $too_high ]]
then
        echo "You're getting warmer. Try again?"

elif [[ $response  -lt $too_low ]] 
then
	echo "That's too low, give it another try"

elif [[ $response -lt $num_dir ]] && [[ $response -ge $too_low ]]
then
	echo "You almost got it, keep on trying"

else [[ $response -eq $num_dir ]]
	echo "Congratulations!!! You got it."
fi
done
