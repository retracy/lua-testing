FROM alpine:latest

RUN apk update
RUN apk add curl

WORKDIR /var/lua
RUN wget https://www.lua.org/ftp/lua-5.4.4.tar.gz
RUN tar zxvf lua-5.4.4.tar.gz
RUN rm lua-5.4.4.tar.gz
WORKDIR  /var/lua/lua-5.4.4
RUN apk add build-base
RUN make linux test
RUN make install

WORKDIR /var/lua
RUN curl -L https://luarocks.org/releases/luarocks-3.9.2.tar.gz -o luarocks.tar.gz
RUN tar zxpf luarocks.tar.gz
RUN rm luarocks.tar.gz
WORKDIR /var/lua/luarocks-3.9.2/
RUN ./configure
RUN make build
RUN make install
