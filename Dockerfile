FROM mursilsayed/linux:centos7
MAINTAINER Mursil Sayed <mursilsayed@gmail.com>
#Custom centos7 image to run Any GUI Application via vncserver at port 5901
#This image is built in office env with local dvd repo at 10.16.132.85:9001/linux-repos/oraclelinux7




#Copying the path to the local DVD repository; this can be commented if you have high speed internet connection
ADD dvd.repo /etc/yum.repos.d/

EXPOSE 5901
 
RUN rm -f /etc/yum.repos.d/Ce* \
&& yum -y install tigervnc-server xterm xsetroot twm bind-utils pwgen psmisc\
&& rm -rf /var/cache/yum/* \
&& yum clean all






