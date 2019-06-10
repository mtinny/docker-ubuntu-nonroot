FROM ubuntu
 
RUN apt -y update && apt -y install dnsutils wget curl tcpdump iptables iproute2 iputils-ping telnet netcat net-tools jq vim traceroute \
    && echo 'mtinny:x:10000:10000:MTinny:/home/mtinny:/bin/bash' >> /etc/passwd \
    && echo 'mtinny:x:10000:' >> /etc/group \
    && mkdir /home/mtinny \
    && chown mtinny:mtinny /home/mtinny
WORKDIR /home/mtinny
USER 10000
CMD ["sleep", "infinity"]