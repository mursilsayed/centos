FROM mursilsayed/linux:centos7
MAINTAINER Mursil Sayed <mursilsayed@gmail.com>
#Custom centos7 image with MariaDB
#This image is built in office env with local dvd repo at 10.16.132.85:9001/linux-repos/oraclelinux7



# Install packages and set up sshd

VOLUME /var/lib/mysql

ADD customconfig /var/lib/mysql/customconfig/

#Copying the path to the local DVD repository; this can be commented if you have high speed internet connection
ADD dvd.repo /etc/yum.repos.d/
 
RUN rm -f /etc/yum.repos.d/Ce* \
&& yum -y install mariadb-server mariadb bind-utils pwgen psmisc\
&& yum clean all



# Supervisord Install
 


EXPOSE 3306





