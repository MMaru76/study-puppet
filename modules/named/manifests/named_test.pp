class named::named_test {

    file { "test.conf" :
        path    =>  "/tmp/test.conf",
        owner   =>  root,
        group   =>  root,
        mode    =>  640,
        source  =>  "puppet:///modules/named/na_conf/test.conf"
    }

}