# Class: setup_test
#
# webdav setup
#

class httpd::setup_22conf {
    # resources
package { httpd : ensure => installed }

    file { "httpd.conf" :
        path    => "/etc/httpd/conf/httpd.conf",
        owner   => root,
        group   => root,
        mode    => 644,
        source  => 'puppet:///modules/httpd/httpd_conf/httpd.conf',
    }

    service { httpd:
        ensure      => running,
        hasstatus   => true,
        subscribe   =>  File["httpd.conf"],
    }
}