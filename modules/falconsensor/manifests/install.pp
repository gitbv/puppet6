class falconsensor::install {
 
  package { 'falcon-sensor' :
    ensure          => installed,
    provider        => yum,
    install_options => [ { '--enablerepo' => 'nexus-hosted' } ]
  }
 
  exec { 'Install falcon sensor':
    command   => '/opt/CrowdStrike/falconctl -s -f --cid=A350E6B788E84A20A65423282E434BFF-96 GROUPING_TAGS="TLS"',
    user      => root,
    onlyif    => 'test ! -f /opt/CrowdStrike/Registry.bin',
    path      => ['/usr/bin','/usr/sbin','/bin','/sbin'],
    subscribe => Package['falcon-sensor'],
  }
 
  service { 'falcon-sensor' :
    ensure => running,
    name   => 'falcon-sensor',
    enable => true,
  }

}
