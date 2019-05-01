# Set up regular Puppet runs
file { '/tmp/AAAAA.txt':
  ensure => present,
  content => 'AAAAAAAAAAAAAAAAAAAAAA',
  owner  => 'vagrant',
  mode   => '0777',
}

$needs = [ 'tmux', 'sysdig', 'atop', 'htop', 'dstat', 'vlan', ]

package { $needs:
  ensure => 'installed',
}

package { 'puppet-lint':
  ensure   => '1.1.0',
  provider => 'gem',
} 
