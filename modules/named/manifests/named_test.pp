class named::named_test {

    file { "test.conf" :
        path    =>  "/tmp",
        owner   =>  root,
        group   =>  named,
        mode    =>  640,
        source  =>  "puppet://modules/named/na_conf/test.conf"
    }

}