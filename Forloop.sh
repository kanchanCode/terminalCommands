for (( i = 0; i < 20; i++ )); do
		if (( $(($RANDOM%2)) == 1 )); then
			present=$(($present+1))
			fullTime[$i]=160

		else
			fullTime[$i]=0
		fi
	done