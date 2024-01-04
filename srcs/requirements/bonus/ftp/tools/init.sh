#! /bin/bash

if [ ! -d "/var/run/vsftpd/empty" ]; then
	mkdir -p /var/run/vsftpd/empty
	sed -i 's/#chroot_local_user=YES/chroot_local_user=YES/' /etc/vsftpd.conf

	useradd $FTP_USER
	mkdir /home/$FTP_USER
	chmod 755 /home/$FTP_USER
	echo $FTP_USER:$FTP_PASS | chpasswd
	usermod -d /var/www/html/ $FTP_USER
echo Ftp setup completed!
fi
exec "$@"
