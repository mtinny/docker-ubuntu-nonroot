FROM ubuntu

RUN echo 'mtinny:x:10000:10000:MTinny:/home/mtinny:/bin/bash' >> /etc/passwd \
    && echo 'mtinny:x:10000:' >> /etc/group \
    && mkdir /home/mtinny \
    && chown mtinny:mtinny /home/mtinny
WORKDIR /home/mtinny
CMD ["sleep", "infinity"]
RUN apt -y update
RUN apt -y install git gzip zip dnsutils wget curl tcpdump iptables iproute2 iputils-ping telnet netcat net-tools jq vim traceroute

# USER must be on last line. Otherwise, apt doesn't work
USER 10000
