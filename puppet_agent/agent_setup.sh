# time set 
sed -i s/\"UTC\"/\"Japan\"/ /etc/sysconfig/clock
ln -sf /usr/share/zoneinfo/Japan /etc/localtime

# private dns add
sed -i "$ a DNS1=10.0.1.224" /etc/sysconfig/network-scripts/ifcfg-eth0

# hostname add
vim /etc/sysconfig/network

# puppet repo add && install
yum -y install http://yum.puppetlabs.com/el/6/products/x86_64/puppetlabs-release-22.0-1.noarch.rpm
sed -i -e "s/enabled=1/enabled=0/g" /etc/yum.repos.d/puppetlabs.repo
yum --enablerepo=puppetlabs-products,puppetlabs-deps -y install puppet

# puppet agent conf setup
## puppet server name add
sed -i '$ a PUPPET_SERVER=pup-ser02.ma.local' /etc/sysconfig/puppet
sed -i '$ a PUPPET_LOG=/var/log/puppet/puppet.log' /etc/sysconfig/puppet

# puppet enable
chkconfig puppet on