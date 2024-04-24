#!/bin/bash

passwd_file="/etc/passwd"

users_with_bash=$(awk -F: '$7 == "/bin/bash" { print $1 }' "$passwd_file")

if [ -n "$users_with_bash" ]; then
    echo "Users with /bin/bash shell:"
    echo "$users_with_bash"
else
    echo "No users found with /bin/bash shell."
fi
