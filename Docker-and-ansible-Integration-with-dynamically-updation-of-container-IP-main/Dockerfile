FROM centos
RUN yum -y update
RUN yum  install -y openssh-server
RUN echo root:password| chpasswd
RUN ssh-keygen -A
CMD /usr/sbin/sshd -D
EXPOSE 22
