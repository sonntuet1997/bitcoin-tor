curl -Lx http://10.7.1.11:8118 http://jsonip.com/
curl -s --socks5-hostname 10.7.1.11:9050 http://jsonip.com/
cat /var/lib/tor/mywebsite/hostname

bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 getblockchaininfo
bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -rpcport=10340 getpeerinfo
./src/bitcoin-cli -regtest getblockchaininfo
./src/bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x getpeerinfo
./src/bitcoin-cli -regtest getnetworkinfo
./src/bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x getaddednodeinfo
./src/bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x getnodeaddresses 0
./src/bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x addpeeraddress "servjuchjdb2dndkmi3bbacvh7bop4ansnal2nchi7ig6u3hzfqne7yd.onion" 12345 true
./src/bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x addpeeraddress "servivenwug4ekn4hmeutnamtmftrirsucmd3opek7kqql4dwliegjqd.onion" 12345 true
./src/bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x addpeeraddress "123.123.123.123" 12345 true

node=servakcnd7wf234tm6dfdrzk2vbojbult4xg3nuaniutu3x7luchsgid.onion:12345
node=servivenwug4ekn4hmeutnamtmftrirsucmd3opek7kqql4dwliegjqd.onion:12345
node=servjuchjdb2dndkmi3bbacvh7bop4ansnal2nchi7ig6u3hzfqne7yd.onion:12345

./src/bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x addpeeraddress "123.123.123.123" 12345 true

./src/bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -named \
  addconnection \
  address=111.111.111.111:12345 \
  connection_type=outbound-full-relay

./src/bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -named \
  addconnection \
  address=$node \
  connection_type=outbound-full-relay

./src/bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -named \
  sendgetaddrmessage \
  nodeip=$node

./src/bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -named \
  sendaddrmessage \
  nodeip=$node \
  address="123.123.123.123" \
  port=12345

./src/bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -named \
  sendaddrseedmessage \
  nodeip=$node \
  quantity=200

./src/bitcoin-cli -testnet getpeerinfo

for n in {1..100}; do
  ./src/bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -named \
    sendaddrmessage \
    nodeip="servjuchjdb2dndkmi3bbacvh7bop4ansnal2nchi7ig6u3hzfqne7yd.onion:12345" \
    address="123.123.123.$n" \
    port=12345
done

bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x logging "[\"all\"]" "[\"http\"]"

bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x createwallet user1
bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x loadwallet user1
bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x getnewaddress
bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x -generate 200
bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x listaddressgroupings
bitcoin-cli -regtest -rpcuser=rpc -rpcpassword=x sendtoaddress myUFjFMpchpdpf19Yh6BVVJoNoxDJtDLL9 200
