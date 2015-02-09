

__mysql_config() {
# Hack to get MySQL up and running... I need to look into it more.
echo "Running the mysql_config function."
#yum -y erase community-mysql community-mysql-server
#rm -rf /var/lib/mysql/ /etc/my.cnf
#yum -y install community-mysql community-mysql-server
mysql_install_db
chown -R mysql:mysql /var/lib/mysql
/usr/bin/mysqld_safe &
sleep 10
}
__start_mysql() {
echo "Running the start_mysql function."
mysqladmin -u root password mysqlPassword

killall mysqld
sleep 10
}
# Call all functions
__mysql_config
__start_mysql


