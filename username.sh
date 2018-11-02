#! /bin/bash
# password.sh
# Written by Gary Zeri

# ask user for password and inform them of password requirements 
echo "All passwords must:"
echo "1. Must contain only lower case letters, digits, and the underscore character."
echo "2. Must start with a lower case letter."
echo "3. Must be between 3 and 12 characters in length."

echo "Please enter a password: "
read password

while echo $password | egrep -v "^[0-9_a-z]{5}$" > /dev/null 2>&1
do
	echo "You must enter a valid password!!"
	echo "Please enter a password: "
	read password
done
echo "Thank you"

