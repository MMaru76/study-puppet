class test_webdav::file {
file { '/var/www/html/webdav/index.html':
     ensure  => file,
     content => "Index HTML Is Managed By Puppet",
     mode    => "0644",
    }
}