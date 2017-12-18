#!/usr/bin/expect -f
set timeout -1
cd /home/consensus/neo-cli
./neo-cli
expect "neo>"

# Insert here your wallet path
send "open wallet /home/consensus/cn_wallet.json"

expect "password:"

# Insert here your wallet password
send "SOMESTRONGPASSWORD"

expect "neo>"
send "start consensus\n"
expect "OnStart"
interact
