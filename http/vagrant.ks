install
cdrom

lang en_US.UTF-8
keyboard us
timezone America/Detroit

network --onboot yes --bootproto=dhcp --device=eth0 --activate --noipv6

rootpw vagrant
authconfig --enableshadow --passalgo=sha512
user --name=vagrant --groups=vagrant --password=vagrant

firewall --disabled
selinux --disabled
firstboot --disabled

bootloader --location=mbr
text
skipx

logging --level=info
zerombr
clearpart --all --initlabel
autopart

reboot


%packages --nobase
@Core
openssh-clients
openssh-server
%end

%post --log=/root/post_install.log

# Add vagrant to sudoers
/bin/echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers.d/vagrant
/bin/chmod 0440 /etc/sudoers.d/vagrant
/bin/sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Add SSH_AUTH_SOCK forwarding for sudo access
/bin/echo "Defaults env_keep += \"SSH_AUTH_SOCK\"" >> /etc/sudoers.d/root_ssh_agent
/bin/chmod 0440 /etc/sudoers.d/root_ssh_agent

%end
