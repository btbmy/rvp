FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# 设置 root 用户的密码为 'root'
RUN echo 'root:frepai' | chpasswd

EXPOSE 22


CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]
