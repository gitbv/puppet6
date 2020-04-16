class snmpv3 { 
  contain snmpv3::install
  contain snmpv3::config
  contain snmpv3::service

  Class['::snmpv3::install']
  -> Class['::snmpv3::config']
  ~> Class['::snmpv3::service']
}
