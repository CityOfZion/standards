#!/usr/bin/expect -f
set timeout -1
cd /home/consensus/neo-cli

spawn ./neo-cli

expect "neo>"

# Insert here your wallet path
send "open wallet /home/consensus/cn_wallet.json\n"

expect "password:"

# Insert here your wallet password
send "SOMESTRONGPASSWORD\n"

expect "neo>"
send "start consensus\n"
expect "OnStart"
interact
