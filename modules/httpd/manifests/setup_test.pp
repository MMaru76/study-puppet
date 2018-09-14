# Class: setup_test
#
# webdav setup
#

class httpd::setup_test {
    # resources
package { httpd24 : ensure => installed,}

    file { "webdav.conf" :
        path    => "/etc/httpd/conf.d/webdav.conf",
        owner   => root,
        group   => root,
        mode    => 644,
        source  => 'puppet:///modules/httpd/webdav.conf',
    }

    service { "httpd":
        ensure      => running,
        hasstatus   => true,
        subscribe   =>  File["webdav.conf"],
    }
}