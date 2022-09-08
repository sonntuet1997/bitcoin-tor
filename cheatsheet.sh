curl -Lx http://10.7.1.11:8118 http://jsonip.com/
curl -s --socks5-hostname 10.7.1.11:9050 http://jsonip.com/
cat /var/lib/tor/mywebsite/hostname


bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 getblockchaininfo

bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 createwallet user1
bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 getnewaddress
bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 -generate 200
bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 listaddressgroupings
bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 sendtoaddress myUFjFMpchpdpf19Yh6BVVJoNoxDJtDLL9 200