class test_webdav::install {
    # httpd24をインストール
    package { 'httpd24':
      ensure => present,
    ## -> は順序関係を指定
    } ->
    # ディレクトリを作成
    # ファイルを作成
    file { 'index.html':
        path => "/var/www/html/index.html",
        ensure  => file,
        content => "Index HTML Is Managed By Puppet",
        mode    => "0644",
    } ->
    # webdavを作成
    file { 'webdav.conf':
        path => "/etc/httpd/conf.d/webdav.conf",
        ensure => file,
        owner   => "root",
        group   => "root",
        mode   => "644",
        ## URL指定の際にfilesは不要
        source => "puppet:///modules/test_webdav/webdav01.conf",
    } ->
    # サービス起動&自動起動
    service { 'httpd':
        ensure => running,
        enable => true,
        subscribe => File['webdav.conf'],
    }
}