# See README.md for details.
class resolvconf::config inherits ::resolvconf {

  file { $::resolvconf::file_path:
    ensure  => file,
    owner   => $::resolvconf::file_owner,
    group   => $::resolvconf::file_group,
    mode    => $::resolvconf::file_mode,
    content => template($::resolvconf::file_template),
  }

}
