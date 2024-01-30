#!bin/bash/

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
THRESHOLD=500

if [[ $FREE_SPACE -lt $THRESHOLD ]]
then
	echo "WARNING! RAM space is running low. PLease kill some processes."
else
	echo "RAM space is sufficient. $FREE_SPACE MB is currently free."
fi	
