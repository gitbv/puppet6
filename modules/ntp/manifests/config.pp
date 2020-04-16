class ntp::config {
  host { 'euw1bpuppet01.tls.ad':
    ip           => '10.92.38.10',
    host_aliases => 'euw1bpuppet01',
  }
  file { "/etc/ntp":
          ensure  => directory,
          owner   => 0,
          group   => 0,
          mode    => '0755',
          recurse => false,
        }
  file { "/etc/ntp/keys":
      ensure  => file,
      owner   => 0,
      group   => 0,
      mode    => '0600',
      content => template('ntp/keys.epp'),
    }
  file { "/etc/ntp.conf":
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => '0600',
    content => template('ntp/ntp.conf.epp'),
  }
  file { "/etc/ntp/step-tickers":
      ensure  => file,
      owner   => 0,
      group   => 0,
      mode    => '0600',
      content => template('ntp/step-tickers.epp'),
    }
}
