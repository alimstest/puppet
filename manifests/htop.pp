# Set up regular Puppet runs
file { '/tmp/hello.txt':
  ensure => present,
  content => 'AAAAAAA',
  owner  => 'ubuntu',
  mode   => '0644',
}

package { 'htop':
  ensure => 'installed',
}
