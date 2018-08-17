class test_webdav::install {
    package { 'httpd24':
      ensure => present,
    } ->
    file { "/var/www/html/webdav":  # Creating Document Root
      ensure => "directory",
      owner  => "apache",
      group  => "apache",
      mode   => 750,
    } ->
 file { '/var/www/html/webdav/index.html': # Creating Index file
     ensure  => file,
     content => "Index HTML Is Managed By Puppet",
     mode    => '0644',
   } ->
    file { '/etc/httpd/conf.d/webdav.conf': # Path to the file on client machine
      ensure => file,
      mode   => '0600',
      source => 'puppet:///modules/test_webdav/webdav01.conf', # Path to the custom file on puppet server
    } ~>
    service { 'httpd':
      ensure => running,
      enable => true,
    }
}