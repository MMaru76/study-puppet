class named {

    case $hostname {
        'dns.ma.local' : { include named::named_conf }
    }
}