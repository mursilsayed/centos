/usr/bin/echo 'Starting the container' &&
#/javadev/tomcat-7.0/bin/startup.sh &&
source /root/.bashrc
/usr/bin/echo 'PATH= '$PATH
/usr/sbin/sshd -D &&
#/bin/supervisord -c /etc/supervisord.conf &&
#/javadev/tomcat-7.0/bin/startup.sh &&
/usr/bin/echo 'Container Started'

