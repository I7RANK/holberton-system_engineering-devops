# kill a process
exec {'pkill':
  command => 'pkill killmenow',
  path    => ['/usr/bin', '/usr/sbin'],
}
