class test_webdav::webdav_cp {
file { '/etc/httpd/conf.d/webdav.conf':
      ensure => file,
      mode   => "060",
      ## URL指定の際にfilesは不要
      source => "puppet:///modules/test_webdav/webdav01.conf",
    }
}