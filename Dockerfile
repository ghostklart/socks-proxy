FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y apt-utils && apt install -y gcc make dkms && apt upgrade -y && apt install nano openresolv iproute2 iptables dante-server
