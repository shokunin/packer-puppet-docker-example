class ubuntu_pkgs {

  $pkgs = hiera_array('ubuntu_pkgs', [])

  each($ubuntu_pkgs::pkgs) |$mypkg| {
    package { $mypkg:
      ensure => installed,
    }
  }

}
