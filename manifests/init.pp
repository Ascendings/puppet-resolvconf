# See README.md for details
class resolvconf (
  # General config
  $file_path      = $::resolvconf::params::file_path,
  $file_owner     = $::resolvconf::params::file_owner,
  $file_group     = $::resolvconf::params::file_group,
  $file_mode      = $::resolvconf::params::file_mode,
  $file_template  = $::resolvconf::params::file_template,

  # Package stuff
  $package_ensure = $::resolvconf::params::package_ensure,
  $package_name   = $::resolvconf::params::package_name,

  # resolv.conf params
  $file_header    = $::resolvconf::params::file_header,
  $search_domain  = $::resolvconf::params::search_domain,
  $nameservers    = $::resolvconf::params::nameservers,
) inherits ::resolvconf::params {

  anchor { 'resolvconf::begin': } ->
  class { '::resolvconf::install': } ->
  class { '::resolvconf::config': } ->
  anchor { 'resolvconf::end': }

}
