# Installing nginx
# puppet module install puppetlabs-stdlib

exec { 'update':
  command => 'sudo apt-get -y update',
  path    => ['/usr/bin', '/bin'],
  returns => [0, 1],
  before  => Package['nginx'],
}

package { 'nginx':
  ensure => 'installed',
  name   => 'nginx',
}

file { '/var/www/html/index.html':
  content => 'Holberton School',
}

file_line { '/etc/nginx/sites-available/default':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _',
  line   => 'rewrite ^/redirect_me https://www.youtube.com permanent;',
}

exec { 'restart':
  command => 'sudo service nginx restart',
  path    => ['/usr/bin', '/bin'],
  returns => [0, 1],
}
