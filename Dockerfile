FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y apt-utils dnsutils && apt upgrade -y && apt install -y dante-server iproute2 iptables nano curl wget tini

ENTRYPOINT ["tini", "--"]

ADD danted-init.sh /danted-init.sh
ADD docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod 755 /*.sh

ENTRYPOINT ["tini", "--"]
STOPSIGNAL SIGINT
CMD ["/docker-entrypoint.sh"]
