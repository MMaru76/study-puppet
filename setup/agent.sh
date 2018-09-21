# time japan
sed -i s/\"UTC\"/\"Japan\"/ /etc/sysconfig/clock
ln -sf /usr/share/zoneinfo/Japan /etc/localtime

# dns server
sed -i "$ a DNS1=10.0.xxx.xxx" /etc/sysconfig/network-scripts/ifcfg-eth0

# hostname
vim /etc/sysconfig/network

# puppet3 agent install
yum -y install puppet3