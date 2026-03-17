#!/bin/bash

LOGFILE="user_manage.log"

echo "Choose option:"
echo "1. Create User"
echo "2. Delete User"
echo "3. Create Group"
echo "4. Add User to Group"
read choice

case $choice in

1)
  echo "Enter username:"
  read uname
  if id "$uname" &>/dev/null
  then
    echo "User already exists"
  else
    sudo useradd $uname
    echo "$uname created" | tee -a $LOGFILE
  fi
;;

2)
  echo "Enter username:"
  read uname
  sudo userdel $uname
  echo "$uname deleted" | tee -a $LOGFILE
;;

3)
  echo "Enter group name:"
  read gname
  sudo groupadd $gname
  echo "Group $gname created" | tee -a $LOGFILE
;;

4)
  echo "Enter username:"
  read uname
  echo "Enter group name:"
  read gname
  sudo usermod -aG $gname $uname
  echo "$uname added to $gname" | tee -a $LOGFILE
;;

*)
  echo "Invalid option"
;;

esac
