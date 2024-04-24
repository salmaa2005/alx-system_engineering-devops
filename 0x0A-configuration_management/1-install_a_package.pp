#!/usr/bin/puppet
# Install a specific version of flask (2.1.0)
exec { 'flask':
  command => '/usr/bin/apt-get -y install flask=2.1.0',
  provider => 'pip3'
}
