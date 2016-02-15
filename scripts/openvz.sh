wget -P /etc/yum.repos.d/ http://ftp.openvz.org/openvz.repo
rpm --import http://ftp.openvz.org/RPM-GPG-Key-OpenVZ
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
yum -y install gcc make gcc-c++ perl wget bzip2 vzkernel
reboot
sleep 60
