#!/usr/bin/expect
eval spawn amplify publish
expect "(Y/n)"
send "y\r"
interact
echo "done!"
