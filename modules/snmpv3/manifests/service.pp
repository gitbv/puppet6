class snmpv3::service {

  service {'snmpd':
     name => 'snmpd',
     ensure => 'running',
     hasstatus => 'true',
     hasrestart => 'true',
     enable => 'true',
     require => Class["snmpv3::config"],
   }
}
