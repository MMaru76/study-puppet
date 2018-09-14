# Class: setup_test
#
# webdav setup
#

class httpd::setup_test {
    # resources
package { httpd24 : ensure => installed,}

    file { 'webdav.conf':
        ensure  =>,
        owner   => owner,
        group   => group,
        mode    => mode,
        source  => 'puppet:///modules/httpd/webdav.conf',
    }

    service { "httpd":
        ensure      => running,
        hasstatus   => true,
        subscribe   =>  File["webdav.conf"],
    }
}