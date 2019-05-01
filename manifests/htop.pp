# Set up regular Puppet runs
file { '/tmp/hello.txt':
  ensure  => 'present',
  content => 'AAAAAAAAAAAAAA'
  mode    => '0755',
}

package { 'htop':
  ensure => 'installed',
}
