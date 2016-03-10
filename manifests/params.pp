# See README.md for details.
class resolvconf::params {
  # Root user defaults
  $root_user               = $::osfamily ? {
    default => 'root',
  }
  # Root group defaults
  $root_group              = $::osfamily ? {
    'FreeBSD' => 'wheel',
    default   => 'root',
  }

  # General config
  $file_path      = '/etc/resolv.conf'
  $file_owner     = $root_user
  $file_group     = $root_group
  $file_mode      = '0644'
  $file_template  = 'resolvconf/resolv.conf.erb'

  # Package stuff
  $package_ensure = purged
  $package_name   = 'resolvconf'

  # resolv.conf params
  $file_header    = "# This file is managed by the resolvconf Puppet module."
  $search_domain  = 'example.com'
  $nameservers    = [
  	'8.8.8.8',
  	'8.8.4.4',
  ]
}
