node default inherits dev_streampack {
        notify { "woof": message => "Did you define a node? This is the default node message." }
        include test_page
}


node ex_puppet {
        include named
}