# Class: setup_test
#
# webdav setup
#

class httpd::setup_24conf {
    # resources
package { httpd24 : ensure => installed }

    file { "webdav.conf" :
        path    => "/etc/httpd/conf.d/webdav.conf",
        owner   => root,
        group   => root,
        mode    => 644,
        source  => 'puppet:///modules/httpd/webdav_conf/webdav.conf',
    }

    service { httpd:
        ensure      => running,
        hasstatus   => true,
        subscribe   =>  File["webdav.conf"],
    }
}