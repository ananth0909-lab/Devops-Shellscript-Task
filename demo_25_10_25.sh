#!/bin/bash

HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}\n" www.guvi.in)
echo "HTTP status code for $URL: $HTTP_STATUS"
if [[ "$HTTP_STATUS" -ge 200 && "$HTTP_STATUS" -lt 400 ]]; then
     echo "Success: The Website is accessible" 
else
     echo "Failure: Website returns an error or is not accessible"
 fi
 # Task 2: Replace 'give' with 'learning'
 read -p "Enter the Filename: " demo_Excercise_2

 if [[ ! -f "$demo_Excercise_2" ]]; then
	 echo "File not found: $demo_Excercise_2"
	 exit 1
fi
sed -i '5,${/welcome/s/give/learning/g}' "$demo_Excercise_2"
	 
