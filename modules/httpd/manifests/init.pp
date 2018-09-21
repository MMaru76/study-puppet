class httpd {

    case $hostname {
        'hp' : { include httpd::setup_test }
    }
}