class named {

    case $hostname {
        'dns' : { include named::named_conf }
    }
}