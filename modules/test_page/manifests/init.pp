# Class: test_page
#
# This module manages test_page
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class test_page {

  file {"/tmp/puppet_test_page.sample" :
  ensure  => present,
  owner   => root,
  group   => root,
  mode    => 777,
  source => "puppet:///modules/test_page/test_page",
  }

}
