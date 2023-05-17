# Increase the amount of traffic an Nginx server ca handle.

# Increase th ULIMIT of the default file
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/ngnix',
  path    => '/usr/local/bin:/bin/'
} ->

# Restart Ngnix
exec { 'nginx-restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
