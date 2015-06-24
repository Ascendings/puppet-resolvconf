# See README.md for details.
class resolvconf::config inherits ::resolvconf {

  file { $::resolvconf::hosts_file:
    ensure  => file,
    owner   => $::resolvconf::file_owner,
    group   => $::resolvconf::file_group,
    mode    => $::resolvconf::file_mode,
    content => template($::resolvconf::file_template),
  }

}
