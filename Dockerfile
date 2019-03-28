FROM ubuntu
 
RUN echo 'mtinny:x:10000:10000:MTinny:/home/tinny:/bin/bash' >> /etc/passwd \
    && echo 'mtinny:x:10000:' >> /etc/group \
    && mkdir /home/mtinny \
    && chown mtinny:mtinny /home/mtinny
WORKDIR /home/mtinny
USER 10000

