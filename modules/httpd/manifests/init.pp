class httpd {

    case $hostname {
        'test01' : { include httpd::setup_test }
    }
}