class snmpv3::install {

package {'net-snmp':
 ensure => 'installed',
  }

package {'net-snmp-utils':
 ensure => 'installed',
  }

}
