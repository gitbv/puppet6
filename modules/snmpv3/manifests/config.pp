class snmpv3::config {
  file { "/etc/snmp/snmpd.conf":
    ensure  => file,
    backup  => 'true',
    owner   => 0,
    group   => 0,
    mode    => '0600',
    content => template('snmpv3/snmpd.epp'),
  }
}
