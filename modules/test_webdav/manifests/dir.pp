class test_webdav::dir {
file { "/var/www/html/webdav":
      ensure => "directory",
      owner  => "root",
      group  => "root",
      mode   => "0750",
    }
}