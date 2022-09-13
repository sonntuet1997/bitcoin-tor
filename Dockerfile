FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install build-essential openssh-server lldb ccache libtool autotools-dev automake pkg-config bsdmainutils python3 libevent-dev libboost-dev libsqlite3-dev  libminiupnpc-dev libnatpmp-dev  libzmq3-dev  systemtap-sdt-dev  libqrencode-dev -y
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test
RUN echo 'test:test' | chpasswd
RUN service ssh start
WORKDIR /src/bitcoin
COPY . .
RUN ./autogen.sh
RUN ./configure --enable-debug --enable-gprof CXXFLAGS="-O0 -g" CFLAGS="-O0 -g"
RUN make -j"$(($(nproc)+1))"
RUN make install
RUN mkdir -p /root/bitcoind-simnet/