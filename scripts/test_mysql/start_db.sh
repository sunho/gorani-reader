set -e
set -x

[ "$(ls -A /var/lib/mysql)" ] && echo "Running with existing database in /var/lib/mysql" || ( echo 'Populate initial db'; tar xpzvf default_mysql.tar.gz )

/usr/sbin/mysqld --user=root
