$contentDNS = [ 'tmux', 'sysdig', 'atop', 'htop', 'dstat']
package { $contentDNS:
  ensure  => absent,

}
