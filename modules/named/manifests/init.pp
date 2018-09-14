class named {

    case $hostname {
        'pupdns' : { include named::named_conf }
    }
}