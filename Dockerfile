FROM oraclelinux:6
MAINTAINER Mursil Sayed <mursilsayed@gmail.com>
#Custom oracle linux 6 image with SSH support and supervisor module that launches sshd


# Install packages and set up sshd
RUN yum -y install openssh-server telnet openssh-clients
RUN ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key && ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key && sed -i "s/#UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config


# Set root passwd
RUN echo "root:root"|chpasswd


# Supervisord dependencies and other needed packages
RUN yum install -y python-meld3 python-setuptools passwd hostname net-tools
# Supervisord Install
RUN easy_install supervisor
ADD supervisord.conf /etc/supervisord.conf
RUN mkdir -p /var/log/supervisor
RUN sed -i -e 's/nodaemon=false/nodaemon=true/' /etc/supervisord.conf


EXPOSE 22
CMD supervisord -c /etc/supervisord.conf




