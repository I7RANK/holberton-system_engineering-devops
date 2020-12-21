# Installing nginx
# puppet module install puppetlabs-stdlib

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

service { 'nginx_stop':
  ensure  => 'stopped',
  require => Package['nginx'],
}

service { 'nginx':
  ensure  => 'running',
  require => Package['nginx'],
}
