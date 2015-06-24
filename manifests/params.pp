# See README.md for details.
class resolvconf::params {
  # General config
  $package_ensure = purged
  $file_path      = '/etc/resolv.conf'
  $file_owner     = 'root'
  $file_group     = 'root'
  $file_mode      = '0644'
  $file_template  = 'resolvconf/resolv.conf.erb'

  # resolv.conf params
  $file_header    = '# This file is managed by the resolvconf Puppet module. It is not recommended to manage this file manually, as changes will be overwritten on the next puppet run'
  $search_domain  = 'example.com'
  $nameservers    = [
  	'8.8.8.8',
  	'8.8.4.4',
  ]
}
