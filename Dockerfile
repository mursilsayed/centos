FROM centos:centos7
MAINTAINER Mursil Sayed <mursilsayed@gmail.com>
#Custom centos7 image with SSH support and a startup script that launches sshd



# Install packages and set up sshd
RUN yum -y install mariadb telnet passwd hostname net-tools && rm -rf /var/cache/yum/* && yum clean all


# mysqlbackup utility copy
 
ADD automysqlbackup-v3.0_rc6 /root/automysqlbackup





