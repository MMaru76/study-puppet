class test_webdav::service {
# サービス起動&自動起動
    service { 'httpd':
      ensure => running,
      enable => true,
    }
}