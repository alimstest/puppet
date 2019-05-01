# Set up regular Puppet runs
file { '/tmp/AAAAA.txt':
  ensure => present,
  content => 'AAAAAAAAAAAAAAAAAAAAAA',
  owner  => 'ubuntu',
  mode   => '0600',
}

package { 'atop':
  ensure => 'installed',
}
 
package { 'htop':
  ensure => 'installed',
}
