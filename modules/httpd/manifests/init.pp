class httpd {

    case $hostname {
        'hp','mco' : { include httpd::setup_webdav }
    }

    #case $hostname {
    #    'XXX' : { include httpd::setup_22conf }
    #}

    #case $hostname {
    #    'XXX' : { include httpd::setup_24conf }
    #}
}