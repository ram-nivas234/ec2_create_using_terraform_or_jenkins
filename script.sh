#!/bin/bash
USERNAME="devops"
PASSWORD= "aa"
sudo useradd -m "$USERNAME"
echo "$USERNAME:$PASSWORD" | sudo chpasswd
echo "User $USERNAME created with password $PASSWORD "
echo "use command "su devops" to switch the current user  "
echo "use command "sudo userdel -r devops" to delete the user  "