FROM rockylinux:8
ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
RUN yum update -y
RUN  yum install -y  net-tools
RUN yum install -y systemd
RUN  yum install -y  rsyslog
# RUN  yum install -y  source
RUN  yum install -y  zsh
RUN yum install -y postfix
RUN yum install -y mailx
RUN yum install -y traceroute
RUN yum install -y iproute
RUN yum install -y  xinetd
RUN yum -y install lsof
RUN yum -y install nmap


# デフォルトだとrootの実行権限がないので、
RUN groupadd docker -g 1000
RUN usermod root -G 1000
