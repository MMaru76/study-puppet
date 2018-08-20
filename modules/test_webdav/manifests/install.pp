class test_webdav::install {
    # httpd24をインストール
    package { 'httpd24':
      ensure => present,
    ## -> は順序関係を指定
    } #->
    /*
    # ディレクトリを作成
    file { "/var/www/html/webdav":
      ensure => "directory",
      owner  => "root",
      group  => "root",
      mode   => "0750",
    } ->
    # ファイルを作成
    file { '/var/www/html/webdav/index.html':
     ensure  => file,
     content => "Index HTML Is Managed By Puppet",
     mode    => "0644",
    } ->
    # webdavを作成
    file { '/etc/httpd/conf.d/webdav.conf':
      ensure => file,
      mode   => "060",
      ## URL指定の際にfilesは不要
      source => "puppet:///modules/test_webdav/webdav01.conf",
    } ->
    # サービス起動&自動起動
    service { 'httpd':
      ensure => running,
      enable => true,
    }
    */
}