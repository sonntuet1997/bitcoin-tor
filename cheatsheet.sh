curl -Lx http://10.7.1.11:8118 http://jsonip.com/
curl -s --socks5-hostname 10.7.1.11:9050 http://jsonip.com/
cat /var/lib/tor/mywebsite/hostname


bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 getblockchaininfo
bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 getpeerinfo
./src/bitcoin-cli -regtest getblockchaininfo
./src/bitcoin-cli -regtest getpeerinfo
./src/bitcoin-cli -regtest getnetworkinfo
./src/bitcoin-cli -regtest getaddednodeinfo
./src/bitcoin-cli -regtest getnodeaddresses 0
./src/bitcoin-cli -regtest sendaddrmessage
./src/bitcoin-cli -regtest addpeeraddress "servivenwug4ekn4hmeutnamtmftrirsucmd3opek7kqql4dwliegjqd.onion" 12345 true
./src/bitcoin-cli -regtest addpeeraddress "servjuchjdb2dndkmi3bbacvh7bop4ansnal2nchi7ig6u3hzfqne7yd.onion" 12345 true
./src/bitcoin-cli -regtest addpeeraddress "servjuchjdb2dndkmi3bbacvh7bop4ansnal2nchi7ig6u3hzfqne7yd.onion" 12345 true
./src/bitcoin-cli -regtest addpeeraddress "123.123.123.123" 12345 true
./src/bitcoin-cli -regtest sendgetaddrmessage servivenwug4ekn4hmeutnamtmftrirsucmd3opek7kqql4dwliegjqd.onion:12345

./src/bitcoin-cli -testnet getpeerinfo

bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 logging "[\"all\"]" "[\"http\"]"

bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 createwallet user1
bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 loadwallet user1
bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 getnewaddress
bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 -generate 200
bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 listaddressgroupings
bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 sendtoaddress myUFjFMpchpdpf19Yh6BVVJoNoxDJtDLL9 200