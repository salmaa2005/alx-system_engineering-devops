exec {'pkill killmenow':
      path => '/usr/bin:/usr/sbin:/bin',
      command => 'pkill killmenow',
}
