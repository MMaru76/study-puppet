# time set 
sed -i s/\"UTC\"/\"Japan\"/ /etc/sysconfig/clock
ln -sf /usr/share/zoneinfo/Japan /etc/localtime

# private dns add
sed -i "$ a DNS1=10.0.1.237" /etc/sysconfig/network-scripts/ifcfg-eth0

# hostname add
vim /etc/sysconfig/network

# puppet repo add && install
yum -y install puppet3

# puppet agent conf setup
## puppet server name add
sed -i '$ a PUPPET_SERVER=pup-ser02.ma.local' /etc/sysconfig/puppet
sed -i '$ a PUPPET_LOG=/var/log/puppet/puppet.log' /etc/sysconfig/puppet

# puppet enable
chkconfig puppet on