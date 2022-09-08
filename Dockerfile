FROM ubuntu:22.04
RUN apt-get update
#RUN apt-get install build-essential autoconf libtool pkg-config libboost-all-dev libssl-dev libprotobuf-dev protobuf-compiler libevent-dev libqt4-dev libcanberra-gtk-module libdb-dev libdb++-dev bsdmainutils -y
RUN apt-get install build-essential libtool autotools-dev automake pkg-config bsdmainutils python3 libevent-dev libboost-dev libsqlite3-dev  libminiupnpc-dev libnatpmp-dev  libzmq3-dev  systemtap-sdt-dev  libqrencode-dev -y
WORKDIR /src/bitcoin
COPY . .
RUN ./autogen.sh
RUN ./configure
RUN make -j17
RUN make install
RUN mkdir -p /root/bitcoind-simnet/