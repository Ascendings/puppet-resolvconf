# See README.md for details
class resolvconf::install inherits ::resolvconf {

  package { $::resolvconf::package_name:
    ensure => $::resolvconf::package_ensure,
  }
	
}
