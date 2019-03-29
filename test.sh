#!/bin/bash

export API_KEY='hjgklaJDHAjkl8980980'
export API_MAP='1111111111111111111'
export API_HOST='aaaaaaaaaaaaaaaaaaa'
export USER_NAME='Vlad'


echo "Enter user name"
read n

if [ $n == 'Vlad' ];
then
echo "User name is Vlad"
else
echo "Sorry, Vlad isn't current user"
fi
# printenv
echo $API_KEY
echo $API_MAP
echo $API_HOST
echo $USER_NAME
